---@meta

---辅助瞄准自动锁定组件
---@class UAutoLockAimAssistComponent: UWeaponLogicBaseComponent
---@field LockInterval number
---@field MeshLockSocketName string
---@field CurShootLockLocation FVector
---@field CacheLockNum number
---@field CurLockTargetList ULuaArrayHelper<FTargetPickerEffectResultItem>
---@field CurLockInterval number
---@field bEnableAutoLock boolean
---@field WeaponStateWhiteList ULuaArrayHelper<EFreshWeaponStateType>
---@field bEnableOptimization boolean
local UAutoLockAimAssistComponent = {}

---@param Target AActor
function UAutoLockAimAssistComponent:DoChangeShootLockTarget(Target) end

---@param NewEnable boolean
function UAutoLockAimAssistComponent:SetEnableAutoLock(NewEnable) end

---@param DeltaTime number
function UAutoLockAimAssistComponent:UpdateLock(DeltaTime) end

---@param WeaponHudWidget UHUDWidgetBase
---@param Canvas UCanvas
function UAutoLockAimAssistComponent:DrawHUD(WeaponHudWidget, Canvas) end

---@param BulletStart FVector
---@param ShootTracePoint FVector
---@return FRotator
function UAutoLockAimAssistComponent:OverrideFinalShootRot(BulletStart, ShootTracePoint) end
