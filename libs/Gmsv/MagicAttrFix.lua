local attrList = {}

ffi.hook.inlineHook('int (__cdecl *)(uint32_t, uint32_t)', function(ebp, aPtr)
  local aIndex = ffi.readMemoryInt32(aPtr + 4);
  local techId = Char.GetData(aIndex, CONST.CHAR_BattleCom3);
  if attrList[techId] then
    for i = 0, 3 do
      ffi.setMemoryFloat(ebp - 0x28 + 4 * i, attrList[techId][i + 1] * 1.0);
    end
  end
  return 0;
end, 0x004B7C00, 6, {
  0x60, --pushad
  0x9C, --pushfd
  0x56, --push esi
  0x55, --push ebp
}, {
  0x58, --pop eax
  0x58, --pop eax
  0x9D, --popfd
  0x61, --popad
})

_G.Tech = _G.Tech or {}
function Tech.SetTechMagicAttribute(techId, earth, water, fire, wind)
  attrList[techId] = { earth or 0, water or 0, fire or 0, wind or 0 };
end
