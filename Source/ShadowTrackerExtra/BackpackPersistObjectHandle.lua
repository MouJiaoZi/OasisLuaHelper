---@meta

---@class IPersistObjectHandleInterface
IPersistObjectHandleInterface = {}

---@param Handle UBackpackPersistObjectHandle
function IPersistObjectHandleInterface:SetPersistHandle(Handle) end

---@param PC ASTExtraPlayerController
function IPersistObjectHandleInterface:OnStartUse(PC) end

---@param PC ASTExtraPlayerController
function IPersistObjectHandleInterface:OnStopUse(PC) end


---@class UBackpackPersistObjectHandle: UBattleItemHandleBase
---@field PersistEffectClass UPersistEffectBase
---@field CantPossessState ULuaArrayHelper<EPawnState>
---@field CantDynamicState FGameplayTagContainer
---@field bAutoDestory boolean
---@field bOnlyOnePersistAllowed boolean
---@field SpaceCheckBounds FVector
---@field LocationOffset FVector
---@field CantUseTipsID number
---@field CantUseStateTipsID number
---@field HandleUseCD number
---@field HandleInCDTipsID number
---@field CDNeedShowInGrenade boolean
---@field CDNeedShowInBackPack boolean
---@field bManualTriggerCD boolean
---@field NeedTransAdditionalData boolean
---@field bForceDisuseItem boolean
---@field WrapperPutdownTrans FTransform
---@field WrapperClass APickUpWrapperActor
---@field HandleLastUseTime number
---@field LastUseAdditionalName string
---@field CachedHandleCD number
local UBackpackPersistObjectHandle = {}

---@param InCount number
---@param Reason EBattleItemDropReason
---@return boolean
function UBackpackPersistObjectHandle:HandleDrop(InCount, Reason) end

---@param Target FBattleItemUseTarget
---@param Reason EBattleItemUseReason
---@return boolean
function UBackpackPersistObjectHandle:HandleUse(Target, Reason) end

---@param Reason EBattleItemDisuseReason
---@return boolean
function UBackpackPersistObjectHandle:HandleDisuse(Reason) end

---@param ItemContainer IItemContainerInterface
---@param PickupInfo FBattleItemPickupInfo
---@param Reason EBattleItemPickupReason
---@return boolean
function UBackpackPersistObjectHandle:HandlePickup(ItemContainer, PickupInfo, Reason) end

---@return boolean
function UBackpackPersistObjectHandle:CheckCanUse() end

---@return boolean
function UBackpackPersistObjectHandle:IsRestoreEquippingOnSwitchDS() end

---@return boolean
function UBackpackPersistObjectHandle:HandleUse_Inner() end

---@return FBattleItemData
function UBackpackPersistObjectHandle:ExtractItemData() end

---@return boolean
function UBackpackPersistObjectHandle:CheckCollison() end

---@return number
function UBackpackPersistObjectHandle:GetServerTime() end

---@param Buff UPersistEffectBase
function UBackpackPersistObjectHandle:DisuseWithHandle(Buff) end

function UBackpackPersistObjectHandle:SetHandleCDAdditionalData() end

---@param NewCD number
---@param IsVaildNextUse boolean
function UBackpackPersistObjectHandle:ResetHandleCD(NewCD, IsVaildNextUse) end

---@param bConusmeItem boolean
function UBackpackPersistObjectHandle:OnFinishApplyed(bConusmeItem) end

function UBackpackPersistObjectHandle:StartHandleCD() end

---@return boolean
function UBackpackPersistObjectHandle:HasApplyedEffect() end
