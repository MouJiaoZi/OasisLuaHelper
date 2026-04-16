---@meta

---@class FLostTombProducedItemRestriction
---@field ItemID number
---@field MaxNumProduced number
FLostTombProducedItemRestriction = {}


---@class ULostTombItemSecurityMonitor: UGameModeBaseComponent
---@field ProducedItemRestrictions ULuaArrayHelper<FLostTombProducedItemRestriction>
local ULostTombItemSecurityMonitor = {}

---@param ItemID number
---@param NumItems number
function ULostTombItemSecurityMonitor:TrackInitialItems(ItemID, NumItems) end

---@param ItemID number
---@param NumItems number
function ULostTombItemSecurityMonitor:TrackAbandonedItems(ItemID, NumItems) end

---@param ItemID number
---@param NumItems number
function ULostTombItemSecurityMonitor:TrackSettledItems(ItemID, NumItems) end

---@param Actor AActor
---@param PickUpGenerationDetail FPickUpGenerationDetail
function ULostTombItemSecurityMonitor:OnSetupPickUpGenerationDetail(Actor, PickUpGenerationDetail) end

---@param ItemHandleBase UItemHandleBase
---@param PickupInfo FBattleItemPickupInfo
---@param Reason EBattleItemPickupReason
function ULostTombItemSecurityMonitor:OnPickUpBattleItem(ItemHandleBase, PickupInfo, Reason) end

---@param ItemHandleBase UItemHandleBase
---@param InCount number
---@param Reason EBattleItemDropReason
function ULostTombItemSecurityMonitor:OnDropBattleItem(ItemHandleBase, InCount, Reason) end

---@param InPlayer APlayerController
function ULostTombItemSecurityMonitor:OnPlayerPostLogin(InPlayer) end

---@param InPlayerKey number
---@param InAIC AFakePlayerAIController
function ULostTombItemSecurityMonitor:OnReceivedAICAdd(InPlayerKey, InAIC) end

function ULostTombItemSecurityMonitor:RunDiagnosis() end
