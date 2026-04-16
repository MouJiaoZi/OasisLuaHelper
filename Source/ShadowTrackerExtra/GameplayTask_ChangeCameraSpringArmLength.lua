---@meta

---@class FGameplayTask_ChangeCameraSpringArmLength_Data
---@field NewSpringArm number
---@field bModifyEnableCameraLag boolean
---@field bEnableCameraLag boolean
---@field SocketOffset FVector
---@field TargetOffset FVector
---@field bOverrideSocket boolean
---@field bOverrideTarget boolean
---@field CameraDataName string
---@field bForceUndo boolean
FGameplayTask_ChangeCameraSpringArmLength_Data = {}


---@class UGameplayTask_ChangeCameraSpringArmLength: UUAEGameplayTask
---@field ChangeCameraSpringArmLength_Data FGameplayTask_ChangeCameraSpringArmLength_Data
---@field CameraData FCameraOffsetData
---@field PrevIndoorCameraData FCameraOffsetData
local UGameplayTask_ChangeCameraSpringArmLength = {}
