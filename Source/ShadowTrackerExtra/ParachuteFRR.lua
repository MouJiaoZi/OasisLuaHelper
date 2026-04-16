---@meta

---@class FParachuteReplicatedMoveState
---@field Location FVector_NetQuantize100
---@field Rotation FRotator
---@field Velocity FVector_NetQuantize100
FParachuteReplicatedMoveState = {}


---@class FParachuteFRR
---@field ThrottleInput number
---@field SteerInput number
---@field bReplicatedIsStartParachute number
---@field ParachuteState number
---@field bCanOpenParachute number
---@field ControlRotation FRotator
---@field moveState FParachuteReplicatedMoveState
---@field SerializeMask number
---@field bHasSerializedWrite boolean
FParachuteFRR = {}
