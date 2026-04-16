---@meta

---添加物品来源
---@class EVirtualItemAddItemSource
---@field Custom number @调用Add接口添加
---@field Buy number @商业化（绿洲币）购买
---@field Compensate number @补偿
---@field Redeem number @兑换
---@field Mail number @邮件领取
EVirtualItemAddItemSource = {}


---UGC虚拟物品全局管理器
---@class VirtualItemManager:AUGCGamePartGlobalActor
local VirtualItemManager = {}

---生效范围：客户端
---虚拟物品数量发生变化时触发
VirtualItemManager.OnVirtualItemNumUpdatedDelegate = nil

---生效范围：客户端
---物品数量（包括背包物品）发生变化时触发
VirtualItemManager.OnItemNumUpdatedDelegate = nil

---虚拟物品添加物品结果
---@class VirtualItemAddItemResult
---@field bSucceeded bool @是否添加成功
---@field PlayerKey int @添加玩家的PlayerKey
---@field ItemList table @添加的物品列表，以[ItemID]=Number为形式的table
---@field RequestMark string @发起添加物品请求的标记，可以用于区分调用添加虚拟物品的发起方
---@field Source EVirtualItemAddItemSource @添加物品的来源
local VirtualItemAddItemResult = {}

---虚拟物品移除物品结果
---@class VirtualItemRemoveItemResult
---@field bSucceeded bool @是否添加成功
---@field PlayerKey int @添加玩家的PlayerKey
---@field ItemID int @移除物品的物品ID
---@field Num int @移除物品的数量
local VirtualItemRemoveItemResult = {}

---虚拟物品转移结果
---@class VirtualItemTransferResult
---@field bSucceeded bool @是否添加成功
---@field PlayerKey int @添加玩家的PlayerKey
---@field ItemID int @转移的物品ID
---@field Transferred int @转移的物品数量
---@field Remained int @剩余的物品数量
local VirtualItemTransferResult = {}

---添加物品后触发
---生效范围：客户端&&服务器
---@param Result VirtualItemAddItemResult @添加结果
VirtualItemManager.AddItemResultDelegate = nil

---移除物品后触发
---生效范围：客户端&&服务器
---@param Result VirtualItemRemoveItemResult @移除结果
VirtualItemManager.RemoveItemResultDelegate = nil

---转移虚拟物品到背包时触发
---生效范围：客户端&&服务器
---@param Result VirtualItemTransferResult @转移结果
VirtualItemManager.TransferToBackpackResultDelegate = nil

---表格配置数据加载好时触发
---生效范围：客户端&&服务器
VirtualItemManager.TableDataReadyDelegate = nil

---添加多种虚拟物品
---生效范围：服务端
---@param PlayerController UUGCPlayerController @玩家控制器
---@param ItemList table @物品列表，key为物品ID，value为数量
---@param RequestMark string @发起请求标记。会传回AddItemResultDelegate的Result中，可以省略
---@return boolean @是否添加成功
function VirtualItemManager:AddVirtualItems(PlayerController, ItemList, RequestMark) end

---添加虚拟物品 
---生效范围：服务端
---@param PlayerController UUGCPlayerController @玩家控制器
---@param ItemID number @虚拟物品ID
---@param Num number @添加的物品数量
---@param RequestMark string @发起请求标记。会传回AddItemResultDelegate的Result中，可以省略
---@return boolean @是否添加成功
function VirtualItemManager:AddVirtualItem(PlayerController, ItemID, Num, RequestMark) end

---移除虚拟物品 
---生效范围：服务端
---@param PlayerController UUGCPlayerController @玩家控制器
---@param ItemID number @虚拟物品ID
---@param Num number @移除的物品数量
---@param Callback Delegate @回调，可不传参
function VirtualItemManager:RemoveVirtualItem(PlayerController, ItemID, Num, Callback) end

---移除虚拟物品，如果物品配置了到背包的映射，则只以背包中的数量为准
---生效范围：服务端
---@param PlayerController UUGCPlayerController @玩家控制器
---@param ItemID number @虚拟物品ID
---@param Num number @移除的物品数量
---@param Callback Delegate|function @回调，可不传参
function VirtualItemManager:RemoveItem(PlayerController, ItemID, Num, Callback) end

--- 获取虚拟物品数量（不包含已转移背包的数量）
--- 生效范围：客户端&&服务器
---@param ItemID number @物品ID
---@param PlayerController UUGCPlayerController @玩家控制器，客户端调用可以不传参，即默认主控玩家控制器
---@return number
function VirtualItemManager:GetVirtualItemNum(ItemID, PlayerController) end

