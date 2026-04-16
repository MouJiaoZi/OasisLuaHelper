---@meta

---@class FBattleSceneAvatarDisplayInfo
---@field PlayerName string
---@field PlayerUIDStr string
---@field PlayerGender number
---@field bIsMVP boolean
---@field EquipedAvatarList ULuaArrayHelper<number>
---@field EquipedWeaponList ULuaArrayHelper<number>
---@field EquipedWeaponAttachmentSkinList ULuaArrayHelper<number>
FBattleSceneAvatarDisplayInfo = {}


---@class UBattleSceneAvatarDisplayPoseComponent: UAvatarDisplayPoseComponent
---@field MVPShowSetting FAvatarMVPShowSetting
---@field DisplayAvatarItemFilterList ULuaArrayHelper<EAvatarSlotType>
---@field TargetPlayerState ASTExtraPlayerState
---@field AvatarDisplayInfo FBattleSceneAvatarDisplayInfo
---@field DisplayAvatar UCharacterAvatarComponent
local UBattleSceneAvatarDisplayPoseComponent = {}

---@return boolean
function UBattleSceneAvatarDisplayPoseComponent:IsPosePositiontPossessed() end

function UBattleSceneAvatarDisplayPoseComponent:PossessPosePosition() end

function UBattleSceneAvatarDisplayPoseComponent:UnPossessPosePosition() end

---@param BattleAvatarDisplayInfo FBattleSceneAvatarDisplayInfo
---@param IsEnableAvatarEmote boolean
---@param NewMipOffset number
---@param SizeLimited boolean
function UBattleSceneAvatarDisplayPoseComponent:InitDisplayAvatar(BattleAvatarDisplayInfo, IsEnableAvatarEmote, NewMipOffset, SizeLimited) end

---@return number
function UBattleSceneAvatarDisplayPoseComponent:GetAvatarGender() end

---@param IsEnableAvatarEmote boolean
function UBattleSceneAvatarDisplayPoseComponent:EquipClothingForDisplayAvatar(IsEnableAvatarEmote) end

function UBattleSceneAvatarDisplayPoseComponent:EquipWeaponForDisplayAvatar() end

function UBattleSceneAvatarDisplayPoseComponent:ClearDisplayAvatar() end

---@param InDisplayInfo FBattleSceneAvatarDisplayInfo
---@return boolean
function UBattleSceneAvatarDisplayPoseComponent:IsValidDisplayInfo(InDisplayInfo) end

---@param InPlayerName string
---@return boolean
function UBattleSceneAvatarDisplayPoseComponent:MatchCharacter(InPlayerName) end

---@param InPlayEmoteID number
function UBattleSceneAvatarDisplayPoseComponent:OnCharacterPlayEmote(InPlayEmoteID) end

---@param InAnimMontage UAnimMontage
---@param InPlayRate number
---@param StartSectionName string
function UBattleSceneAvatarDisplayPoseComponent:PlayPoseAnimMontage(InAnimMontage, InPlayRate, StartSectionName) end

---@param NewMipOffset number
---@param SizeLimited boolean
function UBattleSceneAvatarDisplayPoseComponent:SetPoseStreamingTextureMipOffset(NewMipOffset, SizeLimited) end

---@param Settings FAvatarMVPShowSetting
---@return boolean
function UBattleSceneAvatarDisplayPoseComponent:GetAvatarMvpShowSetting(Settings) end
