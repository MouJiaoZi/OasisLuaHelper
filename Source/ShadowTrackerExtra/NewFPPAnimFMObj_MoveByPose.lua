---@meta

---@class ENewFPPMovePoseType
---@field Pose_Idle number
---@field Pose_Walk number
---@field Pose_Run number
---@field Pose_Sprint number
ENewFPPMovePoseType = {}


---@class FNewFPPMovePose
FNewFPPMovePose = {}


---@class UNewFPPAnimFMObj_MoveByPose: UAnimFunctionModule_ObjInstance
---@field TargetPoseType ECharacterPoseType
---@field WalkStartSpeed number
---@field RunStartSpeed number
---@field SprintStartSpeed number
---@field PoseSpeed_UpLerpTime number
---@field PoseSpeed_UpLerpTimeCounter number
---@field NAME_DisableTransAnim string
---@field EmptyTransTime number
---@field InterruptTransPosePercent number
---@field WalkStartSpeed_Current number
---@field RunStartSpeed_Current number
---@field SprintStartSpeed_Current number
---@field WalkStartSpeed_Last number
---@field RunStartSpeed_Last number
---@field SprintStartSpeed_Last number
---@field CurrentMoveAnimState FNewFPPMovePose
---@field SightAimMoveAnimState FNewFPPMovePose
---@field CurrentMovePoseType ENewFPPMovePoseType
---@field NextMovePoseType ENewFPPMovePoseType
---@field CacheCurrentMovePoseType ENewFPPMovePoseType
---@field CacheNextMovePoseTypeMax ENewFPPMovePoseType
---@field CacheUpStartPose ENewFPPMovePoseType
---@field CacheUpEndPose ENewFPPMovePoseType
---@field CacheDownStartPose ENewFPPMovePoseType
---@field CacheDownEndPose ENewFPPMovePoseType
---@field CacheNextMoveSpeedMax number
---@field bNeedPlayTransAnim boolean
---@field bNeedPlayTransAnim_Up boolean
---@field bNeedPlayTransAnim_Down boolean
---@field MovePoseTransDeltaTime_Up number
---@field MovePoseTransDeltaTimeCounter_Up number
---@field MovePoseTransDeltaTime_Down number
---@field MovePoseTransDeltaTimeCounter_Down number
---@field FallingToSprintDelayTime number
---@field DelayToSprintTimeCounter number
---@field VaultKeepIdleDelayTime number
---@field DelayLeaveIdleTimeCounter number
---@field MovePoseLoopTime number
---@field SprintLoopAnimRate number
---@field DisableTransAnim number
---@field CachePoseType ECharacterPoseType
---@field CacheCharacterMovementMaxSpeed number
---@field MaxCacheJoystick number
---@field MinCacheJoystick number
---@field CacheJoystickInputArray ULuaArrayHelper<FVector>
---@field CacheJoystickXNum number
---@field CacheJoystickYNum number
---@field MaxCachePose number
---@field MinCachePose number
---@field CacheIdleNum number
---@field CachePoseYNum number
---@field CacheMovePoseTypeArray ULuaArrayHelper<ENewFPPMovePoseType>
local UNewFPPAnimFMObj_MoveByPose = {}

---@param bIsTickEnable boolean
function UNewFPPAnimFMObj_MoveByPose:OnNewFPPMeshTickStateChange(bIsTickEnable) end
