---@meta

---@class EWeaponAttachState
---@field WAS_NoAttach number
---@field WAS_Silencer number
---@field WAS_FiringSuppressor number
---@field WAS_Compensator number
EWeaponAttachState = {}


---@class FFXDistancaScaleStruct
---@field FXStartScaleDistance number
---@field FXEndScaleDistance number
---@field FXStartScaleValue number
---@field FXEndScaleValue number
FFXDistancaScaleStruct = {}


---@class FShootWeaponEffectCameraShakeConfig
---@field CameraShakeTemplate_NormalCameraMode UCameraShake
---@field CameraShakeTemplate_NearCameraMode UCameraShake
---@field CameraShakeTemplate_AimCameraMode UCameraShake
---@field CameraShakeInnerRadius number
---@field CameraShakeOuterRadius number
---@field CameraShakFalloff number
FShootWeaponEffectCameraShakeConfig = {}


---@class FShootWeaponMuzzleEffectConfig
---@field LocalMuzzelFXScale FVector
---@field LocalFPPMuzzelFXScale FVector
---@field ScopeMuzzelFXScale FVector
---@field ScopeFPPMuzzelFXScale FVector
---@field RemoteMuzzelFXScale FVector
---@field LocalSilencerMuzzelFXScale FVector
---@field LocalSilencerFPPMuzzelFXScale FVector
---@field ScopeSilencerMuzzelFXScale FVector
---@field ScopeSilencerFPPMuzzelFXScale FVector
---@field RemoteSilencerMuzzelFXScale FVector
---@field LocalFiringSuppressorMuzzelFXScale FVector
---@field LocalFiringSuppressorFPPMuzzelFXScale FVector
---@field ScopeFiringSuppressorMuzzelFXScale FVector
---@field ScopeFiringSuppressorFPPMuzzelFXScale FVector
---@field RemoteFiringSuppressorMuzzelFXScale FVector
---@field LocalCompensatorMuzzelFXScale FVector
---@field LocalCompensatorFPPMuzzelFXScale FVector
---@field ScopeCompensatorMuzzelFXScale FVector
---@field ScopeCompensatorFPPMuzzelFXScale FVector
---@field RemoteCompensatorMuzzelFXScale FVector
FShootWeaponMuzzleEffectConfig = {}


