---@meta

---@class UAvatarDisplayPoseComponent: USceneComponent
---@field PlayerName string
---@field PlayerUID string
---@field Gender number
---@field InitialAvatarItem ULuaArrayHelper<number>
---@field InitialWeaponItem ULuaArrayHelper<number>
---@field InitialWeaponAttachments ULuaArrayHelper<number>
---@field TeamID number
---@field PoseID number
---@field HeadID number
---@field WeaponSkinKillCount number
local UAvatarDisplayPoseComponent = {}

---@param IsUseLod boolean
function UAvatarDisplayPoseComponent:SpawnAvatar(IsUseLod) end

---@param AvatarResID number
function UAvatarDisplayPoseComponent:CreateAvatarEquipment(AvatarResID) end

function UAvatarDisplayPoseComponent:CreateWeaponAttachmentsSkin() end

function UAvatarDisplayPoseComponent:CreateUpgradeWeaponPendant() end

---@return number
function UAvatarDisplayPoseComponent:GetUpgradeWeaponPendantID() end

function UAvatarDisplayPoseComponent:CreateUpgradeKillCountingScreenID() end

function UAvatarDisplayPoseComponent:GetUpgradeKillCountingScreenID() end

function UAvatarDisplayPoseComponent:PlayAnimMontage() end

---@param LightChannel number
function UAvatarDisplayPoseComponent:SetLightChannel(LightChannel) end
