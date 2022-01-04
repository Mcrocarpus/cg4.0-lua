_G.Skill = _G.Skill or {}

local getSkillExpDataInt;
local expTable = {}

local MAX_SKill_Lv = 10; --���127 �����ϣ�

local function hookGetSkillExpDataInt(index, lvIndex)
  --print(index, lvIndex);
  if expTable[index] and expTable[index][lvIndex] then
    return expTable[index][lvIndex]
  end
  return getSkillExpDataInt(index, lvIndex)
end

getSkillExpDataInt = ffi.hook.new('int (__cdecl*)(int a1, int a2)', hookGetSkillExpDataInt, 0x004F5420, 6);
local getSkillExpIndex = ffi.cast('int (__cdecl*)(int a)', 0x004F5490);


--[[
--������չ���ܾ��������
Skill.SetExpForLv(2, 11, 3300);
Skill.SetExpForLv(2, 12, 3400);
Skill.SetExpForLv(2, 13, 3500);
Skill.SetExpForLv(2, 14, 3500);
Skill.SetExpForLv(2, 15, 3600);
Skill.SetExpForLv(2, 16, 3601);
Skill.SetExpForLv(2, 17, 3602);
Skill.SetExpForLv(2, 18, 3603);
Skill.SetExpForLv(2, 19, 3604);
Skill.SetExpForLv(2, 20, 3605);
Skill.SetExpForLv(2, 21, 3606);
Skill.SetExpForLv(2, 22, 3607);
]]
---������չ���ܾ����
---@param expId number
---@param lv number
---@param exp number
function Skill.SetExpForLv(expId, lv, exp)
  if expId < 0 then
    return -1;
  end
  if lv < 1 then
    return -2;
  end
  local index = getSkillExpIndex(expId);
  if index < 0 then
    return -3;
  end
  if exp <= 0 then
    exp = nil
  else
    exp = math.floor(exp);
  end
  expTable[index] = expTable[index] or {}
  expTable[index][lv - 1] = exp;
end

---���ü������ȼ�
---@param level number
function Skill.SetMaxLevel(level)
  MAX_SKill_Lv = tonumber(level) or 10;
  if MAX_SKill_Lv > 127 then
    MAX_SKill_Lv = 127
  end
  ffi.patch(0x00442533 + 2, { MAX_SKill_Lv });
  ffi.patch(0x00442811 + 2, { MAX_SKill_Lv });
  ffi.patch(0x004F9426 + 3, { MAX_SKill_Lv - 1 });
  ffi.patch(0x0044222F + 6, { MAX_SKill_Lv - 1 });
end

local getSkillIndex = ffi.cast('uint32_t (__cdecl*)(int a)', 0x004F4AB0);
local getTechId = ffi.cast('int (__cdecl*)(const char *file, int lineNo, uint32_t charPtr, int slot, uint32_t lv)', 0x0042A590);
local setTechId = ffi.cast('int (__cdecl*)(const char *a1, int a2, uint32_t charPtr, int slot, uint32_t lv, int techId)', 0x0042A740);
local getMaxSkillLevelOfJob = ffi.cast('int (__cdecl*)(int a1, int a2)', 0x004F3EC0);
local sendUpdateToClient = ffi.cast('int (__cdecl*)(uint32_t a4, int slot)', 0x00442480);

ffi.hook.new('int (__cdecl*)(uint32_t charPtr, int isNotify)', function(charPtr, isNotify)
  local MaxSkillSlot = Char.GetDataByPtr(charPtr, CONST.CHAR_������);
  if MaxSkillSlot > 15 then
    MaxSkillSlot = 15;
  end
  if MaxSkillSlot < 0 then
    return 1;
  end
  local techNum = ffi.readMemoryDWORD(0x011149EC);
  local charIndex = ffi.readMemoryInt32(charPtr + 4);
  for slot = 0, MaxSkillSlot - 1 do
    local nowTechIds = {};
    local newTechIndexes = {};
    local newTechIds = {};
    table.fill(nowTechIds, MAX_SKill_Lv, -1);
    table.fill(newTechIndexes, MAX_SKill_Lv, -1);
    table.fill(newTechIds, MAX_SKill_Lv, -1);
    for iLv = 1, MAX_SKill_Lv do
      nowTechIds[iLv] = getTechId('Skill.lua hook updateSkill', 0, charPtr, slot, iLv - 1);
      setTechId('Skill.lua hook updateSkill', 1, charPtr, slot, iLv - 1, -1);
    end
    local skillId = Char.GetSkillID(charIndex, slot);
    if skillId >= 0 then
      local skillIndex = Skill.GetSkillIndex(skillId);
      if skillIndex >= 0 then
        local maxJobLv = Skill.GetMaxSkillLevelOfJob(skillIndex, Char.GetData(charIndex, CONST.CHAR_ְҵ));
        local iLv = 0
        for techIndex = 0, techNum - 1 do
          if Tech.GetData(techIndex, CONST.TECH_SKILLID) == skillId then
            local skLv = Char.GetSkillLv(charIndex, slot);
            if skLv >= Tech.GetData(techIndex, CONST.TECH_NECESSARYLV) then
              if iLv > MAX_SKill_Lv then
                break ;
              end
              if (Tech.GetData(techIndex, CONST.TECH_REMAIN) ~= 0 or maxJobLv >= Tech.GetData(techIndex, CONST.TECH_NECESSARYLV)) then
                iLv = iLv + 1;
                newTechIndexes[iLv] = techIndex;
                newTechIds[iLv] = Tech.GetData(techIndex, CONST.TECH_ID);
              end
            end
          end
        end
        --if iLv - 1 > 0 then
        --[[
            if ( iLv_1 - 1 > 0 )
                  {
                    v10 = a1[2][0];
                    for ( i = 1; v10 != -1; v10 = a1[2][i++] )
                    {
                      if ( !TECH_getInt(v10, TECH_REMAIN) && a1[2][i] != -1 )
                        a1[1][i + 10] = -1;
                      if ( i >= iLv_1 - 1 )
                        break;
                    }
                  }
        ]]
        --end
        iLv = 0;
        for i, techIndex in ipairs(newTechIndexes) do
          if techIndex >= 0 then
            if Tech.GetData(techIndex, CONST.TECH_REMAIN) == 0 then
              setTechId('Skill.lua hook updateSkill', 2, charPtr, slot, 0, Tech.GetData(techIndex, CONST.TECH_ID));
            else
              setTechId('Skill.lua hook updateSkill', 3, charPtr, slot, iLv, Tech.GetData(techIndex, CONST.TECH_ID));
              iLv = iLv + 1;
            end
            local recipeId = Tech.GetData(techIndex, CONST.TECH_REMEMBER_RECIPE1);
            --print('update recipe', Tech.GetData(techIndex, CONST.TECH_ID), recipeId);
            if recipeId >= 0 then
              Recipe.GiveRecipe(charIndex, recipeId);
            end
            local recipeId2 = Tech.GetData(techIndex, CONST.TECH_REMEMBER_RECIPE2);
            --print('update recipe 2', Tech.GetData(techIndex, CONST.TECH_ID), recipeId2);
            if recipeId2 >= 0 then
              Recipe.GiveRecipe(charIndex, recipeId2);
            end
          end
        end
        --if iLv > 0 then
        --  for i = 1, iLv do
        --  end
        --end
      end
      if isNotify ~= 0 then
        for i, v in ipairs(nowTechIds) do
          if v >= 0 and table.indexOf(newTechIds, v) <= 0 then
            local techIndex = Tech.GetTechIndex(v);
            --print(v, techIndex, Tech.GetData(techIndex, CONST.TECH_NAME));
            NLG.SystemMessage(charIndex, string.format("ʧȥ��%s�ļ��ܡ�", Tech.GetData(techIndex, CONST.TECH_NAME)));
          end
        end
        for i, v in ipairs(newTechIds) do
          if v >= 0 and table.indexOf(nowTechIds, v) <= 0 then
            local techIndex = Tech.GetTechIndex(v);
            --print(v, techIndex, Tech.GetData(techIndex, CONST.TECH_NAME));
            NLG.SystemMessage(charIndex, string.format("�õ���%s�ļ��ܡ�", Tech.GetData(techIndex, CONST.TECH_NAME)));
          end
        end
      end
      --print('update skill', charIndex, slot);
      --print('now', table.unpack(nowTechIds));
      --print('new', table.unpack(newTechIds));
      sendUpdateToClient(charPtr, slot);
    end
  end
  return 1;
end, 0x00430900, 6)

