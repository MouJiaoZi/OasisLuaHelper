---@meta

---@class FPeekParamsNewFPP
---@field LeftMaxAngle number
---@field RightMaxAngle number
---@field LeftMaxOffset number
---@field RightMaxOffset number
---@field LeftMaxCameraOffset FVector
---@field RightMaxCameraOffset FVector
---@field LeftMaxCameraRotator number
---@field RightMaxCameraRotator number
FPeekParamsNewFPP = {}


---@class UNewFPPAnimFMObj_Weapon: USTExtraAnimFMObj_Weapon
---@field fReloadInterruptedBlendTime number
---@field fReloadBufferToleranceTime number
---@field e_LastWeaponState EFreshWeaponStateType
---@field FireMontagePlayShellDropFXName string
---@field f_FireMontagePlayShellDropFXDelayTime number
---@field FireMontagePlayShellDropFXHandle FTimerHandle
---@field b_C_IsWeaponReloading boolean
---@field ReloadBulletCachedRPCNUM number
---@field IsSetCustomPlayInfo boolean
---@field bIsWeaponFiring boolean
---@field b_C_UseSightTypeFireAlpha boolean
---@field f_C_SightTypeFireAlpha number
---@field f_C_SightTypeBoltAlpha number
---@field f_C_SightTypeReloadAlpha number
---@field UseScopeFireSightTypeMap ULuaMapHelper<ESightType, number>
---@field UseScopeBoltSightTypeMap ULuaMapHelper<ESightType, number>
---@field UseScopeReloadSightTypeMap ULuaMapHelper<ESightType, number>
---@field ReloadOffsetUseRelative boolean
---@field UsePrerequisite boolean
---@field UseTacticsReloadOffsetLeftHand boolean
---@field DestinReloadOffsetLeftHandLocation FVector
---@field DestinTacticsReloadOffsetLeftHandLocation FVector
---@field DestinReloadOffsetLeftHandRotation FRotator
---@field CurrentReloadOffsetLeftHandLocation FVector
---@field CurrentReloadOffsetLeftHandRotation FRotator
---@field ReloadLeftHandOffsetName string
---@field PrerequisiteNewFPPWeaponMesh UMeshComponent
---@field PrerequisiteNewFPPWeaponRoot USceneComponent
---@field f_C_FireModeAlphaADS number
---@field b_HasShootWeapon boolean
---@field b_HasGrenadeWeapon boolean
---@field f_C_FireModeAlpha number
---@field b_IsInspectingWeaponLast boolean
---@field bIsDoingSkill boolean
---@field bUseDoingSkillRotatorOffset boolean
---@field bCheckUnEquipAnimPlaying boolean
---@field fCheckUnEquipAnimPlayingTime number
---@field bUseDoingSkillRotatorOffsetBlendInTime number
---@field CurrentDoingSkillRotatorOffsetTime number
---@field bUseDoingSkillRotatorOffsetDelayTimePercent number
---@field bUseDoingSkillRotatorOffsetDelayTime number
---@field bUseDoingSkillRotatorOffsetBlendInTimeShort number
---@field bUseDoingSkillRotatorOffsetBlendInTimeLone number
---@field DefaultDoingSkillRotatorOffsetTime number
---@field IgnoreCheckSkillClassName ULuaArrayHelper<string>
---@field DoingSkillRotatorOffsetTimeMap ULuaMapHelper<string, number>
---@field IgnoreSwitchToEmpty boolean
---@field IgnoreSwitchToEmptyTime number
---@field IgnoreSwitchToEmptySkillClassName ULuaArrayHelper<string>
---@field bIsPlayLeftFire boolean
---@field bIsPlayingWeaponSwitch boolean
---@field PlayWeaponSwitchAnimPercent number
---@field LastTargetAnimType ECharacterNewFPPAnimType
---@field SwitchAnimData FPlayerAnimData
local UNewFPPAnimFMObj_Weapon = {}

---@param NewState EFreshWeaponStateType
function UNewFPPAnimFMObj_Weapon:HandlePlayerWeaponStateChanged(NewState) end

---@param IsEquip boolean
---@param SelfRef AActor
---@param Weapon ASTExtraWeapon
function UNewFPPAnimFMObj_Weapon:HandlePostLocalEquipWeapon(IsEquip, SelfRef, Weapon) end

---@param Weapon ASTExtraShootWeapon
function UNewFPPAnimFMObj_Weapon:HandleWeaponFireModeChange(Weapon) end

---@param Slot ESurviveWeaponPropSlot
function UNewFPPAnimFMObj_Weapon:HandleWeaponPropSlotChange(Slot) end

---@param RemainBulletNumToReload number
function UNewFPPAnimFMObj_Weapon:PlayPostReloadWeaponAnimation(RemainBulletNumToReload) end

---@param SelfRef ASTExtraBaseCharacter
function UNewFPPAnimFMObj_Weapon:HandlePlayerPickUp(SelfRef) end

function UNewFPPAnimFMObj_Weapon:HandleLocalForceFinishSwitchWeapon() end

---@param bIsBegin boolean
function UNewFPPAnimFMObj_Weapon:HandlePlayerScopeIn(bIsBegin) end

function UNewFPPAnimFMObj_Weapon:UpdateDestinReloadOffsetLeftHand() end

---@param InSet boolean
function UNewFPPAnimFMObj_Weapon:UpdateMeshToPrerequisiteWeapon(InSet) end

---@param ChangeEventFrom UAvatarComponent
function UNewFPPAnimFMObj_Weapon:OnWeaponAvatarMeshChanged(ChangeEventFrom) end

---@param WeaponSlotID number
---@param IsEquipped boolean
function UNewFPPAnimFMObj_Weapon:OnWeaponPartsEquipped(WeaponSlotID, IsEquipped) end

function UNewFPPAnimFMObj_Weapon:HandEventOnFireMontagePlayShellDropFX() end


---@class UNewFPPAnimFMObj_Weapon_GunOperation: USTExtraAnimFMObj_Weapon_GunOperation
local UNewFPPAnimFMObj_Weapon_GunOperation = {}


---@class UNewFPPAnimFMObj_WeaponPeek: USTExtraAnimFMObj_WeaponPeek
---@field DefaultPeekParams FPeekParamsNewFPP
---@field CurPeekFrameRate number
---@field CurPeekAngle number
---@field CurPeekOffset number
---@field CurPeekCameraOffset FVector
---@field CurPeekCameraRotator number
local UNewFPPAnimFMObj_WeaponPeek = {}

---@param EventMsg string
function UNewFPPAnimFMObj_WeaponPeek:HandleOwnerAnimEvent(EventMsg) end

---@param NewState EFreshWeaponStateType
function UNewFPPAnimFMObj_WeaponPeek:HandlePlayerWeaponStateChanged(NewState) end


---@class UNewFPPAnimFMObj_Weapon_Aim: USTExtraAnimFMObj_Weapon_Aim
local UNewFPPAnimFMObj_Weapon_Aim = {}


---@class UNewFPPAnimFMObj_Weapon_Grenade: UAnimFunctionModule_ObjInstance
---@field ThrowState EThrowState
---@field ThrowModeHigh number
local UNewFPPAnimFMObj_Weapon_Grenade = {}
