---@alias 字符串 string
---@alias 数值型 number
---获取战斗队列中对象实例的对象index
---@param BattleIndex  数值型 战斗index，为Encount、PVE或PVP函数的返回值。
---@param Slot  数值型 战斗队列中玩家位置,范围0-19，其中0-9为下方实例队列，10-19为上方实例队列。
---@return number 返回-1失败，成功返回对象实例的 对象index，参数数据类型不对返回-2，战斗index无效返回-3，战斗队列中玩家位置范围错误返回-4。
function Battle.GetPlayer(BattleIndex, Slot) end

---获取战斗队列中对象实例的对象index
---@param BattleIndex  数值型 战斗index，为Encount、PVE或PVP函数的返回值。
---@param Slot  数值型 战斗队列中玩家位置,范围0-19，其中0-9为下方实例队列，10-19为上方实例队列。
---@return number 返回-1失败，成功返回对象实例的 对象index，参数数据类型不对返回-2，战斗index无效返回-3，战斗队列中玩家位置范围错误返回-4。
function Battle.GetPlayIndex(BattleIndex, Slot) end

---调用魔力脚本语句encount创建战斗
---@param UpIndex  数值型 战斗一方的 对象index
---@param DownIndex  数值型 战斗一方的 对象index
---@param Data  字符串 触发战斗的信息，包括战斗敌人队列等信息，等同于GMSV自身脚本的encount参数,可不填写
---@return any 前两个参数都是同一个玩家索引，第三个参数不填的时候，进行原地遇敌，如果该处无法遇敌，则返回负数。
function Battle.Encount(UpIndex, DownIndex, Data) end

---使用Lua脚本创建一个战斗，战斗创建后可自动调用Lua的DoFunc函数。
---@param CharIndex  数值型 遇敌玩家的对象index。
---@param CreatePtr  数值型 触发战斗的对象index。
---@param DoFunc  字符串 战斗初始化接受后调用的Lua函数的名称，申明格式请参考[BattleInitCallBack]，如果不调用则填nil
---@param EnemyIdAr  数值型[数组] 战斗所出现的怪物队列的怪物ID数组（怪物ID为enemy.txt中的ID）。
---@param BaseLevelAr  数值型[数组] 战斗所出现的怪物队列的怪物等级数组（数组结构与EnemyIdAr结构应一一对应）
---@param RandLv 数值型[数组] 战斗所出现的怪物队列的怪物等级波动数组（数组结构与EnemyIdAr结构应一一对应）
---@return number 返回负数表示失败，成功返回战斗index。
function Battle.PVE(CharIndex, CreatePtr, DoFunc, EnemyIdAr, BaseLevelAr, RandLv) end

---创建PK战斗
---@param UpIndex  数值型 战斗一方的 对象index
---@param DownIndex  数值型 战斗一方的 对象index
---@return number 返回负数表示失败，成功返回战斗index。
function Battle.PVP(UpIndex, DownIndex) end

---设置战斗类型，如普通战、PVP战等。
---@param BattleIndex  数值型 战斗index，为Encount、PVE或PVP函数的返回值。
---@param Type  数值型 战斗类型，具体参照战斗类型常量。
---@return any 1为成功,其他失败。
function Battle.SetType(BattleIndex, Type) end

---设置战斗奖励模式，如奖励经验、奖励DP。
---@param BattleIndex  数值型 战斗index，为Encount、PVE或PVP函数的返回值。
---@param Mod  数值型 战斗奖励类型，具体参照战斗类型常量。
---@return any 1为成功,其他失败。
function Battle.SetGainMode(BattleIndex, Mod) end

---获取战斗类型，如普通战、PVP战等。
---@param BattleIndex  数值型 战斗index，为Encount、PVE或PVP函数的返回值。
---@return any 战斗类型，具体参照战斗类型常量。
function Battle.GetType(BattleIndex) end

---获取战斗奖励模式，如奖励经验、奖励DP。
---@param BattleIndex  数值型 战斗index，为Encount、PVE或PVP函数的返回值。
---@return any 战斗奖励类型，具体参照战斗类型常量。
function Battle.GetGainMode(BattleIndex) end

