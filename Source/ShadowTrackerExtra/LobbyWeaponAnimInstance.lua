---@meta

---@class FLobbySpecialWeaponTransform
---@field SpecialWeaponTransformData ULuaMapHelper<string, FTransform>
---@field AttachmentSockets ULuaSetHelper<EWeaponAttachmentSocketType>
FLobbySpecialWeaponTransform = {}


---@class ULobbyWeaponAnimInstance: ULobbyBaseAnimInstance
---@field IsOffHandWeapon boolean
---@field C_WeaponLegRot number
---@field SpecialWeaponTransform FSpecialWeaponTransform
---@field bIncludeDefaultAttachment boolean
---@field C_WeaponState EFreshWeaponStateType
---@field WeaponAnims ULuaMapHelper<EFreshWeaponStateType, UAnimSequence> @Must be Additive Anim
local ULobbyWeaponAnimInstance = {}

---@param idle UAnimSequence
function ULobbyWeaponAnimInstance:SetWeaponAnimIdle(idle) end

---@param leg number
function ULobbyWeaponAnimInstance:SetWeaponLegRot(leg) end

---@return boolean
function ULobbyWeaponAnimInstance:GetWeaponIsPlayingMontage() end

function ULobbyWeaponAnimInstance:TryGetWeaponAndCharacter() end
