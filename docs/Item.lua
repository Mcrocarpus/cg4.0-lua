---@alias 字符串 string
---@alias 数值型 number
---获取道具对象index的指定信息。
---@param ItemIndex  数值型 目标的 道具index。
---@param Dataline  数值型 说指定的对象实例信息栏位，具体栏位常量请查看附录。
---@return any 指定信息栏位的值
function Item.GetData(ItemIndex,Dataline) end

---设置道具对象index的指定信息。
---@param CharIndex  数值型 目标的 道具对象index。
---@param Dataline  数值型 说指定的对象实例信息栏位，具体栏位常量请查看附录。
---@param Data  数值型 或 字符串 新的值
---@return any 0为失败，1为成功。
function Item.SetData(ItemIndex,Dataline,Data) end

---发送更新道具的封包给关联的玩家。
---@param CharIndex  数值型 目标对象index。
---@param Slot  数值型 指定背包的位置，如果为-1则遍历所有的道具。
---@return any 
function Item.UpItem(CharIndex, Slot) end

---删除道具并且发送封包通知玩家。
---@param CharIndex  数值型 目标对象index。
---@param ItemIndex  数值型 目标道具index。
---@param Slot  数值型 指定背包的位置。
---@return number 道具删除成功返回1,失败返回0或负数。
function Item.Kill(CharIndex, ItemIndex, Slot) end

---创建新的道具类型
---@param type number 道具类型编号
---@param name string 道具类型名称
---@param defaultImage number 未鉴定时图档
---@param place number 装备位置
---@param flags number 武器类型。1-普通武器，2-弓，4-小刀，8-回力镖，255-所有武器，投掷类武器=2+4+8=14
---@return any 
function Item.CreateNewItemType(type, name, defaultImage, place, flags)) end

---获得新得道具类型信息
---@param type number 道具类型编号
---@return any number, type, number, number, number	由CreateNewItemType输入的type, name, place, defaultImage, flags
function Item.GetNewItemType(type) end

---获取扩展自定义物品类别职业装备等级
---@param job number 职业ID
---@param type number 道具类型
---@return any 该物品类别的职业装备等级
function Item.GetItemTypeEquipLevelForJob(job, type) end

---扩展自定义物品类别职业装备等级
---@param job number 职业ID
---@param type number 道具类型
---@param level number 职业装备等级
---@return any 
function Item.SetItemTypeEquipLevelForJob(job, type, level) end

---获取道具的userdata
---@param ItemIndex number 道具index
---@return any 道具的userdata
function Item.GetCharPointer(ItemIndex) end

---定义道具的userdata
---@param ItemIndex number 道具index
---@param val userdata 
---@return any 
function Item.SetCharPointer(ItemIndex, val) end

---移除道具的userdata
---@param ItemIndex number 道具index
---@return any 道具的userdata
function Item.RemoveCharPointer(ItemIndex) end

---获取itemId的名字
---@param itemId number 道具id
---@return any string 道具名
function Item.GetNameFromNumber(ItemId) end

---删除道具
---@param ItemIndex number 道具index
---@return any 
function Item.UnlinkItem(ItemIndex) end

---判断道具是否是武器
---@param ItemIndex number 道具index
---@return any 
function Item.IsWeaponType(ItemIndex) end

---制作新物品，新物品是无主物品
---@param itemId number 道具id
---@return number number 返回道具itemindex
function Item.MakeItem(itemId) end

