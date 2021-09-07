local callback;
local callbackHeal;

local function callCallback(aIndex, dIndex, flag, dmg, type)
  --print('CalcDamageCallback:', aIndex, dIndex, flag, dmg, type or 'damage');
  --print(aIndex, Char.GetData(aIndex, CONST.CHAR_����))
  --print('com1', Char.GetData(aIndex, CONST.CHAR_BattleCom1))
  --print('com2', Char.GetData(aIndex, CONST.CHAR_BattleCom2))
  --print('com3', Char.GetData(aIndex, CONST.CHAR_BattleCom3))
  --print(dIndex, Char.GetData(dIndex, CONST.CHAR_����))
  --print('com1', Char.GetData(dIndex, CONST.CHAR_BattleCom1))
  --print('com2', Char.GetData(dIndex, CONST.CHAR_BattleCom2))
  --print('com3', Char.GetData(dIndex, CONST.CHAR_BattleCom3))
  --dmg = 5;
  local nCallback = type == 'heal' and callbackHeal or callback;
  if (nCallback and _G[nCallback]) then
    local battleIndex = Char.GetData(aIndex, CONST.CHAR_BattleIndex);
    local success, ret = pcall(_G[nCallback], aIndex, dIndex, dmg, dmg, battleIndex,
      Char.GetData(aIndex, CONST.CHAR_BattleCom1),
      Char.GetData(aIndex, CONST.CHAR_BattleCom2),
      Char.GetData(aIndex, CONST.CHAR_BattleCom3),
      Char.GetData(dIndex, CONST.CHAR_BattleCom1),
      Char.GetData(dIndex, CONST.CHAR_BattleCom2),
      Char.GetData(dIndex, CONST.CHAR_BattleCom3),
      flag
    );
    if success then
      --print('dmg', ret);
      return ret;
    else
      print((type == 'heal' and 'BattleHealCalculateCallBack' or 'DamageCalculateCallBack') .. ' ERROR:', ret);
    end
  end
  --print('dmg', dmg);
  return dmg;
end

local function RegDamageCalculateEvent(Dofile, FuncName)
  if Dofile then
    local success, err = pcall(dofile, Dofile);
    if not success then
      print('RegDamageCalculateEvent dofile err:', err);
      return
    end
  end
  callback = FuncName;
end

local function RegBattleHealCalculateEvent(Dofile, FuncName)
  if Dofile then
    local success, err = pcall(dofile, Dofile);
    if not success then
      print('RegBattleHealCalculateEvent dofile err:', err);
      return
    end
  end
  callbackHeal = FuncName;
end

NL.RegBattleDamageEvent = NL.RegDamageCalculateEvent;
NL.RegDamageCalculateEvent = RegDamageCalculateEvent;
NL.RegBattleHealCalculateEvent = RegBattleHealCalculateEvent;

--[[
NL.RegDamageCalculateEvent(Dofile, FuncName)
DamageCalculateCallBack(CharIndex, DefCharIndex, OriDamage, Damage, BattleIndex, Com1, Com2, Com3, DefCom1, DefCom2, DefCom3, Flg)
]]

local function hookMagicDamage(attacker, defence, dmg)
  --print('hookMagicDamage', attacker, defence, dmg)
  local aIndex = ffi.readMemoryInt32(attacker + 4)
  local dIndex = ffi.readMemoryInt32(defence + 4)
  return callCallback(aIndex, dIndex, 5, dmg);
end

ffi.hook.inlineHook('int (__cdecl *)(uint32_t, uint32_t, int)', hookMagicDamage, 0x0049A51F, 6,
  {
    0x8B, 0x95, 0xE0, 0xFE, 0xFF, 0xFF, --mov     edx, [ebp+a2]
    0x9c, --pushfd
    0x60, --pushad
    0x52, --push edx
    0x53, --push ebx
    0xff, 0x75, 0x08, -- push [ebp+8]
  },
  {
    0x89, 0x85, 0xE0, 0xFE, 0xFF, 0xFF, --mov     [ebp+a2], eax 
    0x5b, --pop
    0x5b, --pop ebx
    0x5a, --pop edx
    0x61, --popad
    0x9d, --popfd
  }
)

