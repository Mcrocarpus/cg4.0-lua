local takeBufferedChar = ffi.cast('uint32_t (__cdecl*)(int type)', 0x0042BC00);
local clearCharData = ffi.cast('int (__cdecl*)(uint32_t a1)', 0x0042BDE0);
local newChar = ffi.cast('int (__cdecl*)(uint32_t a1, int a2, int a3)', 0x00438D80);
local addCharaToMap = ffi.cast('int (__cdecl*)(int type, uint32_t charAddr, int mapId, int floor, int x, int y)', 0x00414930);
local Broadcast_ObjectState = ffi.cast('int (__cdecl*)(int objIndex)', 0x0043FEF0);
local hookedQueueSave;
local hookedQueueSave2;

local dummyChar = { nilIndex = nil }

local function hookQueueSaveInner(charPtr, fn)
  if charPtr > 0 then
    local charIndex = ffi.readMemoryInt32(charPtr + 4);
    if Char.IsDummy(charIndex) then
      return 1;
    end
  end
  return fn(charPtr);
end
local function hookQueueSave(charPtr)
  return hookQueueSaveInner(charPtr, hookedQueueSave);
end
local function hookQueueSave2(charPtr)
  return hookQueueSaveInner(charPtr, hookedQueueSave2);
end
hookedQueueSave = ffi.hook.new('int (__cdecl*)(uint32_t charAddr)', hookQueueSave, 0x0043B290, 9);
hookedQueueSave2 = ffi.hook.new('int (__cdecl*)(uint32_t charAddr)', hookQueueSave2, 0x0043B390, 7);

function Char.IsDummy(charIndex)
  return Char.GetData(charIndex, CONST.CHAR_����) == 1 and dummyChar[charIndex] ~= nil;
end

function Char.CreateDummy()
  local charPtr = takeBufferedChar(0)
  if charPtr < Addresses.CharaTablePTR then
    return -1;
  end
  printAsHex('charPtr', charPtr);
  clearCharData(charPtr)
  printAsHex('clearCharData', charPtr);
  newChar(charPtr, 11, 1)
  printAsHex('newChar', charPtr);
  local charIndex = ffi.readMemoryInt32(charPtr + 4);
  printAsHex('charPtr2', Addresses.CharaTablePTR + charIndex * 0x21EC);
  ffi.setMemoryInt32(charPtr + 0x5e8 + 0x12c, 1);
  ffi.setMemoryInt32(charPtr + 4 * CONST.CHAR_PlayerFD, -1);
  ffi.setMemoryInt32(charPtr, 1);
  ffi.setMemoryInt32(charPtr + 4 * CONST.CHAR_����, 1);
  ffi.setMemoryInt32(charPtr + 4 * CONST.CHAR_��ͼ����, 0);
  ffi.setMemoryInt32(charPtr + 4 * CONST.CHAR_��ͼ, 777);
  ffi.setMemoryInt32(charPtr + 4 * CONST.CHAR_X, 20);
  ffi.setMemoryInt32(charPtr + 4 * CONST.CHAR_Y, 90);
  --Char.SetData(charIndex, CONST.CHAR_ͼ��, image);
  ffi.setMemoryInt32(charPtr + 4 * CONST.CHAR_ԭ��, 100000);
  ffi.setMemoryInt32(charPtr + 4 * CONST.CHAR_ԭʼͼ��, 100000);
  local objectIndex = addCharaToMap(1, charPtr, 0, 777, 20, 90);
  ffi.setMemoryInt32(charPtr + 4 * CONST.CHAR_OBJ, objectIndex);
  Broadcast_ObjectState(objectIndex);
  dummyChar[charIndex] = charIndex;
  return charIndex;
end

local function ShutdownCallback()
  for i, charIndex in pairs(dummyChar) do
    if charIndex >= 0 then
      NL.DelNpc(charIndex)
    end
  end
  return 0;
end

function Char.DelDummy(charIndex)
  dummyChar[charIndex] = nil;
  return NL.DelNpc(charIndex)
end

regGlobalEvent('ShutDownEvent', ShutdownCallback, 'DummyChar');