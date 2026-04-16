---@meta

---@class ELockPPType
---@field ELPPT_FPP number @锁定第一人称
---@field ELPPT_TPP number @锁定第三人称
ELockPPType = {}


---@class FLockCameraViewTypeData
FLockCameraViewTypeData = {}


---@class UUAESkillAction_LockCameraViewType: UUAESkillAction
---@field LockType ELockPPType
---@field bUseNewLockFunc boolean
---@field bRestoreAfterSkill boolean
---@field bLockSwitch boolean
---@field bForceUndo boolean
---@field bLockInVehicle boolean
local UUAESkillAction_LockCameraViewType = {}
