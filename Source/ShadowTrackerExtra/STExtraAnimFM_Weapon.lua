---@meta

---@class FSTExtraAnimFM_Weapon
---@field b_HasWeapon boolean
---@field e_WeaponType EWeaponType
---@field e_WeaponTypeNew EWeaponTypeNew
---@field e_WeaponHoldType EWeaponHoldType
---@field e_WeaponSingleHandType EWeaponSingleHandHoldType
---@field e_WeaponState EFreshWeaponStateType
---@field e_LastWeaponType EWeaponType
---@field b_IsCastingGenerate boolean
---@field b_IsOnVehicle_AND_C_IsCastingGenerate boolean
---@field b_IsUsingFlareGun boolean
---@field b_IsAdditiveFlare boolean
---@field b_IdleAddtiveValid boolean
---@field b_IsMeleeAttack boolean
---@field b_IsSwitchOnlyBlendArm_OnMove boolean
---@field b_IsWeaponForceSwitchOnlyBlendArm boolean
---@field b_IsPeeking boolean
---@field b_WeaponState_EQ_SwitchWeapon boolean
---@field b_KeepSwitchWeaponAnim boolean
---@field f_WeaponState_SwitchWeapon_BlendTime number
---@field b_Crouch_SwitchWeapon_Move boolean
---@field b_UsingAdditionalWeapon boolean
---@field b_DualWeildWithAdditionalWeapon boolean
---@field b_IsInspectingWeapon boolean
---@field b_IsDyingUseWeaponAnimValid boolean
---@field b_IsWeaponReloading boolean
---@field b_IsInspectingLast boolean
---@field ReloadOffsetUseRelative boolean
---@field UseTacticsReloadOffsetLeftHand boolean
---@field DestinReloadOffsetLeftHandLocation FVector
---@field DestinTacticsReloadOffsetLeftHandLocation FVector
---@field DestinReloadOffsetLeftHandRotation FRotator
---@field CurrentReloadOffsetLeftHandLocation FVector
---@field CurrentReloadOffsetLeftHandRotation FRotator
---@field ReloadLeftHandOffsetName string
---@field bIsDriverUsePistol boolean
---@field bIsDriver boolean
FSTExtraAnimFM_Weapon = {}


---@class FSTExtraAnimFM_Weapon_GunOperation
---@field f_FolderFactorInterpSpeed number
---@field f_HandleFolderAlphaFactor number
---@field f_FolderAlphaInterpSpeed number
---@field f_LimitPlayObstructedAnimMaxSpeed number
---@field WeaponReloadSlotIndex number
---@field f_FireAlpha number
---@field b_WeaponState_EQ_Reload boolean
---@field f_WeaponState_EQ_Reload number
---@field b_IsReloadMontagePlaying boolean
---@field ReloadMontageRemainingTime number
---@field b_OnVehicle_LeanOut_NarrowSeat_Reload boolean
---@field b_ReloadAnimAdditive boolean
---@field f_ReloadAnimAdditive_Alpha number
---@field f_ReloadAnimAdditive_Alpha_SpeedIn number
---@field f_ReloadAnimAdditive_Alpha_SpeedOut number
---@field f_HandleFolderFactor number
---@field f_HandleFolderFactorLerp number
---@field f_ProneHandleAlpha number
---@field f_HandleFolderAlpha number
---@field b_ShouldBlendAimOffsetWhenObstructed boolean
---@field b_ShouldAdditiveForegripObstructed boolean
---@field b_HasObstructedAnim boolean
---@field b_ShouldPlayObstructedAnim boolean
---@field b_ShouldFalseHand_LeftObstructedAnim boolean
---@field WeaponReloadMethod EWeaponReloadMethod
---@field r_RecoilADSRotation FRotator
---@field b_IsBolting boolean
---@field b_DisableLeftHandBolting boolean
---@field b_DisableBasePoseHandBolting boolean
---@field b_DisableLeftHandFireAdditive boolean
---@field RandomWeaponAnimSectionIndex ULuaMapHelper<EFreshWeaponStateType, number>
---@field e_FireType EDualWeaponFireType
---@field f_FireTypeBlend_Right number
---@field f_FireTypeBlend_Left number
---@field OutPlayerAnimData FPlayerAnimData
---@field TempShouldFoldHand boolean
FSTExtraAnimFM_Weapon_GunOperation = {}


