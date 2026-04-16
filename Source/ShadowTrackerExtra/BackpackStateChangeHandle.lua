---@meta

---@class FStateChangeHandleInfo
---@field DuringTime number
---@field SkinID number
---@field LinkID number
FStateChangeHandleInfo = {}


---@class UBackpackStateChangeHandle: UBattleItemHandleBase
---@field StateInfos ULuaMapHelper<number, FStateChangeHandleInfo>
---@field AdditionalData_StateInfo string
---@field AdditionalData_TimeInfo string
---@field AdditionalData_AvatarInfo string
---@field EnterStateID number
---@field AllowedThreshold number
---@field CurrentState number
---@field CurrentStateEndTime number
---@field CurrentStateLastTime number
---@field StateTimeHandle FTimerHandle
---@field WrapperClass APickUpWrapperActor
---@field NeedTransAdditionalData boolean
local UBackpackStateChangeHandle = {}

---@param InCount number
---@param Reason EBattleItemDropReason
---@return boolean
function UBackpackStateChangeHandle:HandleDrop(InCount, Reason) end

---@param Target FBattleItemUseTarget
---@param Reason EBattleItemUseReason
---@return boolean
function UBackpackStateChangeHandle:HandleUse(Target, Reason) end

---@param Reason EBattleItemDisuseReason
---@return boolean
function UBackpackStateChangeHandle:HandleDisuse(Reason) end

---@param ItemContainer IItemContainerInterface
---@param PickupInfo FBattleItemPickupInfo
---@param Reason EBattleItemPickupReason
---@return boolean
function UBackpackStateChangeHandle:HandlePickup(ItemContainer, PickupInfo, Reason) end

---@return FBattleItemData
function UBackpackStateChangeHandle:ExtractItemData() end

---@param UseWrapperData boolean
function UBackpackStateChangeHandle:SetAdditionalData(UseWrapperData) end

function UBackpackStateChangeHandle:SetStateTimer() end

function UBackpackStateChangeHandle:OnHandleStateChange() end

---@param StateID number
function UBackpackStateChangeHandle:JumptoState(StateID) end

---@return number
function UBackpackStateChangeHandle:GetServerTime() end
