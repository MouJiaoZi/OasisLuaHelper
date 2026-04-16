---@meta

---子类覆盖时，HOT_UPDATE_PROTECT 中的几个关键方法必须用热更保护宏做保护 HOT_UPDATE_PROTECT(FuncName) *****
---@class FStaticSwitchParamCacheInfo
---@field StaticSwitchParamNames ULuaArrayHelper<string>
---@field ParameterNameValueMap ULuaMapHelper<string, boolean>
FStaticSwitchParamCacheInfo = {}


---@class UAvatarBehaviorFeature: UObject
---@field bOverride_InitBehaviorFeature boolean @HOT_UPDATE_PROTECT *****************************************
---@field bOverride_ReleaseBehaviorFeature boolean
---@field bOverride_DelayReleaseBehavior boolean
---@field bOverride_IsNeedDelayRelease boolean
---@field bOverride_TickBehavior boolean
---@field bOverride_IsNeedTick boolean
---@field bOverride_PreAvatarRender boolean
---@field bOverride_PostAvatarRender boolean
---@field bOverride_CollectBehaviorFeatureRes boolean
---@field bOverride_LobbyCollectBehaviorFeatureRes boolean
---@field bOverride_OnEntityMeshVisibilityChange boolean
---@field bOverride_IsConcernAnimNotifyState boolean
---@field bOverride_IsConcernAnimNotifyStateType boolean
---@field bOverride_IsConcernAnimNotifyStateTick boolean
---@field bOverride_OnAnimNotifyStateBegin boolean
---@field bOverride_OnAnimNotifyStateTick boolean
---@field bOverride_OnAnimNotifyStateEnd boolean
---@field bOverride_IsConcernCharMontagePlayState boolean
---@field bOverride_OnCharMontagePlayStateChange boolean
---@field ConfigParamIndex number
---@field FeatureResRefList ULuaArrayHelper<UObject>
---@field FeatureResSoftRefList ULuaArrayHelper<FSoftObjectPath>
---@field LobbyFeatureResSoftRefList ULuaArrayHelper<FSoftObjectPath>
---@field bIsReleaseDelayed boolean
---@field PreCreateSKComps ULuaMapHelper<FSoftObjectPath, USkeletalMeshComponent> @Async Create AnimInstance Start *****************************************
local UAvatarBehaviorFeature = {}

---HOT_UPDATE_PROTECT *****************************************
---@param InOwnerAvatarComp UAvatarComponent
---@param InOwnerAvatarEntity UAvatarEntity
---@param InConfigParamIndex number
function UAvatarBehaviorFeature:InitBehaviorFeature(InOwnerAvatarComp, InOwnerAvatarEntity, InConfigParamIndex) end

function UAvatarBehaviorFeature:ReleaseBehaviorFeature() end

function UAvatarBehaviorFeature:DelayReleaseBehavior() end

---@return boolean
function UAvatarBehaviorFeature:IsNeedDelayRelease() end

function UAvatarBehaviorFeature:TickBehavior() end

---@return boolean
function UAvatarBehaviorFeature:IsNeedTick() end

function UAvatarBehaviorFeature:PreAvatarRender() end

function UAvatarBehaviorFeature:PostAvatarRender() end

function UAvatarBehaviorFeature:CollectBehaviorFeatureRes() end

function UAvatarBehaviorFeature:LobbyCollectBehaviorFeatureRes() end

function UAvatarBehaviorFeature:OnEntityMeshVisibilityChange() end

---@return boolean
function UAvatarBehaviorFeature:IsConcernAnimNotifyState() end

---@param InAnimNotifyState UAnimNotifyState
---@return boolean
function UAvatarBehaviorFeature:IsConcernAnimNotifyStateType(InAnimNotifyState) end

---@return boolean
function UAvatarBehaviorFeature:IsConcernAnimNotifyStateTick() end

---@param InAnimNotifyState UAnimNotifyState
---@param MeshComp USkeletalMeshComponent
---@param Animation UAnimSequenceBase
---@param TotalDuration number
---@param InvokeAnimInstance UAnimInstance
function UAvatarBehaviorFeature:OnAnimNotifyStateBegin(InAnimNotifyState, MeshComp, Animation, TotalDuration, InvokeAnimInstance) end

