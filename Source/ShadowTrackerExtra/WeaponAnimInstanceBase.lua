---@meta

---@class EWeaponBaseNotifyCheckType
---@field NotCheck number
---@field CheckAll number
---@field CheckShootWeapon number
EWeaponBaseNotifyCheckType = {}


---@class UWeaponAnimInstanceBase: UAnimInstance
---@field C_Charge boolean
---@field C_Tactical boolean
---@field bReloadType1 boolean
---@field C_WeaponState EFreshWeaponStateType
---@field e_LastWeaponState EFreshWeaponStateType
---@field C_ReloadAnimRate number
---@field C_CustomScopping boolean
---@field C_WeaponState_Reload boolean
---@field C_State_Reload boolean
---@field C_State_Charge boolean
---@field C_IsScoping boolean
---@field C_SightScopeAlpha number
---@field C_AlphaForHolder number
---@field bEnableCalReloadRateWithWeaponAnim boolean
---@field bShouldPlayFireMontage boolean
---@field DisableBoneSolver boolean
---@field bIsClipEmpty boolean
---@field bIsNewFPP boolean
---@field bEnableUpdateAmmos boolean
---@field AmmoPrefix string
---@field bEnableUpdateChain boolean
---@field BulletNumInBarrel number
---@field AmmoHideAllThreshold number
---@field bNeedResetClip boolean
---@field bNeedHideAllIfLack boolean
---@field TotalChainOffset number
---@field NotifyCheckType EWeaponBaseNotifyCheckType
---@field bNotifyCheckIsShootWeapon boolean
---@field SpecialWeaponTransform FSpecialWeaponTransform
---@field bIncludeDefaultAttachment boolean
---@field WeaponAnims ULuaMapHelper<EFreshWeaponStateType, UAnimSequence> @Must be Additive Anim
local UWeaponAnimInstanceBase = {}

---@param NewState EFreshWeaponStateType
function UWeaponAnimInstanceBase:HandlePlayerWeaponStateChanged(NewState) end

---@param RemainBulletNumToReload number
function UWeaponAnimInstanceBase:PlayPostReloadWeaponAnimation(RemainBulletNumToReload) end

---@param ReloadMontage UAnimMontage
---@param PlayRate number
function UWeaponAnimInstanceBase:PlayReloadWeaponAnimation(ReloadMontage, PlayRate) end

function UWeaponAnimInstanceBase:HandleBulletNumChanged() end

function UWeaponAnimInstanceBase:HandleWeaponEndReload() end

---@param bReset boolean
function UWeaponAnimInstanceBase:SetNeedResetClip(bReset) end

---@param bHide boolean
function UWeaponAnimInstanceBase:SetNeedHideAllIfLack(bHide) end

---@param DisplayType EAmmoDisplayType
function UWeaponAnimInstanceBase:UpdateAmmoDisplay(DisplayType) end

---@param Index number
function UWeaponAnimInstanceBase:TryEditorCheckAnimSequenceType(Index) end
