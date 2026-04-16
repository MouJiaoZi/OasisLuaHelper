---@meta

---@class EGT_LockPPType
---@field GT_FPP number @锁定第一人称
---@field GT_TPP number @锁定第三人称
EGT_LockPPType = {}


---@class FGT_LockCameraViewTypeData
---@field LockType EGT_LockPPType
---@field bLockSwitch boolean
---@field bLockInVehicle boolean
---@field bRestoreAfterDestroy boolean
FGT_LockCameraViewTypeData = {}


---@class UGameplayTask_LockCameraViewType: UUAEGameplayTask
---@field LockCameraViewTypeData FGT_LockCameraViewTypeData
local UGameplayTask_LockCameraViewType = {}
