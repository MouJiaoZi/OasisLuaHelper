---@meta

---@class FBackpackActivityActorExtendInfo
---@field Tag string
---@field SpaceCheckBounds FVector
FBackpackActivityActorExtendInfo = {}


---@class IActivityActorByItemHandleInterface
IActivityActorByItemHandleInterface = {}

---@param Handle UBackpackActivityActorItemHandle
function IActivityActorByItemHandleInterface:SetItemHandle(Handle) end

---@param PC ASTExtraPlayerController
function IActivityActorByItemHandleInterface:OnStartUse(PC) end

---@param PC ASTExtraPlayerController
function IActivityActorByItemHandleInterface:OnStopUse(PC) end

---@param Target FBattleItemUseTarget
---@param Reason EBattleItemUseReason
function IActivityActorByItemHandleInterface:SetItemUsingInfo(Target, Reason) end


---@class UBackpackActivityActorItemHandle: UBattleItemHandleBase
---@field ActorClass AActor
---@field WrapperClass APickUpWrapperActor
---@field SpaceCheckBounds FVector
---@field ExtendSpaceCheckBounds ULuaArrayHelper<FBackpackActivityActorExtendInfo>
---@field bIgnoreShieldWeapons number
---@field bAddAdditionalDataAfterSpawnWrapper boolean
---@field ContUseTipsID number
---@field PawnStateContUseTipsID number
---@field PawnMovementModeContUseTipsID number
---@field bAutoDestory boolean
---@field DisablePawnstate ULuaArrayHelper<EPawnState>
---@field DisableMovementMode ULuaArrayHelper<EMovementMode>
local UBackpackActivityActorItemHandle = {}

---@param InCount number
---@param Reason EBattleItemDropReason
---@return boolean
function UBackpackActivityActorItemHandle:HandleDrop(InCount, Reason) end

---@param Target FBattleItemUseTarget
---@param Reason EBattleItemUseReason
---@return boolean
function UBackpackActivityActorItemHandle:HandleUse(Target, Reason) end

---@return boolean
function UBackpackActivityActorItemHandle:CheckCanUse() end

---@param TargetDefineID FItemDefineID
---@return boolean
function UBackpackActivityActorItemHandle:HandleUpgrade(TargetDefineID) end

function UBackpackActivityActorItemHandle:AfterUpgrade() end

---@param bConsumeItem boolean
function UBackpackActivityActorItemHandle:OnFinshInteracting(bConsumeItem) end
