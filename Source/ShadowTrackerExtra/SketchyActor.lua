---@meta

---@class ASketchyActor: AUAERegionActor
---@field OriginalActorTransform FTransform
---@field bPendingInitWithOriginalActor boolean
---@field bPropertyRepBlackList boolean
---@field bPropertyRepInitialOnly boolean
---@field bSwitchCollisionByOriginStatus boolean
local ASketchyActor = {}

---@param LastTransform FTransform
function ASketchyActor:OnRep_OriginalActorTransform(LastTransform) end

function ASketchyActor:OnRep_SyncOriginalActor() end

---@param OriginalActor AActor
function ASketchyActor:InitWithOriginalActor(OriginalActor) end

---@param LastTransform FTransform
function ASketchyActor:OnReceiveOriginalActorTransform(LastTransform) end

function ASketchyActor:OnReceiveSyncOriginalActor() end

---@param DestroyedActor AActor
function ASketchyActor:HandleClientOriginalActorDestroyed(DestroyedActor) end
