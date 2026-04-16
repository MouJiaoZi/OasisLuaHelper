---@meta

---道具系统接口库
---@class UGCItemSystem
UGCItemSystem = {}

---获取物品ItemType
---对应表格数据：和平精英\表格\物品表中ItemType列
---生效范围：服务器&客户端
---@param ItemID number @物品ID
---@return number @物品类型
function UGCItemSystem.GetItemType(ItemID) end

---获取ItemSubType
---对应表格数据：和平精英\表格\物品表中ItemSubType列
---生效范围：服务器&客户端
---@param ItemID number @物品ID
---@return number @物品子类型
function UGCItemSystem.GetItemSubType(ItemID) end

---获取道具数据
---生效范围：服务器&客户端
---@param ItemID number @物品ID
---@return FBattleItem_TabRes @物品数据
function UGCItemSystem.GetItemData(ItemID) end

---是否为绿洲物品（物资编辑器中自定义物品）
---生效范围：服务器&客户端
---@param ItemID number @物品ID
---@return boolean @是否为绿洲物品
function UGCItemSystem.IsUGCItem(ItemID) end

---返回道具在背包中是否可以使用
---生效范围：服务器&客户端
---@param ItemID number @物品ID
---@return boolean @是否可以使用
function UGCItemSystem.IsCanUseInBackpack(ItemID) end

---通过ItemID获取Wrapper路径
---生效范围：服务器
---@param ItemID number @物品ID
---@return string @Wrapper路径
function UGCItemSystem.GetPickupWrapperClassPath(ItemID) end

---将Wrapper设置贴在地面
---Wrapper.bDropedByPlayer为True时，贴地功能生效
---生效范围：服务器
---@param WrapperActor APickUpWrapperActor @可拾取物
---@return boolean
function UGCItemSystem.SetWrapperToGround(WrapperActor) end

---获取Wrapper关联的ItemID
---生效范围：服务器&客户端
---@param WrapperActor APickUpWrapperActor @可拾取物
---@return number @物品ID
function UGCItemSystem.GetWrapperItemID(WrapperActor) end

---修改Wrpaaer中物品的数量
---生效范围：服务器
---@param WrapperActor APickUpWrapperActor @可拾取物
---@param Count number @修改后的数量
---@return boolean
function UGCItemSystem.ModifyWrapperItemCount(WrapperActor, Count) end

---拾取Wrapper
---生效范围：服务器&客户端
---@param PlayerPawn PlayerPawn
---@param WrapperActor APickUpWrapperActor @可拾取物
---@return boolean
function UGCItemSystem.DoPickWrapper(PlayerPawn, WrapperActor) end

---Wrapper是否是由玩家丢弃生成
---生效范围：服务器&客户端
---@param WrapperActor APickUpWrapperActor @可拾取物
---@return boolean
function UGCItemSystem.IsWrapperDropedByPlayer(WrapperActor) end

---设置Wrapper的可拾取范围
---生效范围：服务器
---@param WrapperActor APickUpWrapperActor @可拾取物
---@param Radius number @可拾取范围，单位厘米
---@return boolean
function UGCItemSystem.SetWrapperPickUpRadius(WrapperActor, Radius) end

---获取品质色的128*128纹理路径
---生效范围：服务器&客户端
---@param QualityRank number @品质等级
---@return string @品质纹理路径
function UGCItemSystem.GetQualityTexturePath(QualityRank) end

---获取品质色的128*256纹理路径
---生效范围：服务器&客户端
---@param QualityRank number @品质等级
---@return string @品质纹理路径string
function UGCItemSystem.GetBigQualityTexturePath(QualityRank) end

---获取品质色条纹理路径
---生效范围：服务器&客户端
---@param QualityRank number @品质等级
---@return string @品质纹理路径string
function UGCItemSystem.GetQualityBarTexturePath(QualityRank) end