---获取战斗胜利方。
---@param BattleIndex  数值型 战斗index，为Encount、PVE或PVP函数的返回值。
---@return any 0或者1。 0表示战斗下方，即0-9位置的玩家；1表示上方，即10-19位置的玩家。
function Battle.GetWinSide(BattleIndex) end

---让指定玩家对象加入另一个玩家对象的战斗中，也就是让CharIndex2加入CharIndex1的战斗（类似石器时代求助帮助）。使用前先组队
---@param CharIndex1  数值型 目标的对象index，在战斗中的玩家。
---@param CharIndex2  数值型 目标的 对象index，不在战斗中的玩家。
---@return any 0为成功，其他失败。
function Battle.JoinBattle(CharIndex1, CharIndex2) end

---让指定玩家退出当前战斗。
---@param CharIndex  数值型 目标的对象index，在战斗中的玩家。
---@return any 0为成功，其他失败。
function Battle.ExitBattle(CharIndex) end

---为非PVP的战斗设置战斗胜利事件的回调函数，由Lua引擎将Callback的参数传递给指定的Callback并执行。
---@param Dofile  字符串 要加载的脚本文件名，如果为当前文件，则定义nil即可
---@param FuncName  字符串 触发的Lua函数的名称，该函数的申明格式请参考[PVEWinCallBack]
---@param BattleIndex  数值型 战斗index。
---@return number 返回1成功，返回0失败。
function Battle.SetWinEvent(DoFile, FuncName, BattleIndex) end

---WinEvent回调函数
---@param BattleIndex  数值型 战斗index，该值由Lua引擎传递给本函数。
---@param CharIndex  数值型 响应事件的对象index，该值由Lua引擎传递给本函数。
---@return any 
function BattleIndex, CharIndex) end

---为PVP的战斗设置战斗胜利事件的回调函数，由Lua引擎将Callback的参数传递给指定的Callback并执行。
---@param Dofile  字符串 要加载的脚本文件名，如果为当前文件，则定义nil即可
---@param FuncName  字符串 触发的Lua函数的名称，该函数的申明格式请参考[PVEWinCallBack]
---@param BattleIndex  数值型 战斗index。
---@return number 返回1成功，返回0失败。
function Battle.SetPVPWinEvent(DoFile, FuncName, BattleIndex) end

---PVPWinEvent回调函数
---@param BattleIndex  数值型 战斗index，该值由Lua引擎传递给本函数。
---@return any 
function BattleIndex) end

---获取战斗当前回合数。
---@param BattleIndex  数值型 战斗index，为Encount、PVE或PVP函数的返回值。
---@return any 战斗回合数。
function Battle.GetTurn(BattleIndex) end

---判断当前对象是否在战斗中且处于等待输入战斗指令的状态。
---@param CharIndex  数值型 对象index，可以为玩家、宠物、敌人。
---@return any 0 为否， 1为是
function Battle.IsWaitingCommand(CharIndex) end

---让对象执行指定的战斗操作，必须在对象Battle.IsWaitingCommand(index)返回值为1时才可以有效使用。
---@param CharIndex  数值型 玩家对象index
---@param com1  数值型 CONST.BATTLE_COM
---@param com2  数值型 CONST.BATTLE_COM_TARGET
---@param com3  数值型 techId
---@return any 0 失败， 1 成功
function Battle.ActionSelect(CharIndex, com1, com2, com3) end

---获取当前战斗的战场魔法效果，如属性翻转、魔法封印
---@param BattleIndex  数值型 战斗对象index
---@return number 失败返回0，否则返回3个值，分别是战场魔法状态（参考状态类型说明）、状态持续回合、状态属性。
function Battle.GetBattleFieldAttribute(BattleIndex) end

---设置当前战斗的战场魔法效果，如属性翻转、魔法封印
---@param BattleIndex  数值型 战斗对象index
---@param Attribute  数值型 战场状态 CONST.BATTLE_FIELD_ATTR
---@param TurnCount  数值型 状态持续回合数
---@param AttributePower  数值型 状态属性
---@return number 失败返回0，否则返回3个值，分别是新的战场魔法状态（参考状态类型说明）、状态持续回合、状态属性。
function Battle.SetBattleFieldAttribute(BattleIndex, Attribute, TurnCount, AttributePower) end