---@class UShootWeaponEffectComponent: UWeaponEffectComponent
---@field bDisableTriggerRepeatActionInSameFrame boolean
---@field ShootModeFireShotSoundDataMap ULuaMapHelper<EWeaponShootIntervalMode, UAkAudioEvent>
---@field DynamicOverrideShotSoundDataMap ULuaMapHelper<EWeaponAction, UAkAudioEvent>
---@field bPlayShootSoundOnce boolean
---@field EnableShakeCamera boolean
---@field CameraShakeTemplate_NormalCameraMode UCameraShake
---@field CameraShakeTemplate_NearCameraMode UCameraShake
---@field CameraShakeTemplate_AimCameraMode UCameraShake
---@field CameraShakeInnerRadius number
---@field CameraShakeOuterRadius number
---@field CameraShakFalloff number
---@field CameraShakeTemplate_NormalCameraModeNewFPP UCameraShake
---@field CameraShakeTemplate_NearCameraModeNewFPP UCameraShake
---@field CameraShakeTemplate_AimCameraModeNewFPP UCameraShake
---@field CameraShakeInnerRadiusNewFPP number
---@field CameraShakeOuterRadiusNewFPP number
---@field CameraShakFalloffNewFPP number
---@field EnableShakeCamera_NewFPP_Normal boolean
---@field EnableShakeCamera_NewFPP_Scope boolean
---@field EnableOverrideCameraShakeConfig boolean
---@field CameraShakeConfigOverride FShootWeaponEffectCameraShakeConfig
---@field CameraShakeConfigOverrideNewFPP FShootWeaponEffectCameraShakeConfig
---@field OverrideShootWeaponActionSoundDelegate FOverrideShootWeaponActionSoundDelegate
---@field OverrideShootWeaponSpecialSoundDelegate FOverrideShootWeaponSpecialSoundDelegate
---@field OverheatValAddOnShot number
---@field OverheatValDeletePerSec number
---@field MaxOverheatVal number
---@field ActiveOverheatEffectThreshold number
---@field ActiveOverheatEffectDelayTime number
---@field UpdateOverheatValInterval number
---@field CurOverheatVal number
---@field bCurActiveOverheatEffect boolean
---@field OverheatEffectTimerHandle FTimerHandle
---@field UpdateOverheatLoopTimerHandle FTimerHandle
---@field LocalMuzzelFXScale FVector
---@field LocalFPPMuzzelFXScale FVector
---@field ScopeMuzzelFXScale FVector
---@field ScopeFPPMuzzelFXScale FVector
---@field RemoteMuzzelFXScale FVector
---@field RemoteMuzzleFXDistanceScale FFXDistancaScaleStruct
---@field LocalSilencerMuzzelFXScale FVector
---@field LocalSilencerFPPMuzzelFXScale FVector
---@field ScopeSilencerMuzzelFXScale FVector
---@field ScopeSilencerFPPMuzzelFXScale FVector
---@field RemoteSilencerMuzzelFXScale FVector
---@field RemoteSilencerMuzzleFXDistanceScale FFXDistancaScaleStruct
---@field LocalFiringSuppressorMuzzelFXScale FVector
---@field LocalFiringSuppressorFPPMuzzelFXScale FVector
---@field ScopeFiringSuppressorMuzzelFXScale FVector
---@field ScopeFiringSuppressorFPPMuzzelFXScale FVector
---@field RemoteFiringSuppressorMuzzelFXScale FVector
---@field RemoteSuppressorMuzzleFXDistanceScale FFXDistancaScaleStruct
---@field LocalCompensatorMuzzelFXScale FVector
---@field LocalCompensatorFPPMuzzelFXScale FVector
---@field ScopeCompensatorMuzzelFXScale FVector
---@field ScopeCompensatorFPPMuzzelFXScale FVector
---@field RemoteCompensatorMuzzelFXScale FVector
---@field MuzzleFXCompRelativeRotation FRotator
---@field bApplyMuzzleFXCompRelativeRotation boolean
---@field bIsActiveShellDropFXWhenShoot boolean
---@field bEnableSimulatedShellDropFX boolean
---@field ShellDropFXScale FVector
---@field FPPShellDropFXScale FVector
---@field OBEffectBulletTemplate AOBEffectBullet
---@field MaxMuzzleFxScaleThreshold FVector
---@field MaxMuzzleFxScaleCorrection FVector
---@field MaxMuzzleFxDistanceScaleCorrection number
---@field MaxOBBulletTrackCompNum number
---@field bForceShowMuzzleFx boolean
---@field bOBReuseMovingBullet boolean
---@field bDestroyOldParticleInsWhenActiveShellDropFX boolean
---@field FiringPinSoundRTPCName string
---@field FiringPinSoundRTPCValue number
---@field bSilencerBuiltIn boolean
---@field ShellDropLandSoundMap ULuaMapHelper<EPhysicalSurface, UAkAudioEvent>
---@field ShellDropLandSoundMapRef ULuaMapHelper<EPhysicalSurface, UAkAudioEvent>
---@field ShellDropFXInitMeshRotParamName string
---@field ShellDropFXInitMeshRotMaping_NorAxisPitch FVector2D
---@field ShellDropFXInitMeshRotMaping_NorAxisYaw FVector2D
---@field ShootSoundLoop UAkAudioEvent
---@field ShootSoundLoopEnd UAkAudioEvent
---@field ShootSoundLoopSilencer UAkAudioEvent
---@field ShootSoundLoopEndSilencer UAkAudioEvent
---@field bIsPlayingPCShootSoundLoop boolean
---@field bPlayingPCShootSoundLoopIsSilence boolean
---@field SmokeBuffList ULuaArrayHelper<string>
---@field bForceRefreshMuzzleEffect boolean
---@field LastTriggerAction EWeaponAction
---@field LastTriggerActionFrame number
---@field OnActiveOverheatEffectDelegate FOnActiveOverheatEffect
---@field OnActiveReloadEffectDelegate FOnActiveReloadEffect
---@field OnPreActiveShellDropEffectDelegate FOnPreActiveShellDropEffect
---@field OnPostActiveShellDropEffectDelegate FOnPostActiveShellDropEffect
---@field MuzzleFXScaleOverride FVector2D
---@field MuzzleFXOriginalScale FVector
---@field MuzzleFXPrevDistanceScaler number
---@field bCurIsLocal boolean
---@field bCurIsScopeIn boolean
---@field bCurIsNewFPP boolean
---@field bCurIsFPP boolean
---@field bCurIsFPPMuzzleFXEnable boolean
---@field CurWeaponAttachState EWeaponAttachState
---@field SkeletalAnimHandler FTimerHandle
---@field OBEffectBulletsCachePool ULuaArrayHelper<AOBEffectBullet>
---@field bEnableContinuousFXWhileShoot boolean
---@field bIsActiveContinuousFXWhileShoot boolean
---@field bCachedNeedChangeFX boolean
---@field CachedDistanceScaler number
---@field CachedFXScale FVector
---@field CachedSocketName string
---@field bIsGunADS boolean
---@field CacheEffectMap ULuaMapHelper<UParticleSystem, UParticleSystemComponent>
---@field bCustomHandleMuzzleFXInBP boolean
---@field bEnableOBMuzzleRandOffset boolean
---@field bEnableGroundDustFXOnShoot boolean
---@field MaxActiveShootGroundDustFXDis number
---@field ShootGroundDustFXProb number
local UShootWeaponEffectComponent = {}

