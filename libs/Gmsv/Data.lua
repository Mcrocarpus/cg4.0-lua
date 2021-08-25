_G.Data = _G.Data or {}

---��ȡItemsetIndex
function Data.ItemsetGetIndex(ItemID)
  if ItemID < 0 and ItemID >= Addresses.ItemIdMax then
    return -1;
  end
  return FFI.readMemoryInt32(Addresses.ItemIndexTblTPR + 4 * ItemID)
end

---��ȡItemset����
function Data.ItemsetGetData(ItemsetIndex, DataPos)
  if ItemsetIndex < 0 or ItemsetIndex >= Addresses.ItemTableMax then
    return nil;
  end
  if DataPos >= 2000 then
    --string32 * 13 
    DataPos = DataPos - 2000;
    if DataPos >= 13 then
      return nil;
    end
    return FFI.readMemoryString(Addresses.ItemTablePTR + ItemsetIndex * 1092 + 78 * 4 + DataPos * 32 + 4)
  end
  local baseValue = 0;
  if DataPos >= 78 then
    --ext data & function ptr
    if DataPos >= 92 then
      --random data
      baseValue = FFI.readMemoryInt32(Addresses.ItemTablePTR + ItemsetIndex * 1092 + (DataPos - 90) * 4 + 4)
    end
    DataPos = 8 * 13 + DataPos
    if DataPos >= 273 then
      return nil
    end
  end
  return FFI.readMemoryInt32(Addresses.ItemTablePTR + ItemsetIndex * 1092 + DataPos * 4 + 4) + baseValue
end

local encountMapping = {}

Addresses.onLoad(function()
  encountMapping = {}
  for i = 0, Addresses.EncountTableSize - 1 do
    if FFI.readMemoryInt32(Addresses.EncountTable + 0x94 * i) ~= 0 then
      local n = FFI.readMemoryInt32(Addresses.EncountTable + 0x94 * i + 4);
      encountMapping[n] = i;
    end
  end
end)

function Data.GetEncountIndex(encountId)
  return encountMapping[tonumber(encountId)] or -1;
end

function Data.GetEncountData(encountIndex, dataPos)
  if encountIndex < 0 or encountIndex >= Addresses.EncountTableSize then
    return nil;
  end
  if dataPos < 14 then
    return FFI.readMemoryInt32(Addresses.EncountTable + 0x94 * encountIndex + dataPos * 4)
  end
  return FFI.readMemoryDWORD(Addresses.EncountTable + 0x94 * encountIndex + dataPos * 4)
end 