---@meta

---@class FSAPlayCameraAnimInstanceStruct
FSAPlayCameraAnimInstanceStruct = {}


---@class UUAESkillAction_CameraAnim: UUAESkillAction
---@field bLocalOnly boolean
---@field bResetCamera boolean
---@field bForceTPP boolean
---@field bLockCameraRotation boolean
---@field fResetCameraRotation number
---@field bStopWhenPhaseFinished boolean
---@field bPlayWhenSpectating boolean
local UUAESkillAction_CameraAnim = {}

function UUAESkillAction_CameraAnim:ResetLookInput() end

---@return boolean
function UUAESkillAction_CameraAnim:ShouldPlayWhenSpectating() end