---@class FSTExtraAnimFM_WeaponPeek
---@field b_IsNewFPPModeUseViewRotation boolean
---@field f_PeekSpeed number
---@field b_ShouldAdditivePeekAnim boolean
---@field f_PeekFrameRate number
---@field f_ViewRotation_IN_Scoping number
---@field f_DeltaYawBetweenViewAndActor number
---@field f_LastViewRotationPitch number
---@field f_LastViewRotationYaw number
---@field f_PeekDestFrameRate number
---@field f_ViewRotationInterpSpeed number
---@field CachedLastViewRotationPitch number
---@field CachedLastViewRotationYaw number
---@field b_SwitchPeekAnim boolean
---@field f_SwitchPeekAnimTime number
---@field f_SwitchPeekAnimTimeCounter number
---@field b_IsReplacePeekAim boolean
---@field b_PeekFrameRateNEQ0_AND_IsReplacePeekAim boolean
FSTExtraAnimFM_WeaponPeek = {}


---@class FSTExtraAnimFM_WeaponPeek_Pistol
---@field b_AdditiveAimBlend boolean
FSTExtraAnimFM_WeaponPeek_Pistol = {}


---@class FSTExtraAnimFM_WeaponPeek_FlareGun
FSTExtraAnimFM_WeaponPeek_FlareGun = {}


---@class FSTExtraAnimFM_WeaponDrop
---@field AimBlendSpaceAlpha number
FSTExtraAnimFM_WeaponDrop = {}


---@class FSTExtraAnimFM_Weapon_M2
---@field v_LeftHandLocation FVector
---@field v_RightHandLocation FVector
---@field r_LeftHandRotation FRotator
---@field r_RightHandRotation FRotator
---@field b_ShouldApplyHandsIK boolean
---@field LeftHandIndex number
---@field RightHandIndex number
FSTExtraAnimFM_Weapon_M2 = {}


---@class FSTExtraAnimFM_Weapon_Grenade
---@field b_IsHoldGrenade boolean
---@field b_IsGrenadeTypeHigh boolean
FSTExtraAnimFM_Weapon_Grenade = {}


---@class FSTExtraAnimFM_Weapon_Aim
---@field r_ScopeAimOffsetStand FRotator
---@field b_UseVehicleScopeFireSameDirect boolean
---@field b_IsScoping boolean
---@field b_IsScopingBoltAnim boolean
---@field b_IsDisableAim boolean
---@field b_NoAimOffset boolean
---@field e_SightType ESightType
---@field b_WeaponAnimUseScopingSight boolean
---@field f_SightAnimBlendAlpha number
---@field b_ScopeInBoltActionEnable boolean
---@field f_RecoilKickADS number
---@field b_SightSlow boolean
---@field f_SightSlowBlendStandBaseAlpha number
---@field b_AimOffsetActive boolean
---@field Switch_AimBlendSpace_Time number
---@field Switch_AimBlendSpace_Counter number
---@field bAimBlendSpaceChange boolean
---@field LastUpdateMovementTime number
---@field LastPoseType ECharacterPoseType
FSTExtraAnimFM_Weapon_Aim = {}


---@class FSTExtraAnimFM_WeaponShield
---@field b_Should_Shield_Special_Switch boolean
---@field b_Crouch_Switch boolean
---@field f_BlendWeight_SwitchWeapon_LeftHand number
---@field f_BlendWeight_SwitchWeapon_RightHand number
---@field f_BlendWeight_SwitchWeapon_Spine number
---@field b_ShouldPlaySwitchWeapon boolean
---@field b_LastEQSwitchWeapon boolean
---@field AfterFinishSwitchPlayTimeRemain number
---@field f_SwitchAnimAdditionTimeFromBackpackToIdleAsAddtional number
FSTExtraAnimFM_WeaponShield = {}
