---@meta

---跟踪导弹准心组件
---@class USeekAndLockCrossHairComponent: UCrossHairComponent
---@field BoxFrameUIPath string
---@field LockFrameCornerLineSize FVector2D
---@field LockFrameColorConfig ULuaMapHelper<ESeekAndLockStage, FLinearColor>
---@field bDrawDebugSeekAndLockFrame boolean
---@field bHasShowSeekAndLock3DUI boolean
local USeekAndLockCrossHairComponent = {}

---@param WeaponHudWidget UHUDWidgetBase
---@param Canvas UCanvas
function USeekAndLockCrossHairComponent:DrawHUD(WeaponHudWidget, Canvas) end
