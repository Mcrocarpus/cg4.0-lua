---@alias 字符串 string
---@alias 数值型 number
---普通说话，可以对全服务器人说。
---@param ToIndex  数值型 说话目标的 对象index，如果为-1，则对全服务器玩家说
---@param TalkerIndex  数值型 说话者的 对象index，如果为-1，则不显示对象名
---@param Msg  字符型 说话的内容
---@param FontColor  数值型 默认为0，即白色 [可为空]
---@param FontSize  数值型 默认为0，为显示的字体大小 [可为空]
---@return number 返回0表示成功，其他表示失败
function NLG.Say(ToIndex,TalkerIndex,Msg,FontColor,FontSize) end

---普通说话，可以对全服务器人说。
---@param ToIndex  数值型 说话目标的 对象index，如果为-1，则对全服务器玩家说
---@param TalkerIndex  数值型 说话者的 对象index，如果为-1，则不显示对象名
---@param Msg  字符型 说话的内容
---@param FontColor  数值型 默认为0，即白色 [可为空]
---@param FontSize  数值型 默认为0，为显示的字体大小 [可为空]
---@return number 返回0表示成功，其他表示失败
function NLG.TalkToCli(ToIndex,TalkerIndex,Msg,FontColor,FontSize) end

---对指定地图的所有玩家说话。
---@param Map  数值型 说话目标的地图类型，0为固定地图，1为随机地图
---@param Floor  数值型 说话目标的地图编号
---@param TalkerIndex  数值型 说话者的 对象index，如果为-1，则不显示对象名
---@param Msg  字符型 说话的内容
---@param FontColor  数值型 默认为0，即白色 [可为空]
---@param FontSize  数值型 默认为0，为显示的字体大小 [可为空]
---@return number 返回0表示成功，其他表示失败
function NLG.TalkToMap(Map,Floor,TalkerIndex,Msg,FontColor,FontSize) end

---对指定地图的所有玩家说话。
---@param Map  数值型 说话目标的地图类型，0为固定地图，1为随机地图
---@param Floor  数值型 说话目标的地图编号
---@param TalkerIndex  数值型 说话者的 对象index，如果为-1，则不显示对象名
---@param Msg  字符型 说话的内容
---@param FontColor  数值型 默认为0，即白色 [可为空]
---@param FontSize  数值型 默认为0，为显示的字体大小 [可为空]
---@return number 返回0表示成功，其他表示失败
function NLG.Say2Map(Map,Floor,TalkerIndex,Msg,FontColor,FontSize) end

---对指定地图的所有玩家说话。
---@param Map  数值型 说话目标的地图类型，0为固定地图，1为随机地图
---@param Floor  数值型 说话目标的地图编号
---@param TalkerIndex  数值型 说话者的 对象index，如果为-1，则不显示对象名
---@param Msg  字符型 说话的内容
---@param FontColor  数值型 默认为0，即白色 [可为空]
---@param FontSize  数值型 默认为0，为显示的字体大小 [可为空]
---@return number 返回0表示成功，其他表示失败
function NLG.TalkToFloor(Map,Floor,TalkerIndex,Msg,FontColor,FontSize) end

---检查 对象的改变并且向所有有关联的玩家发送该对象的数据更新封包。
---@param CharIndex  数值型 目标对象index。
---@return any 
function NLG.UpChar(CharIndex) end

---生成并发送对话框
---@param ToIndex  数值型 接收对话框的目标的对象index。
---@param WinTalkIndex  数值型 生成对话框的目标的对象index，一般为NPC。
---@param WindowType  数值型 查阅附录对话框类型
---@param ButtonType  数值型 对话框包含的按钮，查阅附录对话框按钮
---@param SeqNo  数值型 自定义数值，用于识别不同的对话框事件响应, 具体会在WindowTalkedCallBack中调用
---@param Data  字符串 对话框的内容,根据不同的对话框类别,有不同的格式,具体会在附录中说明
---@return any 0表示成功，其他表示失败。
function NLG.ShowWindowTalked(ToIndex,WinTalkIndex,WindowType,ButtonType,SeqNo,Data) end

---ShowWindowTalked的回调函数
---@param CharIndex  数值型 响应事件的对象自身的index，一般为NPC对象的指针，该值由Lua引擎传递给本函数。
---@param TargetCharIndex  数值型 触发事件的对象的index，一般为玩家对象的指针，该值由Lua引擎传递给本函数。
---@param SeqNo  数值型 来源对话框的ID，该值与NLG.ShowWindowTalked中的定义应该对应，该值由Lua引擎传递给本函数。
---@param Select  数值型 玩家所按下的按钮的值或选择框中的选项的值，该值由Lua引擎传递给本函数。
---@param Data  字符串 客户端所传递回来的值，这个值将根据不同的窗口类型而不同，该值由Lua引擎传递给本函数。
---@return any 
function WindowTalkedCallBack(CharIndex, TargetCharIndex, SeqNo, Select, Data) end

