---@meta

---@class ESpikeDeploymentState
---@field PreDeploy number
---@field Deploying number
---@field PostDeploy number
---@field Popped number
---@field Idle number
ESpikeDeploymentState = {}


---@class FSegmentPoint
---@field Location FVector
---@field Normal FVector
FSegmentPoint = {}


---@class ASpikeTrapActor: AActor
---@field CheckRadius number
---@field CheckLenght number
---@field DeploymentState ESpikeDeploymentState
---@field OgVelocity FVector
---@field SplineMeshes ULuaArrayHelper<USplineMeshComponent>
---@field PointSegments ULuaArrayHelper<FSegmentPoint>
---@field SegmentCount number
---@field PhysicsDelay number
---@field SpikeMeshScale FVector
---@field MaxDeployHeightDifferential number
---@field DeploymentSpeed number
---@field SegmentCurve_MaxEndHeight number
---@field SegmentCurve_Power number
---@field SegmentCurve_HeightCap number
---@field OriginOffset_VerticalTimeMultiplier number
---@field OriginOffset_VerticalPower number
---@field OriginOffset_HorizontalTimeMultiplier number
---@field OriginOffset_HorizontalPower number
---@field bPopped number
local ASpikeTrapActor = {}

function ASpikeTrapActor:OnRep_DeployState() end

function ASpikeTrapActor:OnRep_Segments() end

---@return boolean
function ASpikeTrapActor:IsFullLenght() end

function ASpikeTrapActor:BPUpdateMeshFromRagdoll() end

---@param Locations ULuaArrayHelper<FVector>
---@param Rotations ULuaArrayHelper<FRotator>
function ASpikeTrapActor:BPCopySegmentsToAnimation(Locations, Rotations) end

---@param Transform FTransform
function ASpikeTrapActor:AddHandle(Transform) end

---@param LaunchDirection FVector
---@param PopLocation FVector
function ASpikeTrapActor:MulticastPop(LaunchDirection, PopLocation) end

---@param LaunchDirection FVector
function ASpikeTrapActor:OnPopped(LaunchDirection) end

---@param Event FSimpleCollisionEvent
function ASpikeTrapActor:OnCollision(Event) end

function ASpikeTrapActor:Disable() end


---@class AEliteProjectile_SpikeTrap: AEliteProjectile
---@field SpikeTrapActor ASpikeTrapActor
local AEliteProjectile_SpikeTrap = {}

---@param Impact FHitResult
---@return boolean
function AEliteProjectile_SpikeTrap:ShouldSpawnSpikeTrap(Impact) end
