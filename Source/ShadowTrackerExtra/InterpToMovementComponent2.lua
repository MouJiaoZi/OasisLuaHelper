---@meta

---@class FInterpToMovementComponent2ReplicatedData
---@field ReplicatedBehaviourType EInterpToBehaviourType
---@field ReplicatedCurrentTime number
---@field ReplicatedTimeMultiplier number
---@field ReplicatedCurrentDirection number
FInterpToMovementComponent2ReplicatedData = {}


---@class UInterpToMovementComponent2: UInterpToMovementComponent
---@field OnInterp2ToStopDelegate FOnInterp2ToStopDelegate
---@field OnMoveDeltaComputedDelegate FOnMoveDeltaComputedDelegate
---@field bReverseOnImpact number
---@field ReplicatedData FInterpToMovementComponent2ReplicatedData
local UInterpToMovementComponent2 = {}

---@param InitialDirection number
---@param InTime number
---@param bInWaiting boolean
---@param bInStopped boolean
function UInterpToMovementComponent2:Restart(InitialDirection, InTime, bInWaiting, bInStopped) end

---@return number
function UInterpToMovementComponent2:GetCurrentTime() end

---@return boolean
function UInterpToMovementComponent2:IsWaiting() end

---@return boolean
function UInterpToMovementComponent2:IsStopped() end

---@param ImpactResult FHitResult
---@param Time number
function UInterpToMovementComponent2:OnInterpToMovementComponentInterpToStop(ImpactResult, Time) end

function UInterpToMovementComponent2:OnRep_ReplicatedData() end