---设置对象的动作
---@param CharIndex  数值型 目标对象index。
---@param Action  数值型 动作编号，有兴趣的可以从0开始一个一个尝试。
---@return any 0表示成功，其他表示失败。
function NLG.SetAction(CharIndex, Action) end

---让对象向指定方向移动一格
---@param CharIndex  数值型 目标对象index。
---@param Action  数值型 范围0-7，分别表示游戏中对应的八个方向。
---@return any 0表示成功，其他表示失败。
function NLG.WalkMove(CharIndex, Dir) end

---检查对象是否在指定距离之内（且面向目标对象）
---@param CharIndex  数值型 自身对象index。
---@param TargetCharIndex  数值型 目标对象index。
---@param Distance  数值型 距离
---@return any 0: 不在距离内 1: 在距离内
function NLG.CheckInFront(CharIndex, TargetCharIndex, Distance) end

---检查对象是否面对面且在对话范围内（两格）
---@param CharIndex  数值型 自身对象index。
---@param TargetCharIndex  数值型 目标对象index。
---@return any 0: 不在距离内 1: 在距离内
function NLG.CanTalk(CharIndex, TargetCharIndex) end

---检查对象是否面对面且在对话范围内（两格）
---@param CharIndex  数值型 自身对象index。
---@param TargetCharIndex  数值型 目标对象index。
---@return any 0: 不在距离内 1: 在距离内
function NLG.CheckTalkRange(CharIndex, TargetCharIndex) end

---获取在线玩家数量
---@param 
---@return number 返回在线玩家数，失败返回-1。
function NLG.GetPlayerNum() end

---获取在线玩家数量
---@param 
---@return number 返回在线玩家数，失败返回-1。
function NLG.GetOnLinePlayer() end

---获取地图内玩家的数量
---@param Map  数值型 地图类型，0为正常地图，1为自动生成的地图。
---@param Floor  数值型 地图编号。
---@return number 返回在线玩家数，失败返回-1。
function NLG.GetMapPlayerNum(Map, Floor) end

---给指定对象发送黄色加粗的公告信息。
---@param CharIndex  数值型 接收公告的对象index，值为-1时给全服在线玩家发送。
---@param Message  字符串 要发送的文字
---@return number 成功返回1，否则返回0。
function NLG.SystemMessage(CharIndex, Message) end

---给指定对象发送黄色加粗的公告信息。
---@param MapID  数值型 目标地图的类型，0为固定地图1为随机地图。
---@param FloorID  数值型 地图编号
---@param Message  字符串 要发送的文字
---@return number 成功返回1，否则返回0。
function NLG.SystemMessageToMap(MapID, FloorID, Message) end

---检测地图的x，y坐标是否可通行。
---@param MapID  数值型 目标地图的类型，0为固定地图1为随机地图。
---@param FloorID  数值型 地图编号
---@param X  数值型 X坐标
---@param Y  数值型 Y坐标
---@return number 返回1代表可通行，返回0不可通行。
function NLG.Walkable(MapID, FloorID, X, Y) end

---获取目标地图所有的玩家，并以table形式返回。
---@param MapID  数值型 目标地图的类型，0为固定地图1为随机地图。
---@param FloorID  数值型 地图编号
---@return number 对返回值使用Lua函数type()来进行判断，如果返回值为”table”则为玩家的对象index的集合，否则表示目标地图无玩家或者无目标地图。
function NLG.GetMapPlayer(MapID, FloorID) end

---让目标玩家断开连接。
---@param CharIndex  数值型 目标对象index。
---@return number 返回1代表成功，返回0失败。
function NLG.DropPlayer(CharIndex) end

---在指定地图的指定坐标设置一个地图物件。
---@param MapID  数值型 目标地图的类型，0为固定地图1为随机地图。
---@param FloorID  数值型 地图编号
---@param X  数值型 X坐标
---@param Y  数值型 Y坐标
---@param Obj  数值型 要显示的地图物件，如果为0，则删除目标坐标的地图物件。
---@return number 返回1代表成功，返回0失败。
function NLG.SetObj(MapID, FloorID, X, Y, Obj) end

---改变玩家目前的地图调色板。
---@param CharIndex  数值型 目标对象index。
---@param PalID  数值型 地图调色板编号。
---@param Time  数值型 持续时间，单位秒。
---@return number 返回1代表成功，返回0失败。
function NLG.SetPal(CharIndex, PalID, Time) end

---改变玩家目前的地图调色板。
---@param CharIndex  数值型 目标对象index。
---@param PalID  数值型 地图调色板编号。
---@param Time  数值型 持续时间，单位秒。
---@return number 返回1代表成功，返回0失败。
function NLG.ChangePal(CharIndex, PalID, Time) end

