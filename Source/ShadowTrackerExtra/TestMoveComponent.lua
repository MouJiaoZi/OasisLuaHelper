---@meta

---@class UTestMoveComponent: UActorComponent
---@field ReplicatedMovement any @Used for replication of our RootComponent's position and velocity
---@field bAutoRegisterUpdatedComponent number @If true, registers the owner's Root component as the UpdatedComponent if there is not one currently assigned.
---@field bAutoRegisterPhysicsVolumeUpdates number @If true, then applies the value of bComponentShouldUpdatePhysicsVolume to the UpdatedComponent. If false, will not change bShouldUpdatePhysicsVolume on the UpdatedComponent at all.
---@field MaxSpeed number
---@field StartMoveDir FVector
---@field MaxMoveDis number
---@field bIsOpenSelfMove boolean
---@field SmoothNetUpdateTime number
---@field TestMoveIndex number
local UTestMoveComponent = {}

---Assign the component we move and update.
---@param NewUpdatedComponent USceneComponent
function UTestMoveComponent:SetUpdatedComponent(NewUpdatedComponent) end

---ReplicatedMovement struct replication event
function UTestMoveComponent:OnRep_ReplicatedMovement() end

---@param location FVector
function UTestMoveComponent:TestRPCToClient(location) end