---@param InAnimNotifyState UAnimNotifyState
---@param MeshComp USkeletalMeshComponent
---@param Animation UAnimSequenceBase
---@param FrameDeltaTime number
---@param InvokeAnimInstance UAnimInstance
function UAvatarBehaviorFeature:OnAnimNotifyStateTick(InAnimNotifyState, MeshComp, Animation, FrameDeltaTime, InvokeAnimInstance) end

---@param InAnimNotifyState UAnimNotifyState
---@param MeshComp USkeletalMeshComponent
---@param Animation UAnimSequenceBase
---@param InvokeAnimInstance UAnimInstance
function UAvatarBehaviorFeature:OnAnimNotifyStateEnd(InAnimNotifyState, MeshComp, Animation, InvokeAnimInstance) end

---@return boolean
function UAvatarBehaviorFeature:IsConcernCharMontagePlayState() end

---@param InTriggerAnim UAnimSequenceBase
---@param InIsPlay boolean
---@param InIsInterrupted boolean
function UAvatarBehaviorFeature:OnCharMontagePlayStateChange(InTriggerAnim, InIsPlay, InIsInterrupted) end

---HOT_UPDATE_PROTECT *****************************************
function UAvatarBehaviorFeature:ReferenceFeatureRes() end

---@param InNewCameraMode EPlayerCameraMode
function UAvatarBehaviorFeature:HandleCameraModeChange(InNewCameraMode) end

---@param InBaseMatInterface UMaterialInterface
---@param InMatInstance UMaterialInstance
---@return boolean
function UAvatarBehaviorFeature:IsCompatibleWithBaseMat(InBaseMatInterface, InMatInstance) end

---@param InMeshComp UMeshComponent
---@param InMatRes UMaterialInterface
---@param InSlotName string
---@return boolean
function UAvatarBehaviorFeature:TryApplyMat(InMeshComp, InMatRes, InSlotName) end

---@return boolean
function UAvatarBehaviorFeature:IsReleaseDelayed() end

---@return boolean
function UAvatarBehaviorFeature:IsSafeForGameThread() end

---@param InMat UMaterialInterface
---@param StaticSwitchParamNames_MatInst ULuaArrayHelper<string>
---@param ParameterNameValueMap_MatInst ULuaMapHelper<string, boolean>
---@param InBaseMat UMaterialInterface
---@param StaticSwitchParamNames_BaseMat ULuaArrayHelper<string>
---@param ParameterNameValueMap_BaseMat ULuaMapHelper<string, boolean>
---@return FStaticSwitchPermutationKey
function UAvatarBehaviorFeature:GetMatPermutationKeyFromStaticSwitchParamsAndValues(InMat, StaticSwitchParamNames_MatInst, ParameterNameValueMap_MatInst, InBaseMat, StaticSwitchParamNames_BaseMat, ParameterNameValueMap_BaseMat) end

---@param InMat UMaterialInterface
---@return FStaticSwitchPermutationKey
function UAvatarBehaviorFeature:GetMatPermutationKeyFromStaticSwitchParam(InMat) end

---@param InMat UMaterialInterface
---@return string
function UAvatarBehaviorFeature:GetMatPermutationKeyStrFromStaticSwitchParam(InMat) end

---@param InMat UMaterialInterface
---@return FStaticSwitchPermutationKey
function UAvatarBehaviorFeature:GetMatPermutationKeyFromStaticSwitchParam_FastUseCache(InMat) end

---@param InMatL UMaterialInterface
---@param InMatR UMaterialInterface
---@param InIsOnlySameNameDiffValue boolean
---@return string
function UAvatarBehaviorFeature:GetMatStaticSwitchParamDiffInfo(InMatL, InMatR, InIsOnlySameNameDiffValue) end

---@param InMat UMaterialInterface
function UAvatarBehaviorFeature:GetMatStaticSwitchParamNames(InMat) end

---@param InMat UMaterialInterface
---@param InParameterNames ULuaArrayHelper<string>
---@return string
function UAvatarBehaviorFeature:GetMatStaticSwitchParamValues(InMat, InParameterNames) end

