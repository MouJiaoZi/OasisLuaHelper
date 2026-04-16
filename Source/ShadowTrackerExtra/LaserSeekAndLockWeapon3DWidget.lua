---@meta

---@class ULaserSeekAndLockWeapon3DWidget: USeekAndLockWeapon3DWidget
---@field CurStage ELaserTraceUIStage
local ULaserSeekAndLockWeapon3DWidget = {}

---@param NewStage ELaserTraceUIStage
function ULaserSeekAndLockWeapon3DWidget:BPOnTraceUIStageChange(NewStage) end

---@param OwnerActor AActor
---@param WidgetComponent UWidgetComponent
function ULaserSeekAndLockWeapon3DWidget:BindCustomUserEvent(OwnerActor, WidgetComponent) end

---@param bEnter boolean
function ULaserSeekAndLockWeapon3DWidget:HandlePostEnterLaserTraceState(bEnter) end

---@param bNear boolean
function ULaserSeekAndLockWeapon3DWidget:HandlePostNotifyBulletNearTarget(bNear) end
