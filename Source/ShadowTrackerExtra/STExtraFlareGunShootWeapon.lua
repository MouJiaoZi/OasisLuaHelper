---@meta

---@class ASTExtraFlareGunShootWeapon: ASTExtraShootWeapon
---@field BulletTemplate ASpecialBulletBase
---@field ShowAirDropTypeUI boolean
---@field LimitTimeEnd number
local ASTExtraFlareGunShootWeapon = {}

---@return EAirDropType
function ASTExtraFlareGunShootWeapon:GetCurrentAirDropType() end

---@return number
function ASTExtraFlareGunShootWeapon:GetTimeLimitRemainingTime() end
