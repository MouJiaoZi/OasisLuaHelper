---@meta

---开火状态射击
---@class UActionEffect_FireWeaponShot: UActionEffect
---@field Key_bIsFirstShot FUAEBlackboardKeySelector
---@field Key_StartFiringLevelTime FUAEBlackboardKeySelector
---@field Key_LastFireLevelTime FUAEBlackboardKeySelector
---@field Key_LastBurstFireLevelTime FUAEBlackboardKeySelector
---@field Key_ShootLockIndex FUAEBlackboardKeySelector
---@field Key_ShootLockThreshold FUAEBlackboardKeySelector
---@field Key_bInEmptyFireState FUAEBlackboardKeySelector
---@field Key_bNeedStopFire FUAEBlackboardKeySelector
local UActionEffect_FireWeaponShot = {}

---@param IsFirstShot boolean
function UActionEffect_FireWeaponShot:HandleFireShot(IsFirstShot) end
