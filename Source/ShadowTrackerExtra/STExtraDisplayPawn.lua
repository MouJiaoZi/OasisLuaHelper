---@meta

---@class EDisplayWeaponType
---@field MainWeaponOne number
---@field MainWeaponTwo number
---@field Pistol number
---@field Melee number
---@field Grenade number
EDisplayWeaponType = {}


---@class ASTExtraDisplayPawn: ASTExtraLobbyCharacter
---@field WeaponAttachSocketMap ULuaMapHelper<EDisplayWeaponType, string>
---@field WeaponAttachSocketMapNoBag ULuaMapHelper<EDisplayWeaponType, string>
local ASTExtraDisplayPawn = {}

---@param Channel number
function ASTExtraDisplayPawn:SwitchLightChannel(Channel) end

---@param WeaponType EDisplayWeaponType
---@param Weapon ASTExtraWeapon
---@param BagLevel number
---@return string
function ASTExtraDisplayPawn:GetWeaponAttachSocketDirectly(WeaponType, Weapon, BagLevel) end

---@param Weapon ASTExtraWeapon
---@param WeaponType EDisplayWeaponType
---@param BagLevel number
function ASTExtraDisplayPawn:AttachDisplayWeaponToBackDirectly(Weapon, WeaponType, BagLevel) end

---@param SlotType number
---@param IsEquipped boolean
function ASTExtraDisplayPawn:OnAvatarEquiped(SlotType, IsEquipped) end
