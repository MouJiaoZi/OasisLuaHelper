---@meta

---@class FSpecialWeaponTransform
---@field SpecialWeaponTransformData ULuaMapHelper<string, FTransform>
---@field AttachmentSockets ULuaSetHelper<EWeaponAttachmentSocketType>
FSpecialWeaponTransform = {}


---@class USTExtraWeaponAnimInstance: UAnimInstanceBase
---@field bGetAnimOnce boolean
---@field C_Charge boolean
---@field C_Tactical boolean
---@field C_WeaponState EFreshWeaponStateType
---@field e_LastWeaponState EFreshWeaponStateType
---@field C_ReloadAnimRate number
---@field C_CustomScopping boolean
---@field C_IsScoping boolean
---@field C_WeaponState_Reload boolean
---@field C_State_Reload boolean
---@field C_State_Charge boolean
---@field C_AlphaForHolder number
---@field C_AlphaForHolderTarget number
---@field C_AlphaForHolderLerpSpeed number
---@field C_SightScopeAlpha number
---@field b_IsInspectingWeapon boolean
---@field bHasPlayedFirstEquipAnim boolean
---@field bAlwaysOpenTripodLeg boolean
---@field IsSetCustomPlayInfo boolean
---@field fReloadInterruptedBlendTime number
---@field DisableBoneSolver boolean
---@field bIsClipEmpty boolean
---@field ClipEmptyCheckDelayTime number
---@field ClipEmptyCheckTime number
---@field CanJumpClipEmpty boolean
---@field bNeedResetGunAmmo boolean
---@field bIsNewFPPAnimInstance boolean @判断当前 AnimInstance 是否是 NewFPP 的
---@field bShouldInitRefPose boolean
---@field InitRefPose FBonesTransfromsWithFPP
---@field NeedCheckNotify boolean
---@field SpecialWeaponTransform FSpecialWeaponTransform
---@field bIncludeDefaultAttachment boolean
---@field WeaponAnims ULuaMapHelper<EFreshWeaponStateType, UAnimSequence> @Must be Additive Anim
local USTExtraWeaponAnimInstance = {}

function USTExtraWeaponAnimInstance:TryGetWeaponAndCharacter() end

---@param NewState EFreshWeaponStateType
function USTExtraWeaponAnimInstance:HandlePlayerWeaponStateChanged(NewState) end

---@param bIsFPP boolean
function USTExtraWeaponAnimInstance:HandleSwitchPPEvent(bIsFPP) end

---@param bIsFPP boolean
function USTExtraWeaponAnimInstance:HandleSwitchPPEventBP(bIsFPP) end

---判断当前 AnimInstance 是否是 NewFPP 的 通过比较 OwningComponent 和 FPPWeaponSkeletalMeshComp_Cache 来精准判断 此方法可以在 bIsNewFPPAnimInstance 字段初始化之前使用
---@return boolean
function USTExtraWeaponAnimInstance:IsNewFPPAnimInstanceByMesh() end

---@param RemainBulletNumToReload number
function USTExtraWeaponAnimInstance:PlayPostReloadWeaponAnimation(RemainBulletNumToReload) end

---@return boolean
function USTExtraWeaponAnimInstance:CheckEnablePlayAnim_Reload() end

---@param bEnable boolean
function USTExtraWeaponAnimInstance:HandleWeaponNewFPPMeshTickEnableChange(bEnable) end

function USTExtraWeaponAnimInstance:RefreshAlphaForHolder() end

---@param bIsFPP boolean
function USTExtraWeaponAnimInstance:HandleSwitchPersonPerspective(bIsFPP) end

---@return boolean
function USTExtraWeaponAnimInstance:CheckCanTriggerAnimNotify() end

---@param TargetChangeSlot ESurviveWeaponPropSlot
function USTExtraWeaponAnimInstance:OnFastWeaponChange(TargetChangeSlot) end

function USTExtraWeaponAnimInstance:UpdateGunAmmoDisplay() end

---@param bReset boolean
function USTExtraWeaponAnimInstance:SetNeedResetGunAmmo(bReset) end

---@return number
function USTExtraWeaponAnimInstance:GetBackpackAmmoNum() end

---@param Index number
function USTExtraWeaponAnimInstance:TryEditorCheckAnimSequenceType(Index) end
