---@meta

---@class EShowMoveLogFlag
---@field MVLogFlag_None number
---@field MVLogFlag_Base number @基础
---@field MVLogFlag_PerformMovement number @PerformMovement
---@field MVLogFlag_Any number
---@field MVLogFlag_PhysWalking number @PhysWalking
---@field MVLogFlag_CustomMoveAlongFloor number @CustomMoveAlongFloor
---@field MVLogFlag_DragOnGround number @DragOnGround
---@field MVLogFlag_PhysFalling number @PhysFalling
---@field MVLogFlag_SafeMoveUpdatedComponent number @SafeMoveUpdatedComponent
---@field MVLogFlag_MoveUpdatedComponentImpl number @MoveUpdatedComponentImpl
---@field MVLogFlag_PhysSwimming number @PhysSwimming
---@field MVLogFlag_ShowImpulse number @ShowImpulse
---@field MVLogFlag_ShowImpulseStack number @ShowImpulseStack
---@field MVLogFlag_ShowTickPrerequisite number @ShowTickPrerequisite
---@field MVLogFlag_ShowTeleport number @ShowTeleport 
---@field MVLogFlag_SimulateMovement number @SimulateMovement
---@field MVLogFlag_ServerMove number @ServerMove
---@field MVLogFlag_CheckClientError number @CheckClientError
---@field MVLogFlag_Stack number @Stack
---@field MVLogFlag_CustomMovement number @CustomMovement
---@field MVLogFlag_ResolvePenetration number @ResolvePenetration
EShowMoveLogFlag = {}


---@class EMoveHeadShowFlag
---@field MVHead_None number @关闭
---@field MVHead_Base number @Base信息
---@field MVHead_Prerequisite number @Tick依赖
---@field MVHead_Capsule number @胶囊体信息
---@field MVHead_Collision number @碰撞信息
---@field MVHead_Any number
EMoveHeadShowFlag = {}


---@class EMoveDebugDrawFlag
---@field MVDebugDraw_None number @关闭
---@field MVDebugDraw_Path number @移动轨迹
---@field MVDebugDraw_Any number
EMoveDebugDrawFlag = {}


---@class EImportantMovelogShowType
---@field MVShowType_None number
---@field MVShowType_Log number
---@field MVShowType_Screen number
---@field MVShowType_HUD number
---@field MVShowType_Tips number
---@field MVShowType_MessageBox number
---@field MVShowType_GMFeedBack number
EImportantMovelogShowType = {}


---@class FMoveDebugSceneActorInfo
---@field Tag string
---@field ActorName string
---@field ActorLocation FVector
---@field ActorRotation FRotator
---@field ActorScale FVector
---@field ComponentName string
---@field ComponentLocation FVector
---@field ComponentRotation FRotator
---@field ComponentScale FVector
---@field ImpactPoint FVector
---@field FaceIndex number
---@field Mobility number
FMoveDebugSceneActorInfo = {}


---@class FCharacterClientMoveLogInfo
---@field CameraLocation FVector
---@field CameraForward FVector
FCharacterClientMoveLogInfo = {}


---@class FCharacterMoveLogPropertyInfo
---@field PropertyName string
---@field PropertyValue string
FCharacterMoveLogPropertyInfo = {}


---@class FCharacterMoveLogInfo
---@field SceneActorInfos ULuaArrayHelper<FMoveDebugSceneActorInfo>
---@field SentAdjustCountCurMoveMode number
---@field CapsuleHalfHeight number
---@field CapsuleRadius number
---@field bCollisionEnabled boolean
---@field bActive boolean
---@field bTickEnabled boolean
---@field bRepMovement boolean
---@field bCharacterReplicates boolean
---@field bComponentReplicates boolean
---@field Role ENetRole
---@field CharacterLocation FVector
---@field Velocity FVector
---@field Acceleration FVector
---@field MaxSpeed number
---@field PackedMovementMode number
---@field CustomMoveStateStr string
---@field TickFPS number
---@field TickWorldFPS number
---@field CustomMovePropertyInfos ULuaArrayHelper<FCharacterMoveLogPropertyInfo>
FCharacterMoveLogInfo = {}


---@class FImportantMoveLogInfo
---@field Content string
---@field Time number
---@field ShowType EImportantMovelogShowType
FImportantMoveLogInfo = {}


---@class FMoveLogRecordInfo
FMoveLogRecordInfo = {}


---@class FMoveExecFlowRecord
FMoveExecFlowRecord = {}
