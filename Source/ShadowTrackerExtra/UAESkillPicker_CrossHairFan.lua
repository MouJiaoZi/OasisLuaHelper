---@meta

---@class FCompareSkillPickedTarget
FCompareSkillPickedTarget = {}


---@class UUAESkillPicker_CrossHairFan: UUAESkillPicker
---@field TargetType UObject
---@field TraceDistance number
---@field CenterTraceChannel ECollisionChannel
---@field SweepTraceChannel ECollisionChannel
---@field angle number
---@field section number
---@field startRadius number
---@field bCheckTraceBlock boolean
---@field BlockTraceChannel ECollisionChannel
---@field bSortResult boolean
---@field PickedActorKey any
---@field PickedActorLocKey any
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
local UUAESkillPicker_CrossHairFan = {}

---@param OriginPoint FVector
---@return boolean
function UUAESkillPicker_CrossHairFan:PickTargetsInner(OriginPoint) end
