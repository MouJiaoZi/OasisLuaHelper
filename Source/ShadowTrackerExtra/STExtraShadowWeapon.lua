---@meta

---@class ASTExtraShadowWeapon: ASTExtraWeapon
---@field bCopyOnNextTick boolean
---@field bContinuousCopy boolean
---@field bEnableCopy boolean
---@field NotUpdateAnimationPlayerStates ULuaSetHelper<EPawnState>
local ASTExtraShadowWeapon = {}

---@param AnimMontage UAnimMontage
function ASTExtraShadowWeapon:OnMontageStarted(AnimMontage) end

function ASTExtraShadowWeapon:OnMainWeaponAvatarMeshChanged() end

function ASTExtraShadowWeapon:OnShadowEnabled() end

function ASTExtraShadowWeapon:OnShadowUnEnabled() end

---@return boolean
function ASTExtraShadowWeapon:ShouldEnableShadow() end

---@param bCastShadow boolean
---@param bCastHiddenShadow boolean
function ASTExtraShadowWeapon:BP_SetWeaponCastShadowInternal(bCastShadow, bCastHiddenShadow) end

function ASTExtraShadowWeapon:UpdateShadow() end

---@param bCastShadow boolean
function ASTExtraShadowWeapon:UpdateShadowWithIntent(bCastShadow) end

function ASTExtraShadowWeapon:PlayMagazineOut() end

function ASTExtraShadowWeapon:PlayMagazineIn() end

function ASTExtraShadowWeapon:OnShootWeaponReloadStart() end

function ASTExtraShadowWeapon:OnShootWeaponReloadEnd() end

---@param WeaponSlotID number
---@param bIsEquipped boolean
function ASTExtraShadowWeapon:UpdateShadowWithParams(WeaponSlotID, bIsEquipped) end

---@param FreshWeaponState EFreshWeaponStateType
function ASTExtraShadowWeapon:HandlePlayerWeaponStateChanged(FreshWeaponState) end

---@param PawnState EPawnState
function ASTExtraShadowWeapon:HandlePlayerStateEnter(PawnState) end

---@param AsyncLoadID number
---@param AvatarComponent UAvatarComponent
function ASTExtraShadowWeapon:HandleMainWeaponAvatarMeshChanged(AsyncLoadID, AvatarComponent) end

function ASTExtraShadowWeapon:AttachMeshToSocket() end
