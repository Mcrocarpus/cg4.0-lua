---@meta _

---怪物显血（文字）
function cg.DisplayEnemyInfo() end

---快速切图
function cg.SimplyWarp() end

---设置战斗输入指令的时间
---@param time number 输入指令的时间，单位毫秒
function cg.SetBattleActionTime(time) end

---设置自动战斗等待时间
---@param time number 自动战斗等待时间，单位毫秒
function cg.SetAutoBattleDelayTime(time) end

---设置制作、采集的等待时间
---@param percent number 等待时间，百分比，50为原等待时间的50%
function cg.SetActionTime(percent) end

---播放指定音效
---@param seNo  number se音效index
function Audio.PlaySe(seNo) end

---在指定位置显示文字
---@param dispPrio  number 显示优先级，0最低，255最高
---@param str  string 文字内容
---@param x  number 像素点横坐标
---@param y  number 像素点纵坐标
---@param size  number 字体大小
---@param color  number 字体颜色
---@param space  number 字体间隔
function Font.DrawFont(dispPrio, str, x, y, size, color, space) end

---在聊天框里显示文字
---@param str  string 文字内容
---@param size  number 字体大小
---@param color  number 字体颜色function Font.DrawChatLine(str, color, size) end
function Font.DrawChatLine(str, size, color) end

---在指定位置显示图片
---@param x  number 像素点横坐标
---@param y  number 像素点纵坐标
---@param dispPrio  number 显示优先级，0最低，255最高
---@param bmpNo  number 图档号
function Image.DrawImage(x, y, dispPrio, bmpNo) end

---在指定位置显示选择框
---@param x1  number 左上角像素点横坐标
---@param y1  number 左上角像素点纵坐标
---@param x2  number 右下角像素点横坐标
---@param y2  number 右下角像素点纵坐标
---@param dispPrio  number 显示优先级，0最低，255最高
function Image.DrawHitBox(x1, y1, x2, y2, dispPrio) end

---获得鼠标当前状态
---@return number 
function Mouse.GetMouseOnceState() end

---获得鼠标当前未知
---@return number @x坐标
---@return number @y坐标
function Mouse.GetMousePos() end

---创建一个游戏进行时自动触发的Lua函数, 非战斗等状态
---[@group NL.RegGaming]
---@param Dofile?  string 要加载的脚本文件名，如果为当前文件，则定义nil即可(暂不生效)
---@param InitFuncName  string 触发的Lua函数的名称，该函数的申明格式请参考[LoginEventCallBack]
function NL.RegGaming(Dofile, InitFuncName) end

---Gaming的回调函数
---[@group NL.RegGaming]
function GamingCallBack() end

---创建一个指接受CLTLUA封包头后触发的函数
---[@group Protocol.OnRecv]
---@param Dofile?  string 要加载的脚本文件名，如果为当前文件，则定义nil即可
---@param FuncName  string 触发的Lua函数的名称，该函数的申明格式请参考[OnRecvCallBack]
function Protocol.OnRecv(Dofile, FuncName) end

---OnRecv的回调函数
---[@group Protocol.OnRecv]
---@param Head  string 封包头 CLTLUA
---@param Packet  string 封包内容
function OnRecvCallBack(Head, Packet) end

---向服务器发送封包，仅支持CLTLUA封包头
---@param str  string 目标的 封包内容，不需要添加CLTLUA封包头
function Protocol.SendToServer(str) end


