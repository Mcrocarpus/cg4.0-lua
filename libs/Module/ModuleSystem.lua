local Modules = {};


---@class loadModuleOpt
---@field path string ·��Ĭ��moduleName.lua
---@field forceReload boolean ǿ�����¼���
---@field absolutePath boolean
local function loadModuleFile(path, moduleName, forceReload)
  local ctx = {}
  local rG = {
    print = function(msg, ...)
      if msg == nil then
        msg = ''
      end
      logInfo(moduleName, msg, ...)
    end,
  };
  local G = setmetatable(rG, { __index = _G })
  local result, module = pcall(function()
    local fn, m = loadfile(path, 'bt', setmetatable(ctx, { __index = G }))
    if m then
      error(m)
    end
    return fn()
  end)
  if not result then
    logError('ModuleSystem', 'load module failed.', 'name=', moduleName, 'path=', path, 'forceReload=', forceReload, '\n', module)
    return nil;
  end
  module = module:new();
  return module, ctx;
end

---@param opt loadModuleOpt
---@param moduleName string
function _G.loadModule(moduleName, opt)
  local path, forceReload
  if not opt then
    opt = {}
  end
  path = opt.path;
  forceReload = opt.forceReload;
  if not path then
    path = moduleName .. '.lua'
  end
  local oPath = path;
  if not opt.absolutePath then
    path = 'lua/Modules/' .. path;
  end
  log('ModuleSystem', 'INFO', 'load module ', moduleName, path, forceReload)
  if Modules[moduleName] and not forceReload then
    return Modules[moduleName];
  end
  if Modules[moduleName] then
    Modules[moduleName]:unload();
  end
  Modules[moduleName] = nil;
  local ctx, module;
  module, ctx = loadModuleFile(path, moduleName, forceReload);
  if not module then
    return nil;
  end
  --logInfo('ModuleSystem', 'new object', moduleName, module)
  Modules[moduleName] = module;
  module.___path = oPath;
  ---@diagnostic disable-next-line: invisible
  module.___aPath = path;
  module.___ctx = ctx;
  module.___absolutePath = opt.absolutePath;
  local r1, e1 = pcall(module.load, module);
  if e1 then
    logError(moduleName, "load module error: " .. e1);
  end
  return module;
end

function _G.unloadModule(moduleName)
  if Modules[moduleName] then
    Modules[moduleName]:unload();
    Modules[moduleName] = nil;
  end
end

function _G.reloadModule(moduleName)
  logInfo('ModuleSystem', moduleName, Modules[moduleName])
  local module = Modules[moduleName];
  if module then
    module:unload();
    local path = module.___path;
    return loadModule(moduleName, { path = path, forceReload = true, absolutePath = module.___absolutePath });
  end
  return nil;
end

---@return ModuleBase|any
function _G.getModule(moduleName)
  return Modules[moduleName];
end