---设置连战。
---@param BattleIndex  数值型 战斗index，为Encount、PVE或PVP函数的返回值。
---@param encountIndex 数值型 -1=取消连战，  -2=lua生成连战
---@param Flg  数值型 lua连战参数
---@return any 0为成功,其他失败。
function Battle.SetNextBattle(BattleIndex,encountIndex, Flg) end

---获得角色战斗中真实位置
---@param battleIndex 数值型 战斗index
---@param charIndex 数值型 角色index
---@return any 角色战斗中真实位置，范围0-19
function Battle.GetPos(battleIndex,charIndex) end

---获取连战id
---@param battleIndex number
---@param 
---@return number encountIndex
function Battle.GetNextBattle(battleIndex) end

---计算属性伤害比率（10属性=100）
---@param ap number[] 进攻方，4属性，地、水、火、风
---@param dp number[] 防守方4属性，地、水、火、风
---@return any 属性伤害比率
function Battle.CalcPropScore(ap, dp) end

---获取当前动作技能参数
---@param charIndex number
---@param type string 取值 DD  AR  等
---@return any 当前动作技能参数
function Battle.GetTechOption(charIndex, type) end

---获取种族克制关系
---@param attackerIndex number
---@param defenceIndex number
---@return any 克制比率
function Battle.CalcAttributeDmgRate(attackerIndex, defenceIndex) end

---计算种族伤害
---@param a number 攻击方种族
---@param b number 防御方种族
---@return any 种族伤害
function Battle.CalcTribeRate(a, b) end

---计算当前战斗种族伤害
---@param aIndex number 攻击方index
---@param bIndex number 防御方index
---@return any 当前战斗种族伤害
function Battle.CalcTribeDmgRate(aIndex, bIndex) end

---解除WinEvent
---@param BattleIndex  数值型 战斗对象index
---@return any 
function Battle.UnsetWinEvent(battleIndex) end

---解除PVPWinEvent
---@param BattleIndex  数值型 战斗对象index
---@return any 
function Battle.UnsetPVPWinEvent(battleIndex) end

---设置当前回合数
---@param battleIndex number 
---@param turn number 回合数
---@return any 
function Battle.SetTurn(battleIndex, turn) end

---为当前处理的战斗添加信息(如释放技能喊话)
---@param msg string
---@return any 
function Battle.AppendBattleMsg(msg) end

---获取战斗信息
---@param BattleIndex  数值型 战斗对象index
---@param charIndex number
---@param dataline  数值型 对应栏CONST.BATTLE_ENTRY_* 
---@return any 战斗信息
function Battle.GetEntryData(battleIndex,charIndex,dataline) end

---设置战斗信息
---@param BattleIndex  数值型 战斗对象index
---@param charIndex number
---@param dataline  数值型 对应栏CONST.BATTLE_ENTRY_* 
---@param value  数值型 对应栏信息
---@return any 
function Battle.SetEntryData(battleIndex,charIndex,dataline,value) end

---判定战斗是否是BOSS战
---@param BattleIndex  数值型 战斗index
---@return any 0 否 1 是
function Battle.IsBossBattle(BattleIndex) end

---获取战斗乱敏率
---@param BattleIndex  数值型 战斗index
---@return any 返回是否启用，概率
function Battle.GetDexRearrangeRate(BattleIndex) end

---设置战斗乱敏率
---@param BattleIndex  数值型 战斗index
---@param rate 数值型 0~100 乱敏概率
---@return any 
function Battle.SetDexRearrangeRate(BattleIndex,rate) end

---获取战斗最大反击数
---@param BattleIndex  数值型 战斗index
---@return any 返回是否启用，概率
function Battle.GetMaxCounter(BattleIndex) end

---设置战斗最大反击数
---@param BattleIndex  数值型 战斗index
---@param rate 数值型 最大反击数
---@return any 
function Battle.SetMaxCounter (BattleIndex,rate) end

