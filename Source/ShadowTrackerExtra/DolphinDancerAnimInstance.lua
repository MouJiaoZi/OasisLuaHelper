---@meta

---@class UDolphinDancerAnimInstance: USubAnimInstanceBase_Activity, IInterface_NonCommercialAvatar_AnimAdapt
---@field MeshShiftCompensation FBoneRetargetMeshShiftCompensation
---@field State_C EDolphinDancerState
---@field bIsSimulated_C boolean
---@field bNeedBagMesh_C boolean
---@field TransformedVelocity_C FVector
---@field TransformedVelocityLength_C number
---@field LastFrameTransformedVelocity_C FVector
---@field LastFrameTransformedVelocityNormal_C FVector
---@field bNitrogen_C boolean
---@field bIsBrake_C boolean
---@field Acceleration_C FVector
---@field AccelerationLength_C number
---@field bBagMeshValid_C boolean
---@field JumpCurrentCount_C number
---@field bInFallingState_C boolean
---@field BrakeTimestemp_C number
---@field Now_C number
---@field IdleTimestemp_C number
local UDolphinDancerAnimInstance = {}

---@param State EDolphinDancerState
function UDolphinDancerAnimInstance:OnStateChange_C(State) end

function UDolphinDancerAnimInstance:CalcBrake() end

function UDolphinDancerAnimInstance:CalcIdle() end
