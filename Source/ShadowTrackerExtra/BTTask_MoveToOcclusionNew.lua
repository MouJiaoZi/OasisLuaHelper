---@meta

---@class EAIMoveToOcclusionPoseType
---@field PoseProne number @下趴掩体
---@field PoseCrouch number @下蹲掩体
---@field PoseStand number @站立掩体
---@field PoseBush number @灌木丛掩体
EAIMoveToOcclusionPoseType = {}


---@class EAIMoveToOcclusionSearchBestOcclusionMethod
---@field Normal number @常规
---@field NearToTarget number @接近目标
---@field FarToTarget number @远离目标
---@field NearToSelf number @自身周围最近
---@field RandomOfSelf number @自身周围随机
---@field NearToTargetWithOcclusion number @以掩体为掩护前进
EAIMoveToOcclusionSearchBestOcclusionMethod = {}


---@class EAIMoveToOcclusionMovingPoseType
---@field MovingPoseType_Normal number @常规：跑步过去
---@field MovingPoseType_CrouchSprintIfAlreadyCrouched number @如果掩体较近则下蹲跑过去，否则站立跑过去
EAIMoveToOcclusionMovingPoseType = {}


---@class EAIMoveToOcclusionFinishMovePoseType
---@field FinishMovePoseType_Normal number @常规
---@field FinishMovePoseType_CrouchIfACrouchOcclusion number @到达站立掩体后保持原姿势，到达下蹲掩体后下蹲
EAIMoveToOcclusionFinishMovePoseType = {}


---找到合适的掩体点，并移动到掩体点
---@class UBTTask_MoveToOcclusionNew: UBTTask_MagicMove
---@field SearchRadius number
---@field UseLastPointRadius number
---@field bChoosePointByEnemy boolean
---@field bForceStand boolean
---@field CirclePainThreshold number
---@field DoNotUseCurrentOcclusionFirst boolean
---@field CurrentOcclusionRadius number
---@field AcceptableOcclusionTypeArray ULuaArrayHelper<EAIMoveToOcclusionPoseType>
---@field bUsePointNearSelfCompareToEnemy boolean
---@field bUseNavMeshDistance boolean
---@field MaxNavMeshSearchDistance number
---@field searchBestOcclusionMethod EAIMoveToOcclusionSearchBestOcclusionMethod
---@field OcclusionPointChooseZFactor number
---@field OcclusionPointChooseBushFactor number
---@field ChooseAttackableOcclusionFirst boolean
---@field ChooseAttackableOcclusionFactor number
---@field OcclusionPadAngle_Normal number
---@field OcclusionPadAngle_Aggressive number
---@field ChooseAttackableOcclusionWithLineTrace boolean
---@field SelfStandHalfHeight number
---@field ChooseTagOcclusionEnable boolean
---@field OcclusionTagForChosen string
---@field bIgnorePossibleAttackableOcclusion boolean
---@field bChooseGeneratedOcclusionPoints number
---@field bDebug boolean
---@field EnemyBlackboardKey any @blackboard key selector
---@field MovingPoseType EAIMoveToOcclusionMovingPoseType
---@field MoveToOcclusionKeepCurPoseDistance number
---@field finishMovePoseType EAIMoveToOcclusionFinishMovePoseType
---@field OccupiedRadius number
---@field bPreAimToEnemy boolean
---@field OcclusionExternDistance number
---@field bGetOcclusionEdgePoint boolean
---@field OutOcclusionEdgePointKey FBlackboardKeySelector
---@field OcclusionEdgePointTryTimes number
---@field OutIsLeftProbeKey FBlackboardKeySelector
local UBTTask_MoveToOcclusionNew = {}