---然玩家CharIndex观看TargetCharIndex的当前战斗（进入观战）。
---@param CharIndex  数值型 自身对象index。
---@param TargetCharIndex  数值型 目标对象index。
---@return any 1表示成功，其他表示失败。
function NLG.WatchBattle(CharIndex, TargetCharIndex) end

---然玩家CharIndex观看TargetCharIndex的当前战斗（进入观战）。
---@param CharIndex  数值型 自身对象index。
---@param TargetCharIndex  数值型 目标对象index。
---@return any 1表示成功，其他表示失败。
function NLG.WatchEntry(CharIndex,TargetCharIndex) end

---设置NPC对话框文字居中。
---@param Message  字符串 要居中设置的文本
---@return any 居中后的文本。
function NLG.c(Message) end

---设置指定地图的名字。
---@param MapID  数值型 目标地图的类型，0为固定地图1为随机地图。
---@param FloorID  数值型 地图编号
---@param Name  字符串 地图名字
---@return number 成功返回1，否则返回0。
function NLG.SetMapName(MapID, FloorID, Name) end

---获取指定地图的名字。
---@param MapID  数值型 目标地图的类型，0为固定地图1为随机地图。
---@param FloorID  数值型 地图编号
---@return string 返回值为0则获取失败，返回值为[字符串]则为地图名称。
function NLG.GetMapName(MapID, FloorID) end

---通过玩家帐号找玩家对象index。
---@param CharIndex  字符串 指定的帐号/Cdkey。
---@return number 返回-1代表失败，其他为指定账号目前在线玩家的对象index。
function NLG.FindUser(CdKey) end

---更新玩家的团队信息。
---@param CharIndex  数值型 目标对象index。
---@return any 
function NLG.UpdateParty(CharIndex) end

---通过Gmsv自身的随机种子取随机数，不用考虑种子的问题，能尽可能确保随机数的随机性。
---@param min  数值型 随机数下限。
---@param max  数值型 随机数上限。
---@return any 返回满足参数的随机数。
function NLG.Rand(min, max) end

---给指定对象（人物、NPC、宠物）头顶赋予图档，只要是游戏客户端拥有的图档均可调用。
---@param CharIndex  数值型 接收公告的对象index，值为-1时给全服在线玩家发送。
---@param HeadGraNo  数值型 头饰的图档ID，客户端的任意图档ID。
---@return any 1表示成功，其他表示失败。
function NLG.SetHeadIcon(CharIndex, HeadGraNo) end

---获取玩家的IP地址。
---@param CharIndex  数值型 目标对象index。
---@return any 对象的IP地址，仅对玩家对象有效
function NLG.GetIp(CharIndex) end

---获取玩家的MAC地址。
---@param CharIndex  数值型 目标对象index。
---@return any 对象的MAC地址，仅对玩家对象有效
function NLG.GetMAC(CharIndex) end

---获取游戏中的当前时间，如中午，黄昏，夜晚，清晨。
---@param 
---@return any 0 ：白天 | 1 ：黄昏 | 2 ：夜晚 | 3 ：清晨
function NLG.GetGameTime() end

---整理玩家背包。
---@param CharIndex  数值型 目标对象index。
---@return any 0为失败，1为成功。
function NLG.SortItem(CharIndex) end

---设置种族伤害
---@param a number 攻击方种族
---@param b number 防御方种族
---@param rate number 伤害比率
---@return any number 伤害比率
function NLG.SetTribeRate(a, b, rate) end

---获取所有玩家，并以table形式返回。
---@param 
---@return number table 玩家index
function NLG.GetPlayer() end

---降低cpu使用
---@param ms number 小于0时关闭，大于或等于0时为Sleep时间，不建议大于2
---@return any 
function NLG.LowCpuUsage(ms) end

---打开银行
---@param npcOrPlayer number npc或者玩家index
---@param player number 玩家index
---@return any 
function NLG.OpenBank(npcOrPlayer, player) end

---模拟崩端
---@param 
---@return any 
function NLG.RaiseCrash() end

---宠物乱射(全局开启)
---@param enable boolean 启用 1 不启用 0
---@return any 
function NLG.SetPetRandomShot(enable) end

---宠物乱射(某种宠物开启)
---@param enable boolean 启用 1 不启用 0
---@param petId number 宠物id（EnemyBaseId）
---@return any 
function NLG.SetPetRandomShot(petId, enable) end

---设置乱敏概率
---@param rate integer 0-100
---@param mode  nil|0|1|2 0 @0=PVE&PVP 1=PVE 2=PVP
---@return any 
function NLG.SetDexRearrangeRate(rate, mode) end

---修改暴击时伤害计算
---@param mode number|boolean 取值： 0 = 普通模式 1 = 倍率模式 2 = 无 true = 普通模式 false = 无
---@param val number 倍率，默认1.5倍
---@return any 
function NLG.SetCriticalDamageAddition(mode, val) end