function UShootWeaponEffectComponent:ActiveLocalShellDropFX() end

---@param bIsFPP boolean
function UShootWeaponEffectComponent:CheckShellDropFX(bIsFPP) end

---@param OutConfig FShootWeaponMuzzleEffectConfig
function UShootWeaponEffectComponent:GenerateMuzzleEffectConfig(OutConfig) end

---@param Config FShootWeaponMuzzleEffectConfig
function UShootWeaponEffectComponent:OverrideMuzzleEffectConfig(Config) end

---@param MuzzleEffectTemplate UParticleSystem
---@param ScopeMuzzleEffectTemplate UParticleSystem
---@param EffectScale FVector2D
function UShootWeaponEffectComponent:SetOverrideMuzzleEffect(MuzzleEffectTemplate, ScopeMuzzleEffectTemplate, EffectScale) end

---@param Template UParticleSystem
function UShootWeaponEffectComponent:SetOverrideReloadEffect(Template) end

function UShootWeaponEffectComponent:CheckReloadEffect() end

function UShootWeaponEffectComponent:LoadCacheSoundAsync() end

---@param EffectComp UParticleSystemComponent
---@param Scale FVector
function UShootWeaponEffectComponent:SetEffectScale(EffectComp, Scale) end

---@param EventName string
---@param EmitterTime number
---@param ParticleTime number
---@param Location FVector
---@param Velocity FVector
---@param Direction FVector
---@param Normal FVector
---@param BoneName string
---@param PhysMat UPhysicalMaterial
function UShootWeaponEffectComponent:OnShellDropFXCollide(EventName, EmitterTime, ParticleTime, Location, Velocity, Direction, Normal, BoneName, PhysMat) end

---@param bBegin boolean
function UShootWeaponEffectComponent:HandleScopeIn(bBegin) end

---@param bBegin boolean
function UShootWeaponEffectComponent:HandleScopeOut(bBegin) end

---@param Action EWeaponAction
function UShootWeaponEffectComponent:HandleWeaponAction(Action) end

function UShootWeaponEffectComponent:ShakeCamera() end

---@param bIsLocal boolean
function UShootWeaponEffectComponent:CheckMuzzleFX(bIsLocal) end

---@param bActive boolean
function UShootWeaponEffectComponent:ActiveReloadFX(bActive) end

function UShootWeaponEffectComponent:OnWeaponEuiped() end

function UShootWeaponEffectComponent:OnWeaponUnEquiped() end

---@param OldType ESTEWeaponShootType
---@param CurType ESTEWeaponShootType
function UShootWeaponEffectComponent:HandleShootTypeChange(OldType, CurType) end

---@param Bullet AOBEffectBullet
function UShootWeaponEffectComponent:RecycleOBEffectBullet(Bullet) end

---@return number
function UShootWeaponEffectComponent:GetAvailableOBEffectBulletNum() end

---@param TempFX UParticleSystem
function UShootWeaponEffectComponent:SetContinuousMuzzleFX(TempFX) end

function UShootWeaponEffectComponent:StartPlayContinuousFXWhileShoot() end

function UShootWeaponEffectComponent:StopPlayContinuousFXWhileShoot() end

---@param OutPackageList ULuaArrayHelper<UPackage>
function UShootWeaponEffectComponent:MarkAKBankLoadAsync(OutPackageList) end

---@param bIsLocalControlled boolean
---@param SurfaceType EPhysicalSurface
---@param Location FVector
function UShootWeaponEffectComponent:HandlePCPlayShellDropGroundSound(bIsLocalControlled, SurfaceType, Location) end

---@param bForce boolean
function UShootWeaponEffectComponent:CheckAndStopLoopShootSound(bForce) end

function UShootWeaponEffectComponent:ActiveOverheatEffectDelayFinish() end

function UShootWeaponEffectComponent:OnWeaponShot() end

function UShootWeaponEffectComponent:UpdateOverheatVal() end

---@param LastState EFreshWeaponStateType
---@param NewState EFreshWeaponStateType
function UShootWeaponEffectComponent:HandleWeaponChangeState(LastState, NewState) end

function UShootWeaponEffectComponent:HandleAsyncLoadPCSoundListFinished() end

---@param ShootTrans FTransform
function UShootWeaponEffectComponent:CreateFakeBulletTrackFXOnMuzzle(ShootTrans) end

function UShootWeaponEffectComponent:HideFakeBulletTrackFXOnMuzzle() end
