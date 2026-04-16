---@meta

---军犬状态
---@class EAIFollowStatus
---@field Idle number @空闲
---@field Follow number @跟随
EAIFollowStatus = {}


---跟随速度类型
---@class EAIFollowSpeedType
---@field SlowWalk number @最慢行走
---@field Walk number @慢走
---@field Run number @跑(正常移动)
---@field Sprint number @疾跑
---@field OverSprint number @冲锋
EAIFollowSpeedType = {}


---跟随选点阵型
---@class EAIFollowFormationType
---@field Idle number @静止阵型
---@field SlowWalk number @最慢行走阵型
---@field Walk number @慢走阵型
---@field Run number @跑(正常移动)阵型
---@field Sprint number @冲刺阵型
EAIFollowFormationType = {}


---单个跟随点配置
---@class FAIFollowLocationRayConfig
---@field Angle number
---@field Length number
FAIFollowLocationRayConfig = {}


---跟随点权重配置
---@class FAIFollowLocationWeightConfig
---@field StaticWeightLeft number
---@field StaticWeightRight number
---@field StaticWeightMiddle number
FAIFollowLocationWeightConfig = {}


---跟随点配置
---@class FAIFollowLocationConfig
---@field TickInterval number
---@field ValidLength number @通过射线找到导航点的有效距离，太短认为无效
---@field FollowRayPoints ULuaArrayHelper<FAIFollowLocationRayConfig>
FAIFollowLocationConfig = {}


---@class FAIFollowSpeedTranslate
---@field SlowDownDistance number
---@field SpeedUpDistance number @速度档位变化
---@field SmallSpeedUpDistance number @同档速度内细微变化
---@field SmallSlowDownDistance number
FAIFollowSpeedTranslate = {}


---持续跟随范围配置
---@class FAIFollowRangeConfig
---@field FollowRange number
---@field FollowRangeScale number
---@field ChaseSpeedConfig ULuaMapHelper<number, EAIFollowSpeedType>
FAIFollowRangeConfig = {}


---跟随到目标附近配置
---@class FAIFollowToTargetConfig
---@field LocationStopRange number
---@field PlayerStopRange number
---@field SwimStopRange number
---@field MoveSpeedConfig ULuaMapHelper<number, EAIFollowSpeedType>
FAIFollowToTargetConfig = {}


---跟随对象速度适配器配置
---@class FAIFollowerSpeedAdapterConfig
---@field SpeedChangeIntervalTime number @军犬适配玩家速度时，速度改变最小时间。防止短时间动画改变
---@field SpeedUpChangeIntervalTime number @军犬由于落后跟随点进行加速时，速度改变最小时间。防止短时间动画来回切换
---@field SpeedChangeBoundaryRatio number @例如当速度为Walk标准速度值为240，目标速度为Run标准速度为480.当目标速度值在Walk和Run之间比例超过该值时才会考虑切换速度
FAIFollowerSpeedAdapterConfig = {}


---跟随速度配置
---@class FAIFollowPartnerWalkSpeed
---@field MaxWalkSpeed number
---@field SpeedTypeScale ULuaMapHelper<EAIFollowSpeedType, number>
---@field SmallSpeedModifyScale number
---@field FollowSpeedTranslates ULuaMapHelper<EAIFollowFormationType, FAIFollowSpeedTranslate>
---@field IdleFormationSpeed number
---@field UseFollowerSpeedScale FVector2D
---@field FollowRangeConfig FAIFollowRangeConfig
---@field FollowToTargetConfig FAIFollowToTargetConfig
---@field FollowerSpeedAdapterConfig FAIFollowerSpeedAdapterConfig
---@field KeepLockSpeedTime number
FAIFollowPartnerWalkSpeed = {}


---跟随坐标变化容忍范围。超过范围才选择新的跟随点
---@class FFollowLocationToleranceData
---@field OutRangeFollowLocationChangeTolerance number
---@field InRangeFollowLocationChangeTolerance number
---@field StatisticalTime number
---@field SameMoveDirectionStatisticalTime number
---@field MoveCircleJudgeRange number
---@field MoveCircleStatisticalRange number
---@field MoveCircleBreakRange number
---@field DistanceScale number
FFollowLocationToleranceData = {}


