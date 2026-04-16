---@meta

---@class EAllowThrowMode
---@field Any number
---@field High number
---@field Low number
EAllowThrowMode = {}


---@class EProjectileEventType
---@field None number
---@field Activate number
---@field Bounce number
---@field Stop number
---@field Exploded number
---@field Damaged number
---@field Born number
---@field Destroyed number
---@field Freeze number
---@field Unfreeze number
EProjectileEventType = {}


---@class FProjectileHealthSetting
---@field Health number
---@field DamageScale number
FProjectileHealthSetting = {}


---@class FProjectileEvent
---@field Location FVector
---@field Rotation FRotator
---@field EventFlag number
---@field EventType EProjectileEventType
---@field ReplicatedEvents ULuaArrayHelper<EProjectileEventType>
FProjectileEvent = {}


---@class FProjectileRepMovement
---@field LinearVelocity FVector
---@field Location FVector
---@field Rotation FRotator
---@field bReplicateRotation boolean
---@field LocationQuantizationLevel EVectorQuantization @Allows tuning the compression level for the replicated location vector. You should only need to change this from the default if you see visual artifacts.
---@field VelocityQuantizationLevel EVectorQuantization @Allows tuning the compression level for the replicated velocity vectors. You should only need to change this from the default if you see visual artifacts.
---@field RotationQuantizationLevel ERotatorQuantization @Allows tuning the compression level for replicated rotation. You should only need to change this from the default if you see visual artifacts.
---@field bStopped boolean
FProjectileRepMovement = {}


---@class FProjectileExplosionNoise
---@field NoiseRadius number
---@field RTPC_ExplosionDistance_1 string
---@field RTPC_ExplosionDistance_2 string
---@field RTPCValue_2 number
FProjectileExplosionNoise = {}


---@class FExplosionCameraShakeFunction
---@field FrontShake UCameraShake
---@field BackShake UCameraShake
---@field RightShake UCameraShake
---@field LeftShake UCameraShake
---@field CameraAnimPlaySpace ECameraAnimPlaySpace
FExplosionCameraShakeFunction = {}


---@class FProjectileVoiceCheckEvent
---@field VoiceCheckRadius number
---@field DisplayDuration number
FProjectileVoiceCheckEvent = {}


---@class FBuffApplierFunction
---@field BuffName string
---@field bRemoveBuffFromExpiredTargets number
---@field bRefreshBuff number
---@field bClearBuffsOnDisabled number
---@field bDynamicAddBuffComponent number
---@field bAddBuffExcludeCauser number
---@field Blackboard ULuaArrayHelper<FUAEBlackboardParameter>
---@field LastTimeTargets ULuaArrayHelper<AActor>
---@field AddBuffCompTargets ULuaArrayHelper<AActor>
FBuffApplierFunction = {}


---@class FDamageApplyFunction
---@field DamageTypeClass UDamageType
---@field ItemID number
FDamageApplyFunction = {}


---@class FPointDamageApplyFunction
---@field Damage number
FPointDamageApplyFunction = {}


---@class FRadialDamageApplyFunction
---@field BaseMomentum number
---@field ImpulseFalloff ERadialImpulseFalloff
FRadialDamageApplyFunction = {}


---@class FNoiseApplierFunction
---@field ExplosionNoise FProjectileExplosionNoise
---@field Multiplier number
FNoiseApplierFunction = {}


---@class FActorLocationMarker
---@field LocationMarkerClass UActorPositionWidget
FActorLocationMarker = {}


---@class FConditionAndRestriction
---@field bEnable number
---@field bSatisfied number
---@field bRestriction number
FConditionAndRestriction = {}


---@class FProjectileExplosionInfo
---@field InstanceID number
---@field ExplosionDelay number
FProjectileExplosionInfo = {}


---@class FProjectileAvatarData
---@field AvatarID number
---@field AbilityIDs ULuaArrayHelper<number>
---@field LoadedAssets ULuaArrayHelper<UObject>
FProjectileAvatarData = {}


---@class FProjectileUserInterfaceData
---@field ProjectileIcon FSoftObjectPath
FProjectileUserInterfaceData = {}


