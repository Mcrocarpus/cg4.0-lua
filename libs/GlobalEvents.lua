local chained = {
  
}

local defaultChain = function(fnList, ...)
  local res;
  for i, v in ipairs(fnList) do
    res = v(...)
  end
  return res
end

local function makeEventHandle(name)
  local list = {}
  --list.map = {};
  return function(...)
    --print('makeEventHandle', name, ...);
    local ok, ret = pcall(chained[name] or defaultChain, list, ...);
    if ok then
      return ret;
    end
    logError('GlobalEvent', 'invoke ' .. name .. ' callback error.', ret);
    error(ret)
  end, list
end

local eventCallbacks = {}
local ix = 0;

local function takeCallbacks(eventName, extraSign, shouldInit)
  local name = eventName .. extraSign
  if eventCallbacks[name] then
    return eventCallbacks[name], name, _G[name]
  end
  if shouldInit then
    local fn1, list = makeEventHandle(eventName);
    _G[name] = fn1;
    eventCallbacks[name] = list;
    if NL['Reg' .. eventName] then
      logInfo('GlobalEvent', 'NL.Reg' .. eventName, extraSign)
      if extraSign == '' then
        NL['Reg' .. eventName](nil, name);
      else
        NL['Reg' .. eventName](nil, name, extraSign);
      end
    elseif eventName == 'ProtocolOnRecv' then
      Protocol.OnRecv(nil, name, extraSign);
    end
    return list, name, fn1;
  end
  return nil;
end

---@class OrderedCallback
---@field order number
---@field fn function
---@field type string
---@field index number

---@return OrderedCallback|function
---@param fn function
---@param order number 越大越优先执行
function _G.OrderedCallback(fn, order)
  if type(fn) == 'table' and fn.type == 'OrderedCallback' then
    return fn;
  end
  local n = { fn = fn, order = order, type = 'OrderedCallback' }
  return setmetatable(n, { __call = function(self, ...)
    return fn(...);
  end })
end

--- 注册全局事件
---@param eventName string
---@param fn function|OrderedCallback
---@param moduleName string
---@param extraSign string|nil
---@return number 全局注册Index
function _G.regGlobalEvent(eventName, fn, moduleName, extraSign)
  extraSign = extraSign or ''
  logInfo('GlobalEvent', 'regGlobalEvent', eventName, moduleName, ix + 1)
  local callbacks, name, fn1 = takeCallbacks(eventName, extraSign, true)
  --logInfo('GlobalEvent', 'callbacks', #callbacks)
  ix = ix + 1;
  local order = 0;
  if type(fn) == 'table' and fn.type == 'OrderedCallback' then
    order = fn.order;
  end
  local fx = OrderedCallback(function(...)
    --logDebug('ModuleSystem', 'callback', eventName .. extraSign, fn, order, ...)
    local success, result = pcall(fn, ...)
    if not success then
      logError(moduleName, name .. ' event callback error: ', result)
      return nil;
    end
    --logDebug('ModuleSystem', 'callback', eventName .. extraSign, fn, result, ...)
    return result;
  end, order);
  callbacks[#callbacks + 1] = fx;
  table.sort(callbacks, function(a, b)
    return a.order > b.order;
  end)
  fx.index = ix;
  --callbacks.map[ix] = table.indexOf(callbacks, fx);
  --logInfo('GlobalEvent', 'mapIndex', ix, callbacks.map[ix], fx);
  return ix;
end

--- 移除全局事件
---@param eventName string
---@param fnIndex number 全局注册Index
---@param moduleName string
---@param extraSign string|nil
function _G.removeGlobalEvent(eventName, fnIndex, moduleName, extraSign)
  extraSign = extraSign or ''
  logInfo('GlobalEvent', 'removeGlobalEvent', eventName .. extraSign, moduleName, fnIndex)
  local callbacks, name, fn1 = takeCallbacks(eventName, extraSign)
  if not callbacks then
    return true;
  end
  --logInfo('GlobalEvent', 'callbacks', #callbacks, callbacks.map[fnIndex])
  --logInfo('GlobalEvent', 'fnIndex', fnIndex, eventCallbacks[eventName .. extraSign][fnIndex])
  local ix = table.findIndex(callbacks, function(e, i, list)
    return e.index == fnIndex
  end)
  table.remove(callbacks, ix);
  if #callbacks == 0 then
    if not NL['Reg' .. eventName] then
      eventCallbacks[name] = nil;
      _G[name] = nil;
    end
  end
  return true;
end
