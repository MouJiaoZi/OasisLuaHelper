---@meta

---@class USTExtraSCA_CommonScope: USightActionLerpNode
---@field ScopeArmEnableCameraLag boolean
---@field ScopeArmEnableCameraRotationLag boolean
---@field IgnoreHandleInFold boolean
---@field SpectatingCloseSpringArmLag boolean
---@field IsSetSpectatingCloseSpringArmLag boolean
---@field ScopeTargetCameraMode EPlayerCameraMode
---@field ScopeTargetCameraModeNewFPP EPlayerCameraMode
---@field LerpScopeAngleTime number
---@field LerpScopeAngleSpeed number
---@field fSetScopeAnimToDestinAlpha number
---@field HiddenCloseSightTypeList ULuaArrayHelper<ESightType>
---@field bIsFirstViewScope boolean
---@field fFirstViewScopeAnimAlpha number
---@field fFirstViewScopeAnimLoopAlpha number
---@field fScopeDepthOfViewScale number
---@field fScopeDepthOfViewStartAlpha number
---@field bIsOpenDepthOfView boolean
---@field TriggerPlaySoundAlpha FVector2D
---@field IsTriggerPlaySound FIntPoint
local USTExtraSCA_CommonScope = {}

---@param WeapinInstanceID number
function USTExtraSCA_CommonScope:OnAngleChange(WeapinInstanceID) end

---@param InResult boolean
function USTExtraSCA_CommonScope:OnHandFoldChange(InResult) end

---@param WeaponSlotID number
---@param IsEquipped boolean
function USTExtraSCA_CommonScope:HandleScopeMeshLoaded(WeaponSlotID, IsEquipped) end

---@param TypeLast ESightType
---@param TypeNew ESightType
function USTExtraSCA_CommonScope:HandleSightTypeChange(TypeLast, TypeNew) end

function USTExtraSCA_CommonScope:HandleSightIDChange() end

---@param InForce boolean
function USTExtraSCA_CommonScope:UpdateOpenDepthOfView(InForce) end

---@param CharacterAvatar UCharacterAvatarComponent
---@param slotType EAvatarSlotType
---@param visible boolean
---@param isForce boolean
---@param MaskValue number
function USTExtraSCA_CommonScope:SetAvatarVisibility_Override(CharacterAvatar, slotType, visible, isForce, MaskValue) end
