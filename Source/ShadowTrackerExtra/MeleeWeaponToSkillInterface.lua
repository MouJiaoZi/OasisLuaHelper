---@meta

---@class IMeleeWeaponToSkillInterface
IMeleeWeaponToSkillInterface = {}

---@param IsPressed boolean
---@return EUTSkillEntry
function IMeleeWeaponToSkillInterface:GetSkillEntryForMeleeWeapon(IsPressed) end

---@return number
function IMeleeWeaponToSkillInterface:GetSkillIndexForMeleeWeapon() end


---@class IWeaponDisuseCancelInterface
IWeaponDisuseCancelInterface = {}