ffi.hook.inlineHook('int (__cdecl *)(uint32_t, uint32_t, int)', hookMagicDamage, 0x0049A16A, 6,
  {
    0x8B, 0x95, 0xE0, 0xFE, 0xFF, 0xFF, --mov     edx, [ebp+a2]   0xE0FEFFFF
    0x9c, --pushfd
    0x60, --pushad
    0x52, --push edx
    0x53, --push ebx
    0xff, 0x75, 0x08, -- push [ebp+8]
  },
  {
    0x89, 0x85, 0xE0, 0xFE, 0xFF, 0xFF, --mov     [ebp+a2], eax 
    0x5b, --pop
    0x5b, --pop ebx
    0x5a, --pop edx
    0x61, --popad
    0x9d, --popfd
  }
)

local function hookHeal(flag, attacker, defence, dmg)
  local aIndex = ffi.readMemoryInt32(attacker + 4)
  local dIndex = ffi.readMemoryInt32(defence + 4)
  return callCallback(aIndex, dIndex, flag, dmg, 'heal');
end

ffi.hook.inlineHook('int (__cdecl *)(int, uint32_t, uint32_t, int)', hookHeal, 0x004BB6E9, 6,
  {
    0x9c, --pushfd
    0x60, --pushad
    0x8B, 0x85, 0x78, 0xFD, 0xFF, 0xFF, --mov     eax, [ebp+a288]
    0x50, --push eax
    0x53, --push ebx
    0xff, 0xB5, 0x7C, 0xFD, 0xFF, 0xFF, -- push [ebp+a284]
    0x6A, 0x00, -- push 0
  },
  {
    0x89, 0x85, 0x78, 0xFD, 0xFF, 0xFF, --mov     [ebp+a288], eax 
    0x5b, --pop
    0x5b, --pop
    0x5b, --pop ebx
    0x5a, --pop edx
    0x61, --popad
    0x9d, --popfd
  }
)

ffi.hook.inlineHook('int (__cdecl *)(int, uint32_t, uint32_t, int)', hookHeal, 0x004BB199, 5,
  {
    0x9c, --pushfd
    0x60, --pushad
    0x53, --push ebx
    0x56, --push esi
    0xff, 0xB5, 0x7C, 0xFD, 0xFF, 0xFF, -- push [ebp+a284]
    0x6A, 0x02, -- push 0x02
  },
  {
    0x89, 0x85, 0x78, 0xFD, 0xFF, 0xFF, --mov     [ebp+a288], eax 
    0x5b, --pop
    0x5b, --pop
    0x5b, --pop
    0x5a, --pop
    0x61, --popad
    0x9d, --popfd
    0x8B, 0x9D, 0x78, 0xFD, 0xFF, 0xFF, --mov     ebx, [ebp+a288]
  }
)

local function hookHealRecovery(defence, dmg)
  local aIndex = -1
  local dIndex = ffi.readMemoryInt32(defence + 4)
  return callCallback(aIndex, dIndex, 1, dmg, 'heal');
end

ffi.hook.inlineHook('int (__cdecl *)(uint32_t, int)', hookHealRecovery, 0x0049C8FD, 9,
  {
    --0x0F, 0xB7, 0x85, 0xDE, 0xFE, 0xFF, 0xFF, -- movzx   eax, [ebp+var_122]
    --0xB4, 0x0C, -- mov     ah, 0Ch
    --0x66, 0x89, 0x85, 0xDC, 0xFE, 0xFF, 0xFF, -- mov     [ebp+var_124], ax
    0xff, 0xB5, 0xE0, 0xFE, 0xFF, 0xFF, -- push [ebp+var_120]
    0x60, --pushad
    0x9c, --pushfd
    0xC7, 0x85, 0xE0, 0xFE, 0xFF, 0xFF, 0x7F, 0x0E, 0x00, 0x00, -- mov  [ebp+var_120], 0x0E7F
    0xD9, 0xAD, 0xE0, 0xFE, 0xFF, 0xFF, -- fldcw  [ebp+var_120]
    0xDB, 0x9D, 0xE0, 0xFE, 0xFF, 0xFF, -- fistp   [ebp+var_120]
    --0xD9, 0xAD, 0xDE, 0xFE, 0xFF, 0xFF, -- fldcw   [ebp+var_122]
    0xff, 0xB5, 0xE0, 0xFE, 0xFF, 0xFF, -- push [ebp+var_120]
    0x53, --push ebx
  },
  {
    0x89, 0x85, 0xE0, 0xFE, 0xFF, 0xFF, -- mov     [ebp+var_120], eax 
    0x5b, --pop
    0x5b, --pop
    0x9d, --popfd
    0x61, --popad
    --0xff, 0xB5, 0xE0, 0xFE, 0xFF, 0xFF, -- push [ebp+var_120]
    --0xC7, 0x85, 0xE0, 0xFE, 0xFF, 0xFF, 0x7F, 0x0E, 0x00, 0x00, -- mov  [ebp+var_120], 0x0E7F
    --0xD9, 0xAD, 0xE0, 0xFE, 0xFF, 0xFF, -- fldcw  [ebp+var_120]
    --0x8F, 0x85, 0xE0, 0xFE, 0xFF, 0xFF, -- pop [ebp+var_120]
    0xDB, 0x85, 0xE0, 0xFE, 0xFF, 0xFF, -- fild    [ebp+var_120]
    0x8F, 0x85, 0xE0, 0xFE, 0xFF, 0xFF, -- pop [ebp+var_120]
  }
)

