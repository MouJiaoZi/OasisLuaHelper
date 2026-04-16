---@meta

---拾取物物品数据
---@class FUGCPickupItemData
---@field ItemDefineID FItemDefineID @物品 DefineID
---@field ItemCount number @物品数量
FUGCPickupItemData = {}


---基于策划需求定义的 UGC2.0 物品接口
---@class UItemUtilsV2: UBlueprintFunctionLibrary
local UItemUtilsV2 = {}

function UItemUtilsV2:RemoveItemInstanceDataManager() end

function UItemUtilsV2:RemovePickupWrapperActorManager() end

---获取物品等级，还原头包甲需要 DS、Client 可调用
---@param ItemID number
---@return number
function UItemUtilsV2:GetItemLevel(ItemID) end

---获取物品图标 DS、Client 可调用
---@param ItemID number
---@return FSoftObjectPath
function UItemUtilsV2:GetItemIconTextureV2(ItemID) end

---获取物品图标(优先商业化皮肤) DS、Client 可调用
---@param ItemID number
---@param PC ASTExtraPlayerController
---@return FSoftObjectPath
function UItemUtilsV2:GetItemIconWithPlayerSkinV2(ItemID, PC) end

---获取物品剪影图标 DS、Client 可调用
---@param ItemID number
---@return FSoftObjectPath
function UItemUtilsV2:GetWhiteIconTextureV2(ItemID) end

---获取物品装备栏图标 DS、Client 可调用
---@param ItemID number
---@return FSoftObjectPath
function UItemUtilsV2:GetBigIconTextureV2(ItemID) end

---@param ItemID number
---@param PC ASTExtraPlayerController
---@return FSoftObjectPath
function UItemUtilsV2:GetBigIconTextureWithPlayerSkinV2(ItemID, PC) end

---获取物品详情 DS、Client 可调用
---@param ItemID number
---@return string
function UItemUtilsV2:GetItemDetailV2(ItemID) end

---获取物品SubType DS、Client 可调用
---@param ItemID number
---@return number
function UItemUtilsV2:GetItemSubTypeV2(ItemID) end

---获取物品拾取描述 DS、Client 可调用
---@param ItemID number
---@return string
function UItemUtilsV2:GetItemPickupDetailV2(ItemID) end

---获取物品背包简写 DS、Client 可调用
---@param ItemID number
---@return string
function UItemUtilsV2:GetBackpackSimpleV2(ItemID) end

---物品是否含有某个 Tag DS、Client 可调用
---@param ItemID number
---@param Tag string
---@return boolean
function UItemUtilsV2:ItemHasTagV2(ItemID, Tag) end

---获取物品的所有 Tag DS、Client 可调用
---@param ItemID number
function UItemUtilsV2:GetItemTagsV2(ItemID) end

---获取物品是否可丢弃(生成可拾取物) DS、Client 可调用
---@param ItemID number
---@return boolean
function UItemUtilsV2:ItemCanDropV2(ItemID) end

---获取物品是否可移除(不生成可拾取物) DS、Client 可调用
---@param ItemID number
---@return boolean
function UItemUtilsV2:ItemCanRemoveV2(ItemID) end

---获取物品是否可使用 DS、Client 可调用
---@param ItemID number
---@return boolean
function UItemUtilsV2:ItemCanUseV2(ItemID) end

---获取物品最大堆叠数量 DS、Client 可调用
---@param ItemID number
---@return number
function UItemUtilsV2:GetItemMaxNumberOfStacksV2(ItemID) end

---获取物品品质 DS、Client 可调用
---@param ItemID number
---@return number
function UItemUtilsV2:GetItemQualityV2(ItemID) end

---获取物品自定义类型 DS、Client 可调用
---@param ItemID number
---@return string
function UItemUtilsV2:GetItemCustomizedTypeV2(ItemID) end

---获取物品拾取物模型路径 DS、Client 可调用
---@param ItemID number
---@return string
function UItemUtilsV2:GetPickupWrapperMeshPath(ItemID) end

---获取物品拾取物模型偏移 DS、Client 可调用
---@param ItemID number
---@return FTransform
function UItemUtilsV2:GetPickupWrapperMeshTransformOffset(ItemID) end

---获取物品拾取物是否持久化 DS、Client 可调用
---@param ItemID number
---@return boolean
function UItemUtilsV2:GetItemShouldPersist(ItemID) end

---生成一个新的物品实例ID DS、Client 可调用
---@return number
function UItemUtilsV2:GenerateItemInstanceID() end

---@param LuaState FLuaState
---@param ParamIndex number
---@return number
function UItemUtilsV2:SetItemCustomData_LuaExtd(LuaState, ParamIndex) end

---@param ItemID number
---@return FItemDefineID
function UItemUtilsV2:GetItemDefineID(ItemID) end

---@param ItemDefineID FItemDefineID
---@param Reason number
function UItemUtilsV2:SetItemCommonReason(ItemDefineID, Reason) end

---@param ItemDefineID FItemDefineID
---@return number
function UItemUtilsV2:GetItemCommonReason(ItemDefineID) end

---获取装备物品拥有的槽位列表 DS、Client 可调用
---@param ItemID number
function UItemUtilsV2:GetEquipTargetSlots(ItemID) end

---获取物品槽位的展示名称 DS、Client 可调用
---@param ItemID number
---@param SlotName string
---@return string
function UItemUtilsV2:GetDisplayNameBySlotName(ItemID, SlotName) end

---@param Tag FGameplayTag
---@return string
function UItemUtilsV2:ConvertGameplayTagToString(Tag) end

---获取物品 Attach 在哪个物品上 DS、Client 可调用
---@param ItemDefineID FItemDefineID
---@param AttachParentID FItemDefineID
---@param AttachSlot string
---@return boolean
function UItemUtilsV2:GetAttachTargetItem(ItemDefineID, AttachParentID, AttachSlot) end

---获取子物品可以 Attach 到父物品的哪个 Slot（根据物品配置判断）(不考虑启用状态) DS、Client 可调用
---@param AttachParentID number
---@param AttachChildID number
function UItemUtilsV2:GetAttachAllowSlots(AttachParentID, AttachChildID) end

---获取子物品可以 Attach 到父物品的哪个 Slot（根据物品配置判断）(考虑槽位启用状态) DS、Client 可调用
---@param AttachParentHandle IUGCItemEquipTargetInterface
---@param AttachChildID number
function UItemUtilsV2:GetAttachAllowSlotsByInstance(AttachParentHandle, AttachChildID) end

---获取一个合适的 Attach 槽位(考虑槽位启用状态) 会
---@param ItemID number
---@param AttachParentHandle IUGCItemEquipTargetInterface
---@param MustEmpty boolean
---@return string
function UItemUtilsV2:GetSuitableAttachSlot(ItemID, AttachParentHandle, MustEmpty) end

---@param Character ASTExtraBaseCharacter
function UItemUtilsV2:FindAllNearPickupItemData(Character) end

---@param Character ASTExtraBaseCharacter
---@param TargetWrapper AActor
---@param ItemDefineID FItemDefineID
---@param PickupCount number
---@param CheckPickupCondition boolean
function UItemUtilsV2:TryPickupWrapperItem(Character, TargetWrapper, ItemDefineID, PickupCount, CheckPickupCondition) end

---@return string
function UItemUtilsV2:DebugPickupWrapperActorManagerInfo() end

---@param WorldContextObject UObject
---@param Center FVector
---@param DistanceRange number
function UItemUtilsV2:FindPickupWrapperActorByRange(WorldContextObject, Center, DistanceRange) end
