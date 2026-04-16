---@meta

---@class AUAEPhysicsStaticMeshActor: AUAEPhysicsBaseActor
---@field bUsePhysicsReplication boolean
local AUAEPhysicsStaticMeshActor = {}

---Add an impulse to a single rigid body. Good for one time instant burst.. @TODO 待优化，避免在DuringPhysics里面加
---@param Impulse FVector
---@param BoneName string
---@param bVelChange boolean
function AUAEPhysicsStaticMeshActor:AddImpulse(Impulse, BoneName, bVelChange) end

---Add an impulse to a single rigid body at a specific location.
---@param Impulse FVector
---@param Location FVector
---@param BoneName string
function AUAEPhysicsStaticMeshActor:AddImpulseAtLocation(Impulse, Location, BoneName) end

---Add a force to a single rigid body. @TODO 待优化，避免在DuringPhysics里面加 This is like a 'thruster'. Good for adding a burst over some (non zero) time. Should be called every frame for the duration of the force.
---@param Force FVector
---@param BoneName string
---@param bAccelChange boolean
function AUAEPhysicsStaticMeshActor:AddForce(Force, BoneName, bAccelChange) end

---Add a force to a single rigid body at a particular location in world space. This is like a 'thruster'. Good for adding a burst over some (non zero) time. Should be called every frame for the duration of the force.
---@param Force FVector
---@param Location FVector
---@param BoneName string
function AUAEPhysicsStaticMeshActor:AddForceAtLocation(Force, Location, BoneName) end

---@param bActive boolean
function AUAEPhysicsStaticMeshActor:SetPhysActive(bActive) end

---是否已经激活了物理
---@return boolean
function AUAEPhysicsStaticMeshActor:GetPhysActive() end

---激活上方物体物理
function AUAEPhysicsStaticMeshActor:ActiveUpperPhysics() end