local _fpDmg;
local function hookFpDmg(attacker, defence)
  local dmg = _fpDmg(attacker, defence);
  local aIndex = ffi.readMemoryInt32(attacker + 4)
  local dIndex = ffi.readMemoryInt32(defence + 4)
  return callCallback(aIndex, dIndex, 0, dmg);
end

_fpDmg = ffi.hook.new('int (__cdecl*)(uint32_t, uint32_t)', hookFpDmg, 0x0049D5B0, 5);

local function hookAttackDamage(ebp, attacker, defence, dmg)
  local flag = 0;
  local ret = ffi.readMemoryDWORD(ebp + 4);
  local ebpOld = ffi.readMemoryDWORD(ebp);
  if ret == 0x004A59D3 then
    flag = ffi.readMemoryDWORD(ebpOld - 0x554);
  elseif ret == 0x0049E456 then
    flag = ffi.readMemoryDWORD(ebpOld - 0x234);
  elseif ret == 0x0049FD86 then
    flag = ffi.readMemoryDWORD(ebpOld - 0x64c);
  elseif ret == 0x0049FDEB then
    flag = ffi.readMemoryDWORD(ebpOld - 0x64c);
  elseif ret == 0x0049FF86 then
    flag = ffi.readMemoryDWORD(ebpOld - 0x64c);
  elseif ret == 0x004A0791 then
    flag = ffi.readMemoryDWORD(ebpOld - 0x64c);
  elseif ret == 0x004A0EE4 then
    flag = ffi.readMemoryDWORD(ebpOld - 0x77C);
  elseif ret == 0x004A200B then
    flag = ffi.readMemoryDWORD(ebpOld - 0x550);
  elseif ret == 0x004A85AE then
    flag = ffi.readMemoryDWORD(ebpOld - 0x220);
  elseif ret == 0x004A4623 then
    flag = ffi.readMemoryDWORD(ebpOld - 0x274);
  elseif ret == 0x004A88BE then
    flag = 0;
  end
  --printAsHex('hookAttackDamage', attacker, defence, dmg, flag)
  --printAsHex('ebp', ebp)
  --printAsHex('ret', ret)
  --printAsHex('ebpOld', ebpOld)
  local aIndex = ffi.readMemoryInt32(attacker + 4)
  local dIndex = ffi.readMemoryInt32(defence + 4)
  return callCallback(aIndex, dIndex, flag, dmg);
end
--BloodAttack
ffi.hook.inlineHook('int (__cdecl *)(uint32_t, uint32_t, uint32_t, int)', hookAttackDamage, 0x0049AF45, 6,
  {
    0x8B, 0x95, 0xC8, 0xFE, 0xFF, 0xFF, --mov     edx, [ebp+var_138]
    0x60, --pushad
    0x9C, --pushfd
    0x52, --push edx
    0xff, 0x75, 0x0c, -- push [ebp+c]
    0xff, 0x75, 0x08, -- push [ebp+8]
    0x55, --push ebp
  },
  {
    0x89, 0x85, 0xC8, 0xFE, 0xFF, 0xFF, --mov     [ebp+var_138], eax 
    0x5a, --pop
    0x5a, --pop
    0x5a, --pop
    0x5a, --pop edx
    0x9D, --popfd
    0x61, --popad
  }
)