function UAvatarBehaviorFeature:ReleaseRuntimeStaticCache() end

---HOT_UPDATE_PROTECT *****************************************
---@param InOwnerAvatarComp UAvatarComponent
---@param InOwnerAvatarEntity UAvatarEntity
---@param InConfigParamIndex number
function UAvatarBehaviorFeature:BP_InitBehaviorFeature(InOwnerAvatarComp, InOwnerAvatarEntity, InConfigParamIndex) end

function UAvatarBehaviorFeature:BP_ReleaseBehaviorFeature() end

function UAvatarBehaviorFeature:BP_DelayReleaseBehavior() end

---@return boolean
function UAvatarBehaviorFeature:BP_IsNeedDelayRelease() end

function UAvatarBehaviorFeature:BP_TickBehavior() end

---@return boolean
function UAvatarBehaviorFeature:BP_IsNeedTick() end

function UAvatarBehaviorFeature:BP_PreAvatarRender() end

function UAvatarBehaviorFeature:BP_PostAvatarRender() end

function UAvatarBehaviorFeature:BP_CollectBehaviorFeatureRes() end

function UAvatarBehaviorFeature:BP_LobbyCollectBehaviorFeatureRes() end

function UAvatarBehaviorFeature:BP_OnEntityMeshVisibilityChange() end

---@return boolean
function UAvatarBehaviorFeature:BP_IsConcernAnimNotifyState() end

---@param InAnimNotifyState UAnimNotifyState
---@return boolean
function UAvatarBehaviorFeature:BP_IsConcernAnimNotifyStateType(InAnimNotifyState) end

---@return boolean
function UAvatarBehaviorFeature:BP_IsConcernAnimNotifyStateTick() end

---@param InAnimNotifyState UAnimNotifyState
---@param MeshComp USkeletalMeshComponent
---@param Animation UAnimSequenceBase
---@param TotalDuration number
---@param InvokeAnimInstance UAnimInstance
function UAvatarBehaviorFeature:BP_OnAnimNotifyStateBegin(InAnimNotifyState, MeshComp, Animation, TotalDuration, InvokeAnimInstance) end

---@param InAnimNotifyState UAnimNotifyState
---@param MeshComp USkeletalMeshComponent
---@param Animation UAnimSequenceBase
---@param FrameDeltaTime number
---@param InvokeAnimInstance UAnimInstance
function UAvatarBehaviorFeature:BP_OnAnimNotifyStateTick(InAnimNotifyState, MeshComp, Animation, FrameDeltaTime, InvokeAnimInstance) end

---@param InAnimNotifyState UAnimNotifyState
---@param MeshComp USkeletalMeshComponent
---@param Animation UAnimSequenceBase
---@param InvokeAnimInstance UAnimInstance
function UAvatarBehaviorFeature:BP_OnAnimNotifyStateEnd(InAnimNotifyState, MeshComp, Animation, InvokeAnimInstance) end

---@return boolean
function UAvatarBehaviorFeature:BP_IsConcernCharMontagePlayState() end

---@param InTriggerAnim UAnimSequenceBase
---@param InIsPlay boolean
---@param InIsInterrupted boolean
function UAvatarBehaviorFeature:BP_OnCharMontagePlayStateChange(InTriggerAnim, InIsPlay, InIsInterrupted) end

---HOT_UPDATE_PROTECT *****************************************
function UAvatarBehaviorFeature:InitBehaviorFeatureCustomParam() end

function UAvatarBehaviorFeature:InitFeatureResSoftRef() end

function UAvatarBehaviorFeature:InitLobbyFeatureResSoftRef() end

---@param InResSoftRefList ULuaArrayHelper<FSoftObjectPath>
function UAvatarBehaviorFeature:ReferenceResListBySoftRef(InResSoftRefList) end

---@return boolean
function UAvatarBehaviorFeature:IsGarbageCollectingBP() end

---@return number
function UAvatarBehaviorFeature:GetConfigParamIndex() end

---@param AnimClassArray ULuaArrayHelper<FAnimClassReferenceInfo>
function UAvatarBehaviorFeature:GetDesireAnimInstanceClassAndPreCreateSKComp(AnimClassArray) end
