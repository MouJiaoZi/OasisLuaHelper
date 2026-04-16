---@meta

---@class F_BFC_Frame_BoneInfo
F_BFC_Frame_BoneInfo = {}


---@class F_BFC_Frame_BoneInfoQueue
F_BFC_Frame_BoneInfoQueue = {}


---@class F_BFC_Frame_Record
F_BFC_Frame_Record = {}


---make bone list move like snake
---@class FAnimNode_BoneFollowChain
---@field BasePose FPoseLink
---@field ToParentDisTolerence number
---@field ToParentMaxDisTolerence number
---@field bLeaderBoneMoveFromAnim boolean
---@field bClearParentBonePathWhenNoMove boolean
---@field bEnableTerrainAdaptFeature boolean
---@field TerrainTraceStart number
---@field TerrainTraceEnd number
---@field ToParentRotationScale number
---@field bLerpBoneRotaion boolean
---@field bLerpBoneRotaionCalcCurFrameBoneTransform boolean
---@field MaxBonePathRecordBufferSize number
---@field LeaderBone FBoneReference
---@field FollowBoneList ULuaArrayHelper<FBoneReference>
FAnimNode_BoneFollowChain = {}