---@class FSimpleProjectileDelegate : ULuaSingleDelegate
FSimpleProjectileDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Projectile: AEliteProjectile) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSimpleProjectileDelegate:Bind(Callback, Obj) end

---执行委托
---@param Projectile AEliteProjectile
function FSimpleProjectileDelegate:Execute(Projectile) end


---@class FProjectileExplosionTimerInfo : ULuaSingleDelegate
FProjectileExplosionTimerInfo = {}

---绑定回调函数
---@param Callback fun(Obj: any, Info: FProjectileExplosionInfo) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FProjectileExplosionTimerInfo:Bind(Callback, Obj) end

---执行委托
---@param Info FProjectileExplosionInfo
function FProjectileExplosionTimerInfo:Execute(Info) end


---@class UEliteProjectilePositionUI: UUAEAttachActorUI
---@field MaxRemainingTime number
---@field InstanceID number
local UEliteProjectilePositionUI = {}

---@param DeltaTime number
---@return number
function UEliteProjectilePositionUI:GetRemainingTime(DeltaTime) end

---@param RemainingTime number
function UEliteProjectilePositionUI:UpdateUIByRemaingTime(RemainingTime) end

---@param Seconds number
---@param NumDecimalPlaces number
---@return string
function UEliteProjectilePositionUI:FormatSeconds(Seconds, NumDecimalPlaces) end

---@param InInstanceID number
function UEliteProjectilePositionUI:SetInstanceID(InInstanceID) end


---@class UEliteGameplayStatics: UBlueprintFunctionLibrary
local UEliteGameplayStatics = {}

---@param BuffApplier FBuffApplierFunction
---@param NewTargets ULuaArrayHelper<AActor>
---@param NewLocations ULuaArrayHelper<FVector>
---@param Causer AActor
---@param Instigator AController
---@param ExpireTimeOverride number
function UEliteGameplayStatics:Apply(BuffApplier, NewTargets, NewLocations, Causer, Instigator, ExpireTimeOverride) end

---@param BuffApplier FBuffApplierFunction
function UEliteGameplayStatics:Shutdown(BuffApplier) end

---@param PointDamageFunction FPointDamageApplyFunction
---@param DamagedActor AActor
---@param HitInfo FHitResult
---@param Instigator AController
---@param DamageCauser AActor
---@return number
function UEliteGameplayStatics:ApplyPointDamage(PointDamageFunction, DamagedActor, HitInfo, Instigator, DamageCauser) end

---@param RadialDamageFunction FRadialDamageApplyFunction
---@param Hits ULuaArrayHelper<FHitResult>
---@param Origin FVector
---@param DamageCauser AActor
---@param InstigatedByController AController
---@param EffectRangeScale number
---@return boolean
function UEliteGameplayStatics:ApplyRadialDamage(RadialDamageFunction, Hits, Origin, DamageCauser, InstigatedByController, EffectRangeScale) end

---@param RadialDamageFunction FRadialDamageApplyFunction
---@param WorldContextObject UObject
---@param Origin FVector
function UEliteGameplayStatics:DrawDebugDamage(RadialDamageFunction, WorldContextObject, Origin) end

---@param CameraShakeFunction FExplosionCameraShakeFunction
---@param WorldContextObject UObject
---@param Origin FVector
function UEliteGameplayStatics:PlayCameraShake(CameraShakeFunction, WorldContextObject, Origin) end

---@param ExplosionNoise FProjectileExplosionNoise
---@param ExplodedObject AActor
---@param Multiplier number
function UEliteGameplayStatics:MakeExplosionNoise(ExplosionNoise, ExplodedObject, Multiplier) end

---@param VoiceCheck FProjectileVoiceCheckEvent
---@param ExplodedObject AActor
function UEliteGameplayStatics:MakeVoiceCheck(VoiceCheck, ExplodedObject) end

---@param Marker FActorLocationMarker
function UEliteGameplayStatics:DestroyActorLocationMarker(Marker) end

---@param Marker FActorLocationMarker
---@return boolean
function UEliteGameplayStatics:IsActorLocationMarkerValid(Marker) end

---@param AvatarData FProjectileAvatarData
---@param Delegate FProjectileAvatarAssetsLoadedDelegate
function UEliteGameplayStatics:AsyncLoadAvatarAssets(AvatarData, Delegate) end
