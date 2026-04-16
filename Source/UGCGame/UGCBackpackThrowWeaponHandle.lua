---@meta

---@class UUGCBackpackThrowWeaponHandle: UUGCBackpackWeaponHandle, IAddNewSkillToOwnerInterface
---@field ProjectileClass AUniversalProjectileCore
---@field IconImagePathOverride FSoftObjectPath
---@field IconPressedImagePathOverride FSoftObjectPath
---@field bEnablePredictLine boolean
---@field bEnableExplosionDelayTime boolean
---@field ExplosionDelayTime number
---@field ReloadID number
---@field bShowInPanelList boolean
---@field SkillsConfig ULuaArrayHelper<FItemSkillsConfig>
---@field SpecificSkillsConfig ULuaMapHelper<string, FItemSkillsConfig>
---@field AutoTriggerSkillInUseHandle boolean
local UUGCBackpackThrowWeaponHandle = {}

---@param pWeapon AUGCProjectileWeapon
function UUGCBackpackThrowWeaponHandle:SetupProperties(pWeapon) end
