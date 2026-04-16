---@meta

---This is used to Execute the Events of Waypoint.
---@class UBTTask_GeneralExecuteEventsOfWayPoint: UBTTaskNode
---@field CurrentEventWayPointActor any @EventWayPoint Actor Blackboard Key Selector
---@field bEnableWait boolean @True: Will wait a certain time(Wait Time). The "RotatePawnOnReached" of the "AIEventWayPointActor" should be true to use this.
---@field CurveFinishWaitTime number @转身结束立刻释放技能动作融合有点问题 多等待一段时间
---@field FixedWaitTime number @Seconds. This is Valid when WaitTimeCurveFloat is none.
---@field bDirectRotateAIOrRotateToControllerRotation boolean @True: Will Direct Rotate the AI(Call "SetActorRotation()"). Will Set AI Pawn Rotation direct to Rotation of AIWaypointActor. But the Rotation of Mesh in the AI Pawn is interpolated(by other logic: see the "bIsTurning" property of "USTSimpleCharacterMovementComponent" and "bEnableTurnAnimation" Property of the "ASTExtraSimpleCharacter"). False: Rotate the AI To ControllerRotation(Call "AIController->SetControlRotation()").
---@field CacheWayPointEvents ULuaArrayHelper<FWayPointEvent>
local UBTTask_GeneralExecuteEventsOfWayPoint = {}
