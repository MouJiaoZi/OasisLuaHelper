---@meta

---@class FReplicatedPhysicsTarget
---@field TargetState FRigidBodyState @The target state replicated by server
---@field BoneName string @The bone name used to find the body
---@field ArrivedTimeSeconds number @Client time when target state arrived
---@field ArrivedDurationTimeSeconds number @The subsequent time points after the customer reaches the target state
---@field AccumulatedErrorSeconds number @Physics sync error accumulation
---@field PrevPosTarget FVector @Correction values from previous update
---@field PrevPos FVector
---@field bValid boolean
FReplicatedPhysicsTarget = {}
