---@meta

---@class FAICurveRotationConfigArray
---@field RootMotionConfigArray ULuaArrayHelper<FAICurveRotationConfig>
FAICurveRotationConfigArray = {}


---起步RootMotion配置
---@class FWarDogStartRootMotionConfig
---@field StartRootMotionMinDistance number @Warping后小于该距离不播放
---@field StartRootMotionConfig ULuaMapHelper<EAIFollowSpeedType, FAICurveRotationConfigArray>
---@field StartRootMotionConfig_Alert ULuaMapHelper<EAIFollowSpeedType, FAICurveRotationConfigArray>
---@field StartRootMotionConfig_Alert_Prone FAICurveRotationConfigArray
FWarDogStartRootMotionConfig = {}


---停步RootMotion配置
---@class FStopCurveRotationConfig
---@field StopDistance number
---@field bEnableBreak boolean
---@field BreakTime number
---@field RootMotionConfig FAICurveRotationConfig
FStopCurveRotationConfig = {}


---@class FWarDogStopRootMotionConfig
---@field MinStopDistance number @停步距离使用Max(曲线中配置StopDistance,MinStopDistance)，防止曲线中配置太小
---@field StopRootMotionConfig ULuaMapHelper<EAIFollowSpeedType, FStopCurveRotationConfig>
---@field StopRootMotionConfig_Alert ULuaMapHelper<EAIFollowSpeedType, FStopCurveRotationConfig>
---@field StopRootMotionConfig_Alert_Prone FStopCurveRotationConfig
---@field StopRootMotionConfig_Hide ULuaMapHelper<EAIFollowSpeedType, FStopCurveRotationConfig>
FWarDogStopRootMotionConfig = {}


---转向RootMotion配置
---@class FWarDogTurnRootMotionConfig
---@field MoveTurnRMOppositeAngle_FollowLocation number @军犬朝向与跟随点夹角
---@field MoveTurnRMOppositeAngle_Follower number @军犬朝向与跟随者移动方向夹角
---@field bCanOnlyTurnWhileMove boolean
---@field FollowLocationBehindRange FVector2D
---@field MoveTurnRootMotionWarpingDistance number
---@field TurnTimeAfterMoveForward number
---@field FollowerMoveInSameDirectionAngle number @被跟随者超同一方向移动超过一定时间，军犬才能转向。防止转圈圈时触发
---@field FollowerMoveInSameDirectionTime number
---@field OwnerMoveInSameDirectionAngle number @军犬超同一方向移动超过一定时间，才能转向
---@field OwnerMoveInSameDirectionTime number
---@field TurnRootMotionConfig ULuaMapHelper<EAIFollowSpeedType, FAICurveRotationConfig>
---@field TurnRootMotionConfig_Left ULuaMapHelper<EAIFollowSpeedType, FAICurveRotationConfig>
---@field TurnRootMotionConfig_Alert ULuaMapHelper<EAIFollowSpeedType, FAICurveRotationConfig>
---@field TurnRootMotionConfig_Alert_Left ULuaMapHelper<EAIFollowSpeedType, FAICurveRotationConfig>
---@field TurnRootMotionConfig_Alert_Prone FAICurveRotationConfig
---@field TurnRootMotionConfig_Alert_Prone_Left FAICurveRotationConfig
FWarDogTurnRootMotionConfig = {}


---快速转向RootMotion配置
---@class FWarDogFastTurnRootMotionConfig
---@field MoveTurnRMOppositeAngle_FollowLocation number @军犬朝向与跟随点夹角
---@field MoveTurnRMOppositeAngle_Follower number @军犬朝向与跟随者移动方向夹角
---@field FollowLocationBehindRange FVector2D
---@field TurnAngleRange FVector2D
---@field ConsiderTurnLen number
---@field NextSegmentLenMin number
---@field FastTurnRootMotionConfig ULuaMapHelper<EAIFollowSpeedType, FAICurveRotationConfigArray>
---@field FastTurnRootMotionConfig_Alert ULuaMapHelper<EAIFollowSpeedType, FAICurveRotationConfigArray>
---@field FastTurnRootMotionConfig_Alert_Prone ULuaMapHelper<EAIFollowSpeedType, FAICurveRotationConfigArray>
FWarDogFastTurnRootMotionConfig = {}


---@class FAIFollowPoseChange : ULuaSingleDelegate
FAIFollowPoseChange = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: EPawnState) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAIFollowPoseChange:Bind(Callback, Obj) end

---执行委托
---@param Param1 EPawnState
function FAIFollowPoseChange:Execute(Param1) end


---@class FAIFollowForcePoseChange : ULuaSingleDelegate
FAIFollowForcePoseChange = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: boolean) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAIFollowForcePoseChange:Bind(Callback, Obj) end

---执行委托
---@param Param1 boolean
function FAIFollowForcePoseChange:Execute(Param1) end
