---@meta

---@class UUGCBountySystemComponent: UGameModeBaseComponent
---@field BountyID number
---@field SalaryBountyNotifyMsgID number
---@field BountyIncreaseStageList ULuaArrayHelper<FBountyIncreaseStageItem>
---@field AutoEquipItemTypeList ULuaArrayHelper<number>
---@field BountyIncreaseTimerHandle FTimerHandle
---@field BuyingItemLimit FBountyBuyingItemLimit
---@field ProductList ULuaArrayHelper<FStoreProductInfo>
local UUGCBountySystemComponent = {}

function UUGCBountySystemComponent:OnGameEnterFight() end

function UUGCBountySystemComponent:OnGameEnterFinish() end

---@param InTargetController APlayerController
---@param InBuyingInfo FBountyBuyingInfo
function UUGCBountySystemComponent:TriggerPlayerBountyBuying(InTargetController, InBuyingInfo) end

---@param InItemID number
function UUGCBountySystemComponent:FetchItemBuyLimit(InItemID) end

---@param PlayerKey number
---@return number
function UUGCBountySystemComponent:GetPlayerBountyNum(PlayerKey) end

---@param InPlayerKey number
---@param InPickupItemID number
---@param InPickupType number
---@param InPickupCount number
function UUGCBountySystemComponent:TriggerPickupEvent(InPlayerKey, InPickupItemID, InPickupType, InPickupCount) end

function UUGCBountySystemComponent:UpdateBounty() end

---@param _ProductList ULuaArrayHelper<FStoreProductInfo>
function UUGCBountySystemComponent:InitBountySystemProductList(_ProductList) end