ffi.hook.inlineHook('int (__cdecl *)(uint32_t, uint32_t, uint32_t, int)', hookAttackDamage, 0x0049AA87, 6,
  {
    0xDB, 0x9D, 0xE0, 0xFE, 0xFF, 0xFF, -- fistp   [ebp+var_120]
    0x9C, --pushfd
    0x50, --push eax
    0x51, --push eax
    0x53, --push eax
    0x54, --push eax
    0x55, --push eax
    0x56, --push eax
    0x57, --push eax
    0x52, --push edx
    0xff, 0x75, 0x0c, -- push [ebp+c]
    0xff, 0x75, 0x08, -- push [ebp+8]
    0x55, --push ebp
  },
  {
    0x50, 0x5a, --push eax , pop edx 
    0x89, 0x95, 0xE0, 0xFE, 0xFF, 0xFF, -- mov     [ebp+var_120], edx
    0x58, --pop 
    0x58, --pop 
    0x58, --pop
    0x58, --pop 
    0x5f, --pop eax
    0x5e, --pop eax
    0x5d, --pop eax
    0x5c, --pop eax
    0x5b, --pop eax
    0x59, --pop eax
    0x58, --pop eax
    0x9D, --popfd
    0xDB, 0x85, 0xE0, 0xFE, 0xFF, 0xFF, -- fild    [ebp+var_120]
  }
)
--NormalAttack
ffi.hook.inlineHook('int (__cdecl *)(uint32_t, uint32_t, uint32_t, int)', hookAttackDamage, 0x0049B1CA, 6,
  {
    0x8B, 0x95, 0xE0, 0xFE, 0xFF, 0xFF, --mov     edx, [ebp+var_120]
    0x60, --pushad
    0x9C, --pushfd
    0x52, --push edx
    0xff, 0x75, 0x0c, -- push [ebp+c]
    0xff, 0x75, 0x08, -- push [ebp+8]
    0x55, --push ebp
  },
  {
    0x89, 0x85, 0xE0, 0xFE, 0xFF, 0xFF, --mov     [ebp+var_120], eax 
    0x58, --pop 
    0x58, --pop 
    0x58, --pop 
    0x58, --pop 
    0x9d, --popfd
    0x61, --popad
  }
)

ffi.hook.inlineHook('int (__cdecl *)(uint32_t, uint32_t, uint32_t, int)', hookAttackDamage, 0x0049B66C, 6,
  {
    0x8B, 0xBD, 0xE0, 0xFE, 0xFF, 0xFF, --mov     edi, [ebp+var_120]
    0x60, --pushad
    0x9C, --pushfd
    0x57, --push edi
    0xff, 0x75, 0x0c, -- push [ebp+c]
    0xff, 0x75, 0x08, -- push [ebp+8]
    0x55, --push ebp
  },
  {
    0x89, 0x85, 0xE0, 0xFE, 0xFF, 0xFF, --mov     [ebp+var_120], eax 
    0x58, --pop 
    0x58, --pop 
    0x58, --pop 
    0x58, --pop 
    0x9d, --popfd
    0x61, --popad
  }
)

--ffi.hook.inlineHook('int (__cdecl *)(uint32_t, uint32_t, uint32_t, int)', hookAttackDamage, 0x0049B4DF, 6,
--  {
--    0x9C, --pushfd
--    0x50, --push eax
--    0x51, --push eax
--    0x53, --push eax
--    0x54, --push eax
--    0x55, --push eax
--    0x56, --push eax
--    0x57, --push eax
--    0x52, --push edx
--    0xff, 0x75, 0x0c, -- push [ebp+c]
--    0xff, 0x75, 0x08, -- push [ebp+8]
--    0x55, --push ebp
--  },
--  {
--    0x50, 0x5a, --push eax , pop edx 
--    0x58, --pop 
--    0x58, --pop 
--    0x58, --pop 
--    0x58, --pop 
--    0x5f, --pop eax
--    0x5e, --pop eax
--    0x5d, --pop eax
--    0x5c, --pop eax
--    0x5b, --pop eax
--    0x59, --pop eax
--    0x58, --pop eax
--    0x9D, --popfd
--  }
--)

