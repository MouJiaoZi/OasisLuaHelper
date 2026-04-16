---@meta

---@class AUAEPhysicsBaseActor: AActor, IPhysicsInteractionInterface
---@field LastRepReplicatedMovementTime number
local AUAEPhysicsBaseActor = {}

---Add an impulse to a single rigid body. Good for one time instant burst.
---@param Impulse FVector
---@param BoneName string
---@param bVelChange boolean
function AUAEPhysicsBaseActor:AddImpulse(Impulse, BoneName, bVelChange) end

---Add an impulse to a single rigid body at a specific location.
---@param Impulse FVector
---@param Location FVector
---@param BoneName string
function AUAEPhysicsBaseActor:AddImpulseAtLocation(Impulse, Location, BoneName) end

---Add a force to a single rigid body. This is like a 'thruster'. Good for adding a burst over some (non zero) time. Should be called every frame for the duration of the force.
---@param Force FVector
---@param BoneName string
---@param bAccelChange boolean
function AUAEPhysicsBaseActor:AddForce(Force, BoneName, bAccelChange) end

---Add a force to a single rigid body at a particular location in world space. This is like a 'thruster'. Good for adding a burst over some (non zero) time. Should be called every frame for the duration of the force.
---@param Force FVector
---@param Location FVector
---@param BoneName string
function AUAEPhysicsBaseActor:AddForceAtLocation(Force, Location, BoneName) end

---@param bActive boolean
function AUAEPhysicsBaseActor:SetPhysActive(bActive) end

---是否已经激活物理
---@return boolean
function AUAEPhysicsBaseActor:GetPhysActive() end

---ReplicatedMovement struct replication event
function AUAEPhysicsBaseActor:OnRep_ReplicatedMovement() end
