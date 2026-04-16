---@meta

---@class EDebugLineNetMode
---@field Authority number
---@field Autonomous number
---@field AuthorityAndAutonomous number
EDebugLineNetMode = {}


---@class FCompareHitResultByDistance
FCompareHitResultByDistance = {}


---@class UBattleFieldPicker_CrossHairFan: UActorComponent
---@field bNeedAiming boolean
---@field TargetResults ULuaArrayHelper<FHitResult>
---@field TargetType UObject
---@field TraceDistance number
---@field CenterTraceChannel ECollisionChannel
---@field SweepTraceChannel ECollisionChannel
---@field angle number
---@field section number
---@field startRadius number
---@field MaxTraceDistance number
---@field bCheckTraceBlock boolean
---@field bCheckFilters boolean
---@field ActorFilterList ULuaArrayHelper<UActorFilter>
---@field bSortResult boolean
---@field DebugLineNetMode EDebugLineNetMode
---@field DebugLineLifeTime number
---@field DebugPointSize number
---@field bDrawDebugLine boolean
---@field bDrawSweepLine boolean
---@field bDrawDebugLine_TraceBlock boolean
---@field StandHalfHeight number
---@field CrouchHalfHeight number
---@field ProneHalfHeight number
---@field CrouchCameraData FCameraOffsetData
---@field ProneCameraData FCameraOffsetData
---@field PeekLeftCameraData FCameraOffsetData
---@field PeekRightCameraData FCameraOffsetData
---@field IndoorLowerCameraStand FCameraOffsetData
---@field IndoorLowerCameraCrouch FCameraOffsetData
---@field IndoorLowerCameraProne FCameraOffsetData
---@field SocketOffset FVector
---@field TargetOffset FVector
---@field bHandleIndoor boolean
local UBattleFieldPicker_CrossHairFan = {}

---@param OriginPoint FVector
---@return boolean
function UBattleFieldPicker_CrossHairFan:PickTargetsInner(OriginPoint) end