--- 获取虚拟物品数量（包括已转移到背包的物品）
--- 生效范围：客户端&&服务器
---@param ItemID number @物品ID
---@param PlayerController UUGCPlayerController @玩家控制器，客户端调用可以不传参，即默认主控玩家控制器
---@return number
function VirtualItemManager:GetItemNum(ItemID, PlayerController) end

--- 获取非绿洲币购买的物品数量
--- 生效范围：客户端&&服务器
---@param ItemID number @物品ID
---@param PlayerController UUGCPlayerController @玩家控制器，客户端调用可以不传参，即默认主控玩家控制器
---@return number
function VirtualItemManager:GetFreeItemNum(ItemID, PlayerController) end

--- 获取绿洲币购买的物品数量
--- 生效范围：客户端&&服务器
---@param ItemID number @物品ID
---@param PlayerController UUGCPlayerController @玩家控制器，客户端调用可以不传参，即默认主控玩家控制器
---@return number
function VirtualItemManager:GetOasisItemNum(ItemID, PlayerController) end

--- 获取已映射到背包的物品数量
--- 生效范围：客户端&&服务器
---@param ItemID number @物品ID
---@param PlayerController UUGCPlayerController @玩家控制器，客户端调用可以不传参，即默认主控玩家控制器
---@return number
function VirtualItemManager:GetMappedItemNum(ItemID, PlayerController) end

--- 将虚拟物品转移到背包（需配置映射表UGCObjectMapping）
--- 生效范围：服务器
---@param PlayerController PlayerController @玩家控制器
---@param ItemID number @物品ID
---@param ItemNum number @数量, 不传则默认全部转移
---@param bPartial boolean @是否在背包空间不足时部分转移, 默认false
function VirtualItemManager:TransferToBackpack(PlayerController, ItemID, ItemNum, bPartial) end

--- 获取所有虚拟物品ID的信息
--- 生效范围：客户端&&服务器
---@return table
function VirtualItemManager:GetItemDatas() end

--- 获取虚拟物品ID的信息
--- 生效范围：客户端&&服务器
---@param ItemID number
---@return table @如果没有对应的值则返回nil
function VirtualItemManager:GetItemData(ItemID) end

---【废弃】请使用 GetMappedItemID
--- 获取经典物品ID
--- 生效范围：客户端&&服务器
---@param ItemID number @虚拟物品ID
---@return number @如果没有对应的值则返回nil
function VirtualItemManager:GetClassicItemID(ItemID) end

--- 获取虚拟物品ID对应的背包物品ID
--- 生效范围：客户端&&服务器
---@param ItemID number @虚拟物品ID
---@return number @背包物品ID，如果没有配置虚拟物品ID到UGCObjectMapping表中，则返回nil
function VirtualItemManager:GetMappedItemID(ItemID) end

--- 获取所有经典物品ID到虚拟物品ID映射数据
--- 生效范围：客户端&&服务器
---@return table
function VirtualItemManager:GetReverseMappingDatas() end

--- 获取是否已启用虚拟物品到背包物品的映射
--- 生效范围：客户端&&服务器
---@return boolean
function VirtualItemManager:GetIsEnableMappingItem() end

--- 获取虚拟物品ID
--- 生效范围：客户端&&服务器
---@param ClassicItemID number @经典物品ID
---@return number @如果没有对应的值则返回nil
function VirtualItemManager:GetVirtualItemID(ClassicItemID) end

--- 获取所有已持有的虚拟物品
--- 生效范围：客户端&&服务器
---@param PlayerController UUGCPlayerController @玩家控制器，客户端调用可以不传参，即默认主控玩家控制器
---@return table
function VirtualItemManager:GetOwnedVirtualItems(PlayerController) end

--- 获取所有已持有的物品（包括已映射到背包的经典物品）
--- 生效范围：客户端&&服务器
---@param PlayerController UUGCPlayerController @玩家控制器，客户端调用可以不传参，即默认主控玩家控制器
---@return table
function VirtualItemManager:GetOwnedItems(PlayerController) end

--- 获取未转移到背包的物品
--- 生效范围：客户端&&服务器
---@param PlayerController UUGCPlayerController @玩家控制器，客户端调用可以不传参，即默认主控玩家控制器
---@return table
function VirtualItemManager:GetUntransferredItems(PlayerController) end

---设置是否开启自动转移背包
---生效范围：服务器
---@param bActive boolean @是否开启自动转移
function VirtualItemManager:SetAutoTransferActive(bActive) end

---设置是否显示获得物品弹窗
---如果在已显示弹窗后设置为不显示，则在当前所有弹窗显示结束后再生效
---@param bShow bool @是否显示
function VirtualItemManager:SetGetItemUIActive(bShow) end