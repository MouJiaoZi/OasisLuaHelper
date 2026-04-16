---@meta

---@class FCurveParams
---@field curveparam number
FCurveParams = {}


---@class UAnimNotifyState_TimedParticleEffect: UAnimNotifyState
---@field bIsPlayInWorld boolean
---@field bIsRelativeToMeshSocketInWorld boolean
---@field SocketName string
---@field LocationOffset FVector
---@field RotationOffset FRotator
---@field RotationOffsetDisable number
---@field ScaleDisable number
---@field ScaleMultiplier FVector
---@field bDestroyAtEnd boolean
---@field bEnableAttachMeshChangeIgnoreSocketCheck boolean
---@field bAdaptToNewFPP boolean
---@field CacheAttachAdaptMeshComp USkeletalMeshComponent
---@field SimulatedActivationOfQualityLevel number
---@field CurveParamList ULuaMapHelper<string, FCurveParams>
---@field bNotifyControlParticleVisible boolean
---@field bEnableSpawnObjTrackFeature boolean
---@field bAddAnotherBone_Z_Delta boolean
---@field Z_Delta_BoneName string
---@field ParticleTag string
---@field SpawnedObjCacheMap ULuaMapHelper<string, UObject>
---@field bSkipSocketNameCheck boolean
---@field EnableDestoryByUniqueTagAtEnd boolean
local UAnimNotifyState_TimedParticleEffect = {}

---@return boolean
function UAnimNotifyState_TimedParticleEffect:IsEnableSpawnObjTrackFeature() end

---@param InTargetSkelMeshComp USkeletalMeshComponent
---@param InSpawnedObj UObject
function UAnimNotifyState_TimedParticleEffect:TryMarkSpawnObjTracker(InTargetSkelMeshComp, InSpawnedObj) end

---@param InTargetSkelMeshComp USkeletalMeshComponent
function UAnimNotifyState_TimedParticleEffect:TryClearSpawnObjTracker(InTargetSkelMeshComp) end

---@param InTargetSkelMeshComp USkeletalMeshComponent
---@return boolean
function UAnimNotifyState_TimedParticleEffect:IsTrackingObj(InTargetSkelMeshComp) end

---@param InTargetSkelMeshComp USkeletalMeshComponent
---@param TargetTransform FTransform
---@return FTransform
function UAnimNotifyState_TimedParticleEffect:GetOverrideParticleWorldTransform(InTargetSkelMeshComp, TargetTransform) end

---@param skComp USkeletalMeshComponent
---@param InPSC UParticleSystemComponent
function UAnimNotifyState_TimedParticleEffect:InnerCheckParticleParentVisibility(skComp, InPSC) end

---@param InComponent USkeletalMeshComponent
function UAnimNotifyState_TimedParticleEffect:CheckParticleParentVisibility(InComponent) end

---@param InTargetSkelMeshComp USkeletalMeshComponent
---@return boolean
function UAnimNotifyState_TimedParticleEffect:IsEnableSearchAllDescendants(InTargetSkelMeshComp) end

---@param Children ULuaArrayHelper<USceneComponent>
---@param MeshComp USkeletalMeshComponent
---@param AttachAdaptMeshComp USkeletalMeshComponent
function UAnimNotifyState_TimedParticleEffect:SearchChildrenParticleAndDestroy(Children, MeshComp, AttachAdaptMeshComp) end
