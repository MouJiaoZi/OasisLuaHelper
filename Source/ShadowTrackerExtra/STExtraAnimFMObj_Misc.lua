---@meta

---@class USTExtraAnimFMObj_Shoveling: UAnimFunctionModule_ObjInstance
---@field AnimForShovel FAnimForShovel
---@field ShovelingRotation FRotator
---@field UpShovelingRotationAdd FRotator
---@field ShovelingRotationCS FRotator
---@field UpShovelingRotationAddCS FRotator
---@field FloorRotation FRotator
---@field bIsFppAndHasGun boolean
---@field ShovelingBaseDCCFactorMin number
---@field bUseWeaponShovelAnimInScope boolean
local USTExtraAnimFMObj_Shoveling = {}


---@class USTExtraAnimFMObj_Foregrip: UAnimFunctionModule_ObjInstance
---@field ForceLockForegrip ForceLockParam
---@field b_ShouldAdditiveForegrip boolean
---@field b_ForegripAnimValid boolean
---@field f_ForegripAnimParam number
---@field f_BlendForgripWeight number
---@field f_BlendForgripWeight_Left number
---@field f_BlendForgripWeight_Right number
---@field b_ShouldBlendForegripIK boolean
---@field b_FPPShouldAdditiveSingleHandleForegrip boolean
local USTExtraAnimFMObj_Foregrip = {}


---@class USTExtraAnimFMObj_IK: UAnimFunctionModule_ObjInstance
---@field ForceLockCopyBone ForceLockParam
---@field ForceLockIK ForceLockTwoParam
---@field BlendSpeed number
---@field b_EnableIK boolean
---@field B_NeedCopyBone boolean
---@field B_CopyHandRBone boolean
---@field LeftHandBlendWeight number
---@field RightHandBlendWeight number
---@field ForceIKStateMap ULuaMapHelper<EAnimIKClassification, FForceIKState>
local USTExtraAnimFMObj_IK = {}


---@class USTExtraAnimFMObj_LOD: UAnimFunctionModule_ObjInstance
---@field u_LODLevel number
---@field b_LODLevel_Bigger_0 boolean
---@field b_LODLevel_Bigger_1 boolean
---@field LODLevel2DistanceFactorMin number
---@field LODLevel2DistanceFactorMax number
---@field LODLevel1DistanceFactorMax number
local USTExtraAnimFMObj_LOD = {}


---@class USTExtraAnimFMObj_PeekScopeBolt: UAnimFunctionModule_ObjInstance
---@field f_TargetForgripWeight_Right number
local USTExtraAnimFMObj_PeekScopeBolt = {}
