---ģ����
local BagModule = ModuleBase:createModule('bag')

function BagModule:onTalkEvent(CharIndex, Msg, Color, Range, Size)
  if string.sub(Msg, 1, 4) ~= '/bag' then
    return 1;
  end
  if Battle.GetCurrentBattle(CharIndex) >= 0 then
    NLG.SystemMessage(CharIndex, 'ս�����޷��л�����')
    return 0;
  end
  local bagIndex = tonumber(string.sub(Msg, 5));
  if bagIndex < 1 or bagIndex > 5 then
    NLG.SystemMessage(CharIndex, '��Ч����')
    return 0;
  end
  ---@type CharExt
  local charExt = getModule('charExt')
  local charData = charExt:getData(CharIndex);
  charData.bagIndex = charData.bagIndex or 1;
  self:logDebug('bagIndex', charData.bagIndex, '=>', bagIndex);
  if bagIndex == charData.bagIndex then
    NLG.SystemMessage(CharIndex, '�����л�����')
    charData.bagIndex = bagIndex;
    return 0;
  end
  charData.bag = charData.bag or {};
  local itemFields = { }
  for i = 0, 0x4b do
    table.insert(itemFields, i);
  end
  for i = 0, 0xd do
    table.insert(itemFields, i + 2000);
  end
  local bagDataO = charData.bag[charData.bagIndex] or {};
  for i = 1, 20 do
    local itemIndex = Char.GetItemIndex(CharIndex, i + 7)
    --self:logDebug('backup', i + 7, itemIndex);
    if itemIndex >= 0 then
      bagDataO[i] = {};
      for _, v in pairs(itemFields) do
        bagDataO[i][tostring(v)] = Item.GetData(itemIndex, v);
        --self:logDebug(v, bagDataO[i][tostring(v)]);
      end
      local r = Char.DelItemBySlot(CharIndex, i + 7);
      --self:logDebug('remove', i + 7, itemIndex, r);
    else
      bagDataO[i] = false;
    end
  end
  bagDataO = table.filter(bagDataO, function(e)
    return e ~= false
  end);
  charData.bag[charData.bagIndex] = bagDataO;
  local bagData = charData.bag[bagIndex] or {};
  charData.bag[bagIndex] = { };
  charData.bagIndex = bagIndex;
  for i, bagItem in ipairs(bagData) do
    if type(bagItem) == 'table' then
      --self:logDebug('restore', bagItem[tostring(CONST.����_ID)], bagItem[tostring(CONST.����_�ѵ���)]);
      local itemId = bagItem[tostring(CONST.����_ID)];
      if itemId < 0 then
        itemId = 0
      end
      local itemIndex = Char.GiveItem(CharIndex, itemId, 1, false);
      if itemIndex >= 0 then
        for _, field in pairs(itemFields) do
          local r = 0;
          if type(bagItem[tostring(field)]) ~= 'nil' then
            r = Item.SetData(itemIndex, field, bagItem[tostring(field)]);
            --if r ~= 1 then
            --  self:logWarnF("itemIndex %s, %s, set field %d = %s error", r, itemIndex, field, tostring(bagItem[tostring(field)]));
            --end
          else
            self:logWarnF("itemIndex %d, field %s is nil", itemIndex, tostring(field));
          end
          --self:logDebug(itemIndex, field, bagItem[tostring(field)], Item.GetData(itemIndex, field), r);
        end
      end
    end
  end
  Item.UpItem(CharIndex, -1);
  charExt:setData(CharIndex, charData);
  NLG.SystemMessage(CharIndex, '�л�����' .. bagIndex)
  return 0;
end

--- ����ģ�鹳��
function BagModule:onLoad()
  self:logInfo('load')
  self:regCallback('TalkEvent', Func.bind(self.onTalkEvent, self));
end

--- ж��ģ�鹳��
function BagModule:onUnload()
  self:logInfo('unload')
end

return BagModule;
