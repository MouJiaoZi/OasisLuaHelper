---@meta

---@class FAirDropResourcePath
---@field AirdropBoxMesh FSoftObjectPath
---@field AirdropBoxMaterial FSoftObjectPath
---@field AirdropParachuteMesh FSoftObjectPath
---@field AirdropParachuteMaterial FSoftObjectPath
---@field AirdropSmoke FSoftObjectPath
---@field AirdropFlash FSoftObjectPath
---@field AirdropBoxIdleAnim FSoftObjectPath
---@field AirdropParachuteIdleAnim FSoftObjectPath
---@field RoleAndQualitySelector FRoleAndQualitySelector
FAirDropResourcePath = {}


---FlareGun commercialization drop box and parachute ability handle
---@class UBackpackWeaponFlareGunAbilityHandle: UBackpackWeaponAbilityHandle
---@field AirdropBoxAbilityDropResourcePaths ULuaArrayHelper<FAirDropResourcePath>
---@field bSummonVoice boolean
---@field SummonVoice FSoftObjectPath
---@field AirdropBoxAbilityDropDefaultResourcePath FAirDropResourcePath
local UBackpackWeaponFlareGunAbilityHandle = {}
