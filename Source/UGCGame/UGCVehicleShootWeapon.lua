---@meta

---@class AUGCVehicleShootWeapon: AVehicleShootWeapon
---@field UGCCrossHairPresetType EUGCCrossHairPresetType
---@field CrossHairArray ULuaArrayHelper<FUGCCrossHairPreset>
---@field ReloadTimeFactorWrapper FGameAttributeProperty
---@field SwitchTimeFactorWrapper FGameAttributeProperty
---@field ShootIntervalFactorWrapper FGameAttributeProperty
---@field RecoilFactorWrapper FGameAttributeProperty
---@field DeviationFactorWrapper FGameAttributeProperty
---@field BaseImpactDamageWrapper FGameAttributeProperty
---@field MinimumImpactDamageWrapper FGameAttributeProperty
---@field BulletFireSpeedWrapper FGameAttributeProperty
---@field BulletRangeWrapper FGameAttributeProperty
---@field MaxBulletNumInBarrelWrapper FGameAttributeProperty
---@field MaxBulletNumInOneClipWrapper FGameAttributeProperty
---@field AutoShootIntervalWrapper FGameAttributeProperty
---@field BurstShootCDWrapper FGameAttributeProperty
---@field BurstShootBulletsNumWrapper FGameAttributeProperty
---@field BurstShootIntervalWrapper FGameAttributeProperty
---@field ReloadID number
---@field OnMaxBulletNumInOneClipChangeDelegate FOnAttrValueChangedDynamicDelegate
---@field NoCostBulletNum number
local AUGCVehicleShootWeapon = {}

---@param AttrName string
---@param CurValue number
function AUGCVehicleShootWeapon:OnMaxCDOBulletNumInOneClipChange(AttrName, CurValue) end
