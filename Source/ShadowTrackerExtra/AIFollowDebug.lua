---@meta

---射线碰撞信息
---@class FAIFollowRayDebugInfo
---@field StartLocation FVector
---@field EndLocation FVector
---@field bHit boolean
---@field HitLocation FVector
FAIFollowRayDebugInfo = {}


---跟随点信息
---@class FAIFollowLocationDebugInfo
---@field RaycastAngle number
---@field Weight number
---@field ErrorCode number
---@field Priority number
---@field FollowPawnRay FAIFollowRayDebugInfo
---@field RunIntoWallRay FAIFollowRayDebugInfo
---@field VisibleRay FAIFollowRayDebugInfo
FAIFollowLocationDebugInfo = {}


---跟随点信息
---@class FAIFollowLocationDebugInfo_Forward
---@field bValid boolean
---@field ErrorCode number
---@field ForwardRay FAIFollowRayDebugInfo
---@field RunIntoWallRay FAIFollowRayDebugInfo
---@field VisibleRay FAIFollowRayDebugInfo
FAIFollowLocationDebugInfo_Forward = {}


---@class FAIFollowSpeedDebugInfo
---@field bBuddyMove boolean
---@field bFollowPawnMove boolean
---@field SpeedTranslateStatus number
---@field SyncSpeed number
---@field ResultSpeed number
---@field RealTimeSpeed number
---@field AnimationSpeed number
---@field FormationType number
---@field bLockSpeedType boolean
---@field LockedSpeedType number
---@field bLockSpeedTypeAndValue boolean
---@field LockedSpeedTypeAndValue number
FAIFollowSpeedDebugInfo = {}


---@class FAIFollowStatusDebugInfo
---@field CurveAnimation string
FAIFollowStatusDebugInfo = {}


---@class FAIFollowDebugInfo
---@field bNoise boolean @这些都是上次选择跟随点时的快照数据
---@field NoiseType number
---@field CurRaycastAngle number
---@field FollowLocation_Formation FVector @跟随点信息
---@field FollowLocation_UnSmoothTarget FVector
---@field FollowLocation_Final FVector
---@field OwnerPawnLocation FVector
---@field FollowPawnLocation FVector
---@field FollowPoints ULuaArrayHelper<FAIFollowLocationDebugInfo>
---@field ForwardFollowPoint FAIFollowLocationDebugInfo_Forward
---@field TickFollowLocation FVector @这些都是实时数据
---@field OwnerPawnRealLocation FVector
---@field FollowPawnRealLocation FVector
---@field DistanceToFollowLocation number
---@field DistanceToFormationLocation number
---@field FollowPointsSimple ULuaArrayHelper<FVector>
---@field SpeedInfo FAIFollowSpeedDebugInfo
---@field StatusInfo FAIFollowStatusDebugInfo
---@field FollowPath ULuaArrayHelper<FVector>
---@field MaxWalkSpeed number
---@field StartWalkSpeed number
---@field TargetWalkSpeed number
---@field bLockSpeedValue boolean
---@field LockSpeedValue number
---@field CurWalkSpeed number
---@field Acceleration number
---@field CurveAcceleration number
---@field AngleToFollowLoc number
---@field AngleToPath number
---@field AngleToFollowerSpeed number
---@field ActorForward FVector
---@field FollowerMaxWalkSpeed number
---@field FollowerCurWalkSpeed number
---@field CurVelocity FVector
---@field MovementMode number
---@field CustomMovementMode number
---@field IsRootMotion boolean
---@field FollowerInstanceSpeed number
---@field FollowerWalkSpeed number
---@field LastState number
---@field FollowState number
---@field bAlert boolean
---@field bForcePawnState boolean
---@field AlertPawnState number
---@field ActionStr string
---@field AIFollowDecisionAction number
---@field AIFollowCombineActions number
---@field PendingActionQueueStr string
FAIFollowDebugInfo = {}


---@class FAnalysisResultDebug
---@field DistanceRelation number
---@field RelativeSpeedRelation number
---@field FollowerSpeedRelation number
---@field OwnerSpeedRelation number
---@field FollowerMoveStatus number
---@field FollowerMoveStatusValid boolean
---@field FollowerSpeedType number
---@field FollowerSpeedValue number
---@field FollowerSpeedTime number
---@field bFollowerStop boolean
---@field FollowerStopSpeedType number
---@field OwnerMoveStatus number
---@field OutOfFollowerSightDurationTime number
---@field DistanceToFollowLocation number
---@field DistanceToFollowLocation_UnModified number
---@field FollowPointLocation FVector
FAnalysisResultDebug = {}
