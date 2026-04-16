---@meta

---@class UParachuteAnimInstanceBase: UAnimInstance, IInterface_NonCommercialAvatar_AnimAdapt
---@field MeshShiftCompensation FBoneRetargetMeshShiftCompensation
---@field C_SkipOpenParachute boolean
---@field C_IsLanding boolean
---@field C_ParachuteState EParachuteState
---@field C_MoveDir FVector
---@field C_RightHandBoneName string
---@field C_RightHandLoc FVector
---@field C_LeftHandBoneName string
---@field C_LeftHandLoc FVector
---@field MaxSimulatePhysicDist number
---@field MoveDirParachuteLerpSpeed number
---@field DynamicParamName string
---@field DynamicMatPassTotalTime number
---@field DelayClearTime number
---@field bAddSimulateMoveVelocity boolean
---@field MoveDownSpeed number
---@field MoveVelocityRightSpeed number
---@field MoveVelocityBackSpeed number
---@field SimulateBoneNames ULuaArrayHelper<string>
local UParachuteAnimInstanceBase = {}

---@return boolean
function UParachuteAnimInstanceBase:IsNearTheLocalMainChar() end

function UParachuteAnimInstanceBase:HandleParachuteStateChanged() end

function UParachuteAnimInstanceBase:ParachuteMeshSimulatePhysics() end
