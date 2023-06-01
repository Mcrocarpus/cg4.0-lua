---@alias �ַ��� string
---@alias ��ֵ�� number


---��ȡMsg
---@param msgId number
---@return any @msg
function Data.GetMessage(msgId) end

---����Msg
---@param msgId number
---@param val string
---@return any @
function Data.SetMessage(msgId, val) end

---���������˺�����
---@param a number �������� ֧�� 0 ~ 19
---@param b number �������� ֧�� 0 ~ 19
---@param rate number ���Ʊ���֧�� -128 ~ 127
---@return any @
function Data.SetTribeMapValue(a, b, rate) end

---��ȡEnemyDataIndex
---@param enemyId number
---@return number @EnemyDataIndex
function Data.EnemyGetDataIndex(enemyId) end

---��ȡEnemy����
---@param enemyIndex number
---@param DataPos number CONST.DATA_ENEMY
---@return any @Enemy����
function Data.EnemyGetData(enemyIndex, DataPos) end

---ָ��Enemy����
---@param enemyIndex number
---@param DataPos number CONST.DATA_ENEMY
---@param val ָ����Ϣ
---@return any @
function Data.EnemySetData(enemyIndex, DataPos, val) end

---��ȡEnemyBaseDataIndex
---@param enemyIndex number
---@return number @EnemyBaseDataIndex
function Data.EnemyBaseGetDataIndex(enemyBaseId) end

---��ȡEnemyBase����
---@param enemybaseIndex number
---@param DataPos number CONST.DATA_ENEMYBASE
---@return any @EnemyBase����
function Data.EnemyBaseGetData(enemyBaseIndex, DataPos) end

---ָ��EnemyBase����
---@param enemybaseIndex number
---@param DataPos number CONST.DATA_ENEMYBASE
---@param val ָ����Ϣ
---@return any @
function Data.EnemyBaseSetData(enemyBaseIndex, DataPos, val) end

---��ȡItemsetIndex
---@param ItemID number
---@return number @ItemsetIndex
function Data.ItemsetGetIndex(ItemID) end

---��ȡItemset����
---@param ItemsetIndex number
---@param DataPos number CONST.ITEMSET
---@return any @Itemset����
function Data.ItemsetGetData(ItemsetIndex, DataPos) end

---ָ��Itemset����
---@param ItemsetIndex number
---@param DataPos number CONST.ITEMSET
---@param val ָ����Ϣ
---@return any @
function Data.ItemsetSetData(ItemsetIndex, DataPos, val) end

---��ȡencountIndex
---@param encountID number
---@return number @encountIndex
function Data.GetEncountIndex(encountId) end

---��ȡencount����
---@param encountIndex number
---@param DataPos number CONST.ENCOUNT_* 
---@return any @encount����
function Data.GetEncountData(encountIndex,DataPos) end

---ָ��encount����
---@param encountIndex number
---@param DataPos number CONST.ENCOUNT_* 
---@param val ָ����Ϣ
---@return any @
function Data.SetEncountData(encountIndex,DataPos,val) end

