---@meta

---@class FAvatarPosterInfo
---@field bIsEnable boolean
---@field PosterIndex number
---@field AvatarGender number
---@field AvatarList ULuaArrayHelper<number>
---@field PlayerName string
---@field PlayerKey number
FAvatarPosterInfo = {}


---@class FAvatarPosterDisplayDebugData
---@field EditorDebugWearAvatarList ULuaArrayHelper<number>
FAvatarPosterDisplayDebugData = {}


---@class FAvatarPosterDisplayMeta
---@field DisplayFrame number
---@field RenderFrame number
---@field FrameCounter number
---@field bStartDisplay boolean
---@field AnimBP UAnimInstance
---@field TargetTexture UTextureRenderTarget2D
---@field LowQualityTextureDeviceLevel number
---@field TargetTexture_LowQuality UTextureRenderTarget2D
---@field TargetMatSlotName string
---@field TargetTextureParamName string
---@field UIInfoWidget UUserWidget
---@field SetPlayerNameFunc string
---@field BG_Material UMaterialInterface
---@field bUseCustomCameraParam boolean
---@field CameraLocalTransform FTransform
---@field CameraFOV number
---@field ParticleEffect UParticleSystem
FAvatarPosterDisplayMeta = {}


---@class FAvatarPosterLoadReq
---@field bValidTask boolean
---@field ReqID number
---@field PosterInfo FAvatarPosterInfo
---@field PosterDisplayMeta FAvatarPosterDisplayMeta
---@field LoadingHandleRefList ULuaArrayHelper<UBattleItemHandleBase>
---@field NetHandleChildItemList ULuaArrayHelper<number>
FAvatarPosterLoadReq = {}


---@class AAvatarPosterCapture: AActor
---@field bEnableChildItemAsyncLoad boolean
---@field bEnableNetReplicate boolean
---@field bEnableLoadDelayCheck boolean
---@field bEnableTickOptimisation boolean
---@field OutTimeIgnoreValue number
---@field bNetRPCRecieved boolean
---@field bEnableAsyncFeature boolean
---@field bFixedFOV boolean
---@field FixedFOVValue number
---@field PosterDisplayMetaList ULuaArrayHelper<FAvatarPosterDisplayMeta>
---@field bOverrideNativeTick boolean
---@field bIsCaptureEnabled boolean
---@field bIsWaitingCounterReady boolean
---@field NetAvatarPosterInfoList ULuaArrayHelper<FAvatarPosterInfo>
---@field CurAvatarPosterDisplayTask FAvatarPosterLoadReq
---@field CurProcessingPosterIndex number
---@field CurAsyncLoadReqID number
local AAvatarPosterCapture = {}

---@param InContextObj UObject
---@param NetAvatarPosterInfoList ULuaArrayHelper<FAvatarPosterInfo>
---@return boolean
function AAvatarPosterCapture:ClientSyncPoster_Static(InContextObj, NetAvatarPosterInfoList) end

---@param InTriggerObj UObject
function AAvatarPosterCapture:ServerSyncPoster_Static(InTriggerObj) end

---@param InIsEnable boolean
---@param InPosterDisplayIndex number
---@param InPCActor AActor
function AAvatarPosterCapture:ServerDisplayPoster_Static(InIsEnable, InPosterDisplayIndex, InPCActor) end

---@param InIsEnable boolean
---@param InPosterDisplayIndex number
---@param InPCActor AActor
function AAvatarPosterCapture:ServerDisplayPoster_ByPC(InIsEnable, InPosterDisplayIndex, InPCActor) end

---@param InPosterInfo FAvatarPosterInfo
function AAvatarPosterCapture:ServerDisplayPoster(InPosterInfo) end

---@param InIsEnable boolean
function AAvatarPosterCapture:ClientDisplayPoster(InIsEnable) end

---@param InIsEnable boolean
function AAvatarPosterCapture:ClientDisplayPosterAsync(InIsEnable) end

function AAvatarPosterCapture:OnRep_AvatarPosterInfoList() end

function AAvatarPosterCapture:ApplyAnimation() end

---@param IsEnable boolean
function AAvatarPosterCapture:SetCaptureEnable(IsEnable) end

---@param InBGMat UMaterialInterface
function AAvatarPosterCapture:InitBGMat(InBGMat) end

function AAvatarPosterCapture:CheckRPCSync() end

---@param InPosterNetInfoIndex number
---@return boolean
function AAvatarPosterCapture:TryStartAsyncLoadPoster(InPosterNetInfoIndex) end

---@return boolean
function AAvatarPosterCapture:TryStartAsyncLoadPoster_ChildItems() end

---@param InPosterNetInfoIndex number
---@return boolean
function AAvatarPosterCapture:TryDisplayPoster(InPosterNetInfoIndex) end

---@param InHandleList ULuaArrayHelper<UBattleItemHandleBase>
---@param InRequestID number
function AAvatarPosterCapture:OnAsyncLoadItemHandleListFinish(InHandleList, InRequestID) end

---@param InHandleList ULuaArrayHelper<UBattleItemHandleBase>
---@param InRequestID number
function AAvatarPosterCapture:OnAsyncLoadChildItemHandleListFinish(InHandleList, InRequestID) end

---@param InDisplayTask FAvatarPosterLoadReq
function AAvatarPosterCapture:CollectAndAsyncLoadDisplayRes(InDisplayTask) end

---@param InLoadingResList ULuaArrayHelper<FSoftObjectPath>
function AAvatarPosterCapture:LoadPosterDisplayResAsync(InLoadingResList) end

---@param InLoadingResList ULuaArrayHelper<FSoftObjectPath>
---@param InAsyncLoadID number
function AAvatarPosterCapture:OnAsyncLoadPosterDisplayRes(InLoadingResList, InAsyncLoadID) end

---@param InLoadReq FAvatarPosterLoadReq
---@return boolean
function AAvatarPosterCapture:DisplayOneAvatarPoster(InLoadReq) end

---@param InLoadReq FAvatarPosterLoadReq
function AAvatarPosterCapture:ApplyForceLODValue(InLoadReq) end

---@param InLoadReq FAvatarPosterLoadReq
function AAvatarPosterCapture:SetCustomCameraParam(InLoadReq) end

---@param InLoadReq FAvatarPosterLoadReq
function AAvatarPosterCapture:DisplayUIInfo(InLoadReq) end

---@param InLoadReq FAvatarPosterLoadReq
---@param InUIInfoWidget UUserWidget
function AAvatarPosterCapture:BP_RefreshUIInfo(InLoadReq, InUIInfoWidget) end

---@param InLoadReq FAvatarPosterLoadReq
function AAvatarPosterCapture:StopDrawUIInfo(InLoadReq) end

---@param InLoadReq FAvatarPosterLoadReq
---@param InUIComponent UWidgetComponent
---@param InUIInfoWidget UUserWidget
function AAvatarPosterCapture:BP_StopDrawUIInfo(InLoadReq, InUIComponent, InUIInfoWidget) end

---@param InConfigDisplayMeta FAvatarPosterDisplayMeta
function AAvatarPosterCapture:GetTargetRT2D(InConfigDisplayMeta) end

---@param InConfigDisplayMeta FAvatarPosterDisplayMeta
function AAvatarPosterCapture:ApplyRTResult(InConfigDisplayMeta) end

---@param InConfigDisplayMeta FAvatarPosterDisplayMeta
function AAvatarPosterCapture:ShowParticleEffect(InConfigDisplayMeta) end

---@return boolean
function AAvatarPosterCapture:IsReadyToCountDisplay() end

---@return boolean
function AAvatarPosterCapture:HasPosterBeginPlay() end
