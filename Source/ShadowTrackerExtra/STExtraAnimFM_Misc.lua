---@meta

---@class EAnimIKClassification
---@field Invalid number @无效
---@field LeftHand number @左手
---@field RightHand number @右手
EAnimIKClassification = {}


---@class FAnimForShovel
---@field bs1_Shovel UAnimationAsset
---@field bs_Shovel_Floor UAnimationAsset
---@field bs1_Shovel_Pitch UAnimationAsset
---@field bs1_Shovel_Unarm UAnimationAsset
---@field bs_Shovel_Unarm_Floor UAnimationAsset
---@field se_Shovel_F UAnimationAsset
FAnimForShovel = {}


---@class FSTExtraAnimFM_Shoveling
---@field AnimForShovel FAnimForShovel
---@field ShovelingRotation FRotator
---@field UpShovelingRotationAdd FRotator
---@field ShovelingRotationCS FRotator
---@field UpShovelingRotationAddCS FRotator
---@field FloorRotation FRotator
---@field bIsFppAndHasGun boolean
---@field ShovelingBaseDCCFactorMin number
---@field bUseWeaponShovelAnimInScope boolean
FSTExtraAnimFM_Shoveling = {}


---@class FSTExtraAnimFM_Foregrip
---@field ForceLockForegrip ForceLockParam
---@field b_ShouldAdditiveForegrip boolean
---@field b_ForegripAnimValid boolean
---@field f_ForegripAnimParam number
---@field f_BlendForgripWeight number
---@field f_BlendForgripWeight_Left number
---@field f_BlendForgripWeight_Right number
---@field b_ShouldBlendForegripIK boolean
---@field b_FPPShouldAdditiveSingleHandleForegrip boolean
FSTExtraAnimFM_Foregrip = {}


---@class FForceIKState
FForceIKState = {}


---@class FSTExtraAnimFM_IK
---@field ForceLockCopyBone ForceLockParam
---@field ForceLockIK ForceLockTwoParam
---@field BlendSpeed number
---@field b_EnableIK boolean
---@field B_NeedCopyBone boolean
---@field B_CopyHandRBone boolean
---@field LeftHandBlendWeight number
---@field RightHandBlendWeight number
---@field ForceIKStateMap ULuaMapHelper<EAnimIKClassification, FForceIKState>
FSTExtraAnimFM_IK = {}


---@class FSTExtraAnimFM_LOD
---@field u_LODLevel number
---@field b_LODLevel_Bigger_0 boolean
---@field b_LODLevel_Bigger_1 boolean
---@field LODLevel2DistanceFactorMax number
---@field LODLevel1DistanceFactorMax number
FSTExtraAnimFM_LOD = {}


---@class FSTExtraAnimFM_PeekScopeBolt
---@field f_TargetForgripWeight_Right number
FSTExtraAnimFM_PeekScopeBolt = {}