---惯性向前移动数据
---@class FFollowMoveForwardData
---@field MoveForwardTimeThreshold number
---@field MoveForwardTimeThreshold_Smooth number
---@field MoveForwardDistance number
---@field MoveForwardDistance_Vehicle number
---@field MoveForwardTime number
---@field CheckMoveForwardDistance number
---@field MoveForwardVelocityScale number
---@field MoveForwardLeaveMaxDistance number
---@field MoveForwardLeaveMinTime number
FFollowMoveForwardData = {}


---当跟随点角度差异较大时，一段时间内不更新跟随点
---@class FFollowAngleDifferenceData
---@field AngleDifference number
---@field InValidKeepTime number
---@field ValidRange FVector2D
FFollowAngleDifferenceData = {}


---RootMotion接移动跟随平滑数据
---@class FFollowRootMotionToMoveSmoothData
---@field RootMotionSmoothTime number
---@field RootMotionSmoothRotationSpeed number
---@field RootMotionSmoothLeaveMaxDistance number
---@field RootMotionSmoothMinTime number
---@field RootMotionSmoothLeaveAddAngle number @可能由于被跟随者移动转向，导致无法差值到跟随点方向，甚至转向了，就退出平滑
FFollowRootMotionToMoveSmoothData = {}


---寻路相关配置
---@class FFollowFindPathData
---@field ForceIdleToMoveDistance number @Idle时进入移动状态条件： 1.离跟随点太远ForceIdleToMoveDistance 2.被跟随者持续移动一段时间IdleToMoveMinTime，且离跟随点超过一定距离IdleToMoveMinDistance
---@field ForceIdleToMoveDistance_PlayerIdle number
---@field AcceptanceRadius number
---@field bIncludesAgentRadius boolean
---@field FindPathIntervalTime number
---@field CheckPathLength FVector2D
---@field CheckPathTooLongMultiplier number
---@field RePathDistance number
---@field RePathAngle number
---@field EndVaultKeepMoveTime number
FFollowFindPathData = {}


---转向平滑设置
---@class FFollowRotateSmoothData
---@field bUseAccelerationForPaths boolean
---@field MaxAcceleration number
---@field GroundFriction number
---@field bOrientRotationToMovement boolean
---@field RotationRateYaw number
FFollowRotateSmoothData = {}


---跟随配置数据
---@class FAIFollowDataConfig
---@field FollowFormationMap ULuaMapHelper<EAIFollowFormationType, FAIFollowLocationConfig> @不同阵型类型下跟随点配置
---@field FollowLocationWeightConfig FAIFollowLocationWeightConfig
---@field FollowPartnerWalkSpeed FAIFollowPartnerWalkSpeed @跟随速度配置
---@field EnterIdleStateTime number
---@field FollowLocationToleranceData FFollowLocationToleranceData @跟随坐标变化容忍范围。超过范围才选择新的跟随点
---@field FollowFindPathData FFollowFindPathData
---@field RunIntoWallTestLen number
---@field ChangeFollowLocationTypeDelayTime number
---@field MoveForwardData FFollowMoveForwardData
---@field AngleDifferenceData FFollowAngleDifferenceData
---@field RootMotionToMoveSmoothData FFollowRootMotionToMoveSmoothData
---@field bUseInvalidFollowLocation boolean
---@field InvalidLocationNoiseOvertime number @在一定时间内忽略噪音选点，超时后才选用
---@field FormationChangeNoiseOvertime number
---@field RotateSmoothData FFollowRotateSmoothData
---@field NormalWalkRotateSmoothData FFollowRotateSmoothData
FAIFollowDataConfig = {}


---旋转曲线配置
---@class FAICurveRotationConfig
---@field MatchAngle number @匹配角度
---@field MaxWarpingDistance number @位置Warping最大距离
---@field CurveName string
FAICurveRotationConfig = {}