ffi.hook.inlineHook('int (__cdecl *)(uint32_t, uint32_t, uint32_t, int)', hookAttackDamage, 0x0049B406, 6,
  {
    0xD9, 0xAD, 0xDC, 0xFE, 0xFF, 0xFF, -- fldcw   [ebp+var_124]
    0xDB, 0x9D, 0xE0, 0xFE, 0xFF, 0xFF, -- fistp   [ebp+var_120]
    0xD9, 0xAD, 0xDE, 0xFE, 0xFF, 0xFF, -- fldcw   [ebp+var_122]
    0x60, --pushad
    0x9C, --pushfd
    0xff, 0xB5, 0xE0, 0xFE, 0xFF, 0xFF, -- push [ebp+var_120]
    0xff, 0x75, 0x0c, -- push [ebp+c]
    0xff, 0x75, 0x08, -- push [ebp+8]
    0x55, --push ebp
  },
  {
    0x89, 0x85, 0xE0, 0xFE, 0xFF, 0xFF, -- mov     [ebp+var_120], eax
    0x58, --pop 
    0x58, --pop 
    0x58, --pop 
    0x58, --pop 
    0x9D, --popfd
    0x61, --popad
    0xDB, 0x85, 0xE0, 0xFE, 0xFF, 0xFF, -- fild    [ebp+var_120]
  }
)

ffi.hook.inlineHook('int (__cdecl *)(uint32_t, uint32_t, uint32_t, int)', hookAttackDamage, 0x0049B779, 6,
  {
    0x8B, 0x95, 0xE0, 0xFE, 0xFF, 0xFF, --mov     edx, [ebp+var_120]
    0x60, --pushad
    0x9C, --pushfd
    0x52, --push edx
    0xff, 0x75, 0x0c, -- push [ebp+c]
    0xff, 0x75, 0x08, -- push [ebp+8]
    0x55, --push ebp
  },
  {
    0x89, 0x85, 0xE0, 0xFE, 0xFF, 0xFF, --mov     [ebp+var_120], eax 
    0x58, --pop 
    0x58, --pop 
    0x58, --pop 
    0x58, --pop 
    0x9D, --popfd
    0x61, --popad
  }
)

local function hookPoisonDamage(charAddr, dmg)
  local aIndex = -1
  local dIndex = ffi.readMemoryInt32(charAddr + 4)
  return callCallback(aIndex, dIndex, 6, dmg);
end

ffi.hook.inlineHook('int (__cdecl *)(uint32_t, int)', hookPoisonDamage, 0x0049CB14, 5,
  {
    0x9C, --pushfd
    0x50, --push eax
    0x51, --push eax
    0x54, --push eax
    0x55, --push eax
    0x56, --push eax
    0x57, --push eax
    0x52, --push edx
    0x53, --push ebx
  },
  {
    0x89, 0x85, 0xE0, 0xFE, 0xFF, 0xFF, -- mov     [ebp+var_120], eax
    0x50, 0x5a, --push eax , pop edx 
    0x5b, --pop ebx 
    0x5f, --pop
    0x5f, --pop eax
    0x5e, --pop eax
    0x5d, --pop eax
    0x5c, --pop eax
    0x59, --pop eax
    0x58, --pop eax
    0x9D, --popfd
    0xDB, 0x85, 0xE0, 0xFE, 0xFF, 0xFF, --fild    [ebp+var_120]
  }
)

local function hookDrunkDamage(charAddr, dmg)
  local aIndex = -1
  local dIndex = ffi.readMemoryInt32(charAddr + 4)
  return callCallback(aIndex, dIndex, 7, dmg);
end
ffi.hook.inlineHook('int (__cdecl *)(uint32_t, int)', hookDrunkDamage, 0x0049D170, 9,
  {
    0x9C, --pushfd
    0x50, --push eax
    0x51, --push ecx
    0x52, --push edx
    0x54, --push esp
    0x55, --push ebp
    0x56, --push esi
    0x57, --push edi
    0x53, --push ebx
  },
  {
    0x50, 0x5f, --push eax , pop edi 
    0x5b, --pop ebx
    0x5e, --pop  
    0x5e, --pop esi
    0x5d, --pop ebp
    0x5c, --pop esp
    0x5a, --pop edx
    0x59, --pop ecx
    0x58, --pop eax
    0x9D, --popfd
  }
)