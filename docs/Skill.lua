---@alias �ַ��� string
---@alias ��ֵ�� number


---��ȡ����ָ����Ϣ
---@param skillIndex
---@param dataLine CONST.SKILL
---@return any @ָ��������Ϣ����Ϣ
function Skill.GetData(skillIndex, dataLine) end

---���ü���ָ����Ϣ
---@param skillIndex
---@param dataLine CONST.SKILL
---@param val ָ����Ϣ
---@return any @
function Skill.SetData(skillIndex, dataLine, val) end

---��ȡskillIndex
---@param id number skillId
---@return number @skillIndex
function Skill.GetSkillIndex(id) end

---��ȡְҵ��߼��ܵȼ�
---@param skillIndex
---@param job ְҵID
---@return any @ְҵ��߼��ܵȼ�
function Skill.GetMaxSkillLevelOfJob(skillIndex, job) end

