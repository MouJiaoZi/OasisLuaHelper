---@meta

---@class FInfectableOverlapData
---@field OverlapingIndex number
---@field bHandled boolean
FInfectableOverlapData = {}


---@class AVNInfectableArea: AActor, IDamageableInterface
---@field bRemoveOnEndOverlap boolean
---@field bForceUpdateOverlap boolean
---@field bAuthortyOnly boolean
---@field bEnableTrace boolean
---@field bUseCullingPlanes boolean
---@field InfactableActors ULuaArrayHelper<AActor>
---@field DebugPlanSize number
---@field UpperClipPlane number
---@field DonwerClipPlane number
---@field bDrawDebugClipPlan boolean
---@field selfIntigator boolean
---@field bCanBePickedBySkill boolean
---@field MaxOverlappingLimit number
---@field AttachComponentTemplate UVNPainCausingVolComponent
---@field TargetTagList ULuaArrayHelper<string>
---@field CompPool ULuaArrayHelper<UVNPainCausingVolComponent>
---@field OverlappingQueueData ULuaArrayHelper<FInfectableOverlapData>
---@field TotalOverlappedActorCount number
local AVNInfectableArea = {}

---@param DamagedTarget AActor
function AVNInfectableArea:OnDamage(DamagedTarget) end

---@param DamagedTarget AActor
function AVNInfectableArea:MultiOnDamage(DamagedTarget) end

---@param DamagedTarget AActor
function AVNInfectableArea:OnDamageBP(DamagedTarget) end

---@param OverlappedActor AActor
---@param Other AActor
function AVNInfectableArea:OnActorOverlapBegin(OverlappedActor, Other) end

---@param OverlappedActor AActor
---@param Other AActor
function AVNInfectableArea:OnActorOverlapEnd(OverlappedActor, Other) end

function AVNInfectableArea:HandleOverlappingQueue() end
