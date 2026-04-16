---@meta

---@class FLimitPlayerCameraAction
FLimitPlayerCameraAction = {}


---@class UUAESkillAction_LimitPlayerCamera: UUAESkillAction
---@field MinRotator FRotator
---@field MaxRotator FRotator
---@field bDisableControllerYawRotation boolean
---@field SetMinMaxEnabled boolean
---@field ForceFollowCamera boolean
---@field bDoUnDoOnReset boolean
---@field bNeedSetFreeCameraOnUnDo boolean
---@field ResetToRotation FRotator
---@field LimitPlayerCameraViewPitchLimit string
---@field LimitPlayerCameraViewYawLimit string
---@field LimitPlayerCameraViewRollLimit string
local UUAESkillAction_LimitPlayerCamera = {}
