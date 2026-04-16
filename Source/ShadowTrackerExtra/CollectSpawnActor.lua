---@meta

---@class ACollectSpawnActor: AActor
---@field QueryMobilityType number
---@field OffsetToFace number
---@field TraceOffset number
---@field TraceChannelList ULuaArrayHelper<ECollisionChannel>
---@field DesiredClass AActor
---@field ActorOriginPos FVector
---@field BoxExtent FVector
local ACollectSpawnActor = {}

function ACollectSpawnActor:HandleSpawnActor() end

function ACollectSpawnActor:UnHandleSpawnActor() end

---@param InSpawnActor AActor
function ACollectSpawnActor:OnHandleActorSpawn(InSpawnActor) end

---@param InSpawnActor AActor
function ACollectSpawnActor:OnHandleActorSpawnEvent(InSpawnActor) end

---@param InActor AActor
---@return boolean
function ACollectSpawnActor:IsActorInRange(InActor) end

---@param InActor AActor
function ACollectSpawnActor:SetActorToFace(InActor) end
