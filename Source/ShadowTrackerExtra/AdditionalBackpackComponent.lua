---@meta

---@class UPickupAdditionalBackpackSource: UObject
---@field bDroppedByPlayer boolean
local UPickupAdditionalBackpackSource = {}


---@class UAdditionalBackpackComponent: UActorComponent
---@field CannotToMainBackpackPawnStates ULuaArrayHelper<EPawnState>
---@field CannotToMainBackpackDynamicPawnStates ULuaArrayHelper<FGameplayTag>
---@field WrapperPutDownTrans FTransform
---@field CannotDropToWorldPawnStates ULuaArrayHelper<EPawnState>
---@field CannotDropToWorldDynamicPawnStates ULuaArrayHelper<FGameplayTag>
---@field HandleClass UAdditionalBackpackHandleComponent
---@field Handles ULuaArrayHelper<UAdditionalBackpackHandleComponent> @当前正在显示该背包按钮的所有玩家的 Handle 组件
---@field Items ULuaArrayHelper<FPickUpItemData> @背包内所有物品
---@field InstanceID number @背包内物品唯一 ID
---@field Capacity number @背包容量
---@field Weight number @背包内物品重量
---@field TombBoxName string @死亡盒名称
---@field CannotAddTipsID number @无法继续添加 TipsID
---@field InteractDistance number
local UAdditionalBackpackComponent = {}

---检查是否允许拾取
---@param PickupReason EAdditionalBackpackItemPickupReason
---@return boolean
function UAdditionalBackpackComponent:CheckAllowPickup(PickupReason) end

---@param PickupReason EAdditionalBackpackItemPickupReason
---@return boolean
function UAdditionalBackpackComponent:BP_CheckAllowPickup(PickupReason) end

---检查是否允许丢弃
---@param DropReason EAdditionalBackpackItemDropReason
---@return boolean
function UAdditionalBackpackComponent:CheckAllowDrop(DropReason) end

---@param DropReason EAdditionalBackpackItemDropReason
---@return boolean
function UAdditionalBackpackComponent:BP_CheckAllowDrop(DropReason) end

---从主背包掉落至本背包
---@param BackpackComponent UBackpackComponent
---@param ItemID FItemDefineID
---@param Count number
---@param PickupReason EAdditionalBackpackItemPickupReason
---@return boolean
function UAdditionalBackpackComponent:FromMainBackpack(BackpackComponent, ItemID, Count, PickupReason) end

---从本背包掉落至主背包
---@param BackpackComponent UBackpackComponent
---@param ItemID FItemDefineID
---@param Count number
---@param bAutoEquip boolean
---@param AutoEquipTarget FBattleItemUseTarget
---@param bSaveToSafetyBox boolean
---@param bShouldReplace boolean
---@param BeReplaceDefineID FItemDefineID
---@param DropReason EAdditionalBackpackItemDropReason
---@return boolean
function UAdditionalBackpackComponent:ToMainBackpack(BackpackComponent, ItemID, Count, bAutoEquip, AutoEquipTarget, bSaveToSafetyBox, bShouldReplace, BeReplaceDefineID, DropReason) end

---从可拾取物添加到本背包
---@param BackpackComponent UBackpackComponent
---@param ItemID FItemDefineID
---@param PickupInfo FBattleItemPickupInfo
---@param PickupReason EAdditionalBackpackItemPickupReason
---@return number
function UAdditionalBackpackComponent:FromWorld(BackpackComponent, ItemID, PickupInfo, PickupReason) end

---@param DefineID FItemDefineID
---@param Count number
---@param GenerateReason EGenerateItemReason
---@param bTotalStatistics boolean
function UAdditionalBackpackComponent:RegisterItem(DefineID, Count, GenerateReason, bTotalStatistics) end

---是否可以从本背包放回主背包
---@param OperatorCharacter ASTExtraBaseCharacter
---@param ItemID FItemDefineID
---@return boolean
function UAdditionalBackpackComponent:CanToMainBackpack(OperatorCharacter, ItemID) end

---从本背包掉落至世界
---@param PC ASTExtraPlayerController
---@param ItemID FItemDefineID
---@param Count number
---@param DropReason EAdditionalBackpackItemDropReason
---@return boolean
function UAdditionalBackpackComponent:ToWorld(PC, ItemID, Count, DropReason) end

---是否可以从本背包掉落至世界
---@param OperatorCharacter ASTExtraBaseCharacter
---@param ItemID FItemDefineID
---@return boolean
function UAdditionalBackpackComponent:CanDropItemToWorld(OperatorCharacter, ItemID) end

---通用人物状态检查：遍历 PawnStates 和 DynamicPawnStates，若角色处于其中任一状态则返回 false
---@param Character ASTExtraBaseCharacter
---@param PawnStates ULuaArrayHelper<EPawnState>
---@param DynamicPawnStates ULuaArrayHelper<FGameplayTag>
---@return boolean
function UAdditionalBackpackComponent:CheckPawnStateAllowed(Character, PawnStates, DynamicPawnStates) end

---@return number
function UAdditionalBackpackComponent:GenerateInstanceID() end

---@param InDamageCauser ASTExtraBaseCharacter
---@param InDeadPlayer ASTExtraBaseCharacter
---@param InDamageEvent FDamageEvent
---@param InDefaultItemList ULuaArrayHelper<FPickUpItemData>
function UAdditionalBackpackComponent:CollectPlayerTombBoxDropWrapperList(InDamageCauser, InDeadPlayer, InDamageEvent, InDefaultItemList) end
