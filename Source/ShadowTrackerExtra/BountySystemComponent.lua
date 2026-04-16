---@meta

---@class FBountyIncreaseStageItem
---@field StageStartTime number
---@field StageEndTime number
---@field IncreaseStepInterval number
---@field IncreaseCount number
FBountyIncreaseStageItem = {}


---@class FBountyBuyingItemLimit
---@field MaxBuyCount number
---@field CostBounty number
---@field ItemDefineID number
---@field ItemUnitCount number
---@field bEnableItemBuyLimit boolean
---@field bValidItemLimit boolean
FBountyBuyingItemLimit = {}


---@class UBountySystemComponent: UGameModeBaseComponent
---@field BountyID number
---@field SalaryBountyNotifyMsgID number
---@field BountyIncreaseStageList ULuaArrayHelper<FBountyIncreaseStageItem>
---@field AutoEquipItemTypeList ULuaArrayHelper<number>
---@field BountyIncreaseTimerHandle FTimerHandle
---@field BuyingItemLimit FBountyBuyingItemLimit
---@field bFetchItemBuyLimitEx boolean
local UBountySystemComponent = {}

function UBountySystemComponent:OnGameEnterFight() end

function UBountySystemComponent:OnGameEnterFinish() end

---@param InTargetController APlayerController
---@param InBuyingInfo FBountyBuyingInfo
function UBountySystemComponent:TriggerPlayerBountyBuying(InTargetController, InBuyingInfo) end

---@param InItemID number
function UBountySystemComponent:FetchItemBuyLimit(InItemID) end

---@param InTargetController APlayerController
---@param InItemID number
function UBountySystemComponent:FetchItemBuyLimitEx(InTargetController, InItemID) end

---@param PlayerKey number
---@return number
function UBountySystemComponent:GetPlayerBountyNum(PlayerKey) end

---@param InPlayerKey number
---@param InPickupItemID number
---@param InPickupType number
---@param InPickupCount number
function UBountySystemComponent:TriggerPickupEvent(InPlayerKey, InPickupItemID, InPickupType, InPickupCount) end

function UBountySystemComponent:UpdateBounty() end
