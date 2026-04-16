---@meta

---@class AEscortPlane: AActor
---@field ActorSpawnedTransform FTransform
local AEscortPlane = {}

---@param DeltaTime number
function AEscortPlane:ReceivePostTickPosition(DeltaTime) end

function AEscortPlane:PlayCameraShake() end


---@class UEscortSpawner: UObject
---@field SpawnDelay number
---@field EscortPlaneNum number
---@field InnerRadius number
---@field OuterRadius number
---@field RandomSeed number
---@field EscortPlaneClass AEscortPlane
---@field SpawnInterval number
---@field SpawnInterval_RandomAdditive number
---@field SpawnCenter FVector
---@field SpawnDirection FRotator
---@field RandomStream FRandomStream
local UEscortSpawner = {}

---@param Center FVector
---@param Direction FRotator
function UEscortSpawner:SpawnEscortPlane(Center, Direction) end

---@param InSeed number
function UEscortSpawner:SetRandomSeed(InSeed) end

---@return number
function UEscortSpawner:GetRandomSeed() end

---@param Planes ULuaArrayHelper<AEscortPlane>
function UEscortSpawner:GetPlanes(Planes) end

---@param OutLocation FVector
function UEscortSpawner:GetRandomLocation(OutLocation) end