local charSkillData = {};
local _getTechId;
_getTechId = ffi.hook.new('int (__cdecl*)(const char *file, int lineNo, uint32_t charPtr, int slot, uint32_t lv)',
  function(file, lineNo, charPtr, slot, lv)
    --print('_getTechId', ffi.string(file), lineNo, charPtr, slot, lv)
    if slot >= 15 or slot < 0 then
      return -1;
    end
    if lv <= 10 then
      local ret = _getTechId(file, lineNo, charPtr, slot, lv);
      --print('ret', ret);
      return ret;
    end
    if lv > MAX_SKill_Lv then
      logError('SkillHook', lv .. ' is over max skill lv ' .. MAX_SKill_Lv);
      return -1;
    end
    local charIndex = ffi.readMemoryInt32(charPtr + 4);
    if charSkillData[charIndex] == nil then
      return -1;
    end
    local n = charSkillData[charIndex][slot * 1000 + lv];
    --print('charSkillData', charIndex, slot, lv, n);
    if n == nil then
      return -1
    end
    return n;
  end, 0x0042A590, 5);
local _setTechId;
_setTechId = ffi.hook.new('int (__cdecl*)(const char *file, int lineNo, uint32_t charPtr, int slot, uint32_t lv, int techId)',
  function(file, lineNo, charPtr, slot, lv, techId)
    --print('_setTechId', ffi.string(file), lineNo, charPtr, slot, lv, techId)
    if slot >= 15 or slot < 0 then
      logError('SkillHook', 'over slot ' .. slot);
      return -1;
    end
    if lv >= MAX_SKill_Lv then
      logError('SkillHook', 'over max skill lv ' .. MAX_SKill_Lv);
      return -1;
    end
    if lv <= 10 then
      local ret = _setTechId(file, lineNo, charPtr, slot, lv, techId);
      --print('ret', ret);
      return ret;
    end
    local charIndex = ffi.readMemoryInt32(charPtr + 4);
    if charSkillData[charIndex] == nil then
      charSkillData[charIndex] = {};
    end
    --print('charSkillData save', charIndex, lv, charSkillData[charIndex][slot * 1000 + lv], techId);
    charSkillData[charIndex][slot * 1000 + lv] = techId;
    return 0;
  end, 0x0042A740, 5);

local _checkNesseraryLv;
_checkNesseraryLv = ffi.hook.new('int (__cdecl*)(uint32_t a1, int lv)', function(charPtr, lv)
  if lv >= 10 then
    lv = 10
  end
  return _checkNesseraryLv(charPtr, lv);
end, 0x004FD570, 6);

function Skill.GetMaxSkillLevelOfJob(skillIndex, job)
  return getMaxSkillLevelOfJob(skillIndex, job)
end

function Skill.GetSkillIndex(id)
  return getSkillIndex(id)
end

regGlobalEvent('LogoutEvent', function(charIndex)
  charSkillData[charIndex] = nil;
end)

regGlobalEvent('DropEvent', function(charIndex)
  charSkillData[charIndex] = nil;
end)
