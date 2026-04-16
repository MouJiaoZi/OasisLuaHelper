---@meta

---@class FChangeCameraSpringArmLengthData
---@field PrevIndoorCameraData FCameraOffsetData
FChangeCameraSpringArmLengthData = {}


---@class UUAESkillAction_ChangeCameraSpringArmLength: UUAESkillAction
---@field NewSpringArm number
---@field bModifyEnableCameraLag boolean
---@field bEnableCameraLag boolean
---@field SocketOffset FVector
---@field TargetOffset FVector
---@field bOverrideSocket boolean
---@field bOverrideTarget boolean
---@field bOverrideOperateType boolean
---@field OperateType ECameraDataOperateType
---@field CameraDataName string
---@field CameraData FCameraOffsetData
---@field bForceUndo boolean
---@field bShowLog boolean
local UUAESkillAction_ChangeCameraSpringArmLength = {}
