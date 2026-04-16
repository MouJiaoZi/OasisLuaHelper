---@meta

---@class EFaceHiddenState
---@field Show_SuitHead number
---@field Show_Default number
---@field Show_Baked number
EFaceHiddenState = {}


---@class EGalaxyFaceSceneType
---@field GalaxyFaceSystem number
---@field Lobby number
---@field Fighting number
EGalaxyFaceSceneType = {}


---@class FDrawFaceRTSize
---@field DrawFaceRTSize ULuaMapHelper<string, number>
FDrawFaceRTSize = {}


---@class FDrawFaceSceneRTSize
---@field SceneRtSizeMap ULuaMapHelper<EGalaxyFaceSceneType, FDrawFaceRTSize>
FDrawFaceSceneRTSize = {}


---@class FFaceState
---@field FaceInfoReplicatedData FGalaxyFaceReplicatedData
---@field FaceState EFaceHiddenState
FFaceState = {}


---@class FOnBakeFaceFinished : ULuaMulticastDelegate
FOnBakeFaceFinished = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, GalaxyComponent: UActorComponent) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnBakeFaceFinished:Add(Callback, Obj) end

---触发 Lua 广播
---@param GalaxyComponent UActorComponent
function FOnBakeFaceFinished:Broadcast(GalaxyComponent) end


---@class FOnSkinColorChanged : ULuaMulticastDelegate
FOnSkinColorChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SkinColor: FLinearColor, SkinRoughness: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSkinColorChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param SkinColor FLinearColor
---@param SkinRoughness number
function FOnSkinColorChanged:Broadcast(SkinColor, SkinRoughness) end


---@class UGalaxyFaceUtils: UActorComponent
---@field bNeedRebakeFaceAsset boolean
---@field FaceControllerFilename string
---@field BoneNamesFilename string
---@field MaleBakeLOD00Mesh_New USkeletalMesh
---@field FemaleBakeLOD00Mesh_New USkeletalMesh
---@field MaleBakeMesh_New USkeletalMesh
---@field FemaleBakeMesh_New USkeletalMesh
---@field MaleLodBakeMesh_New USkeletalMesh
---@field FemaleLodBakeMesh_New USkeletalMesh
---@field MaleLobbyBakeMesh_New USkeletalMesh
---@field FemaleLobbyBakeMesh_New USkeletalMesh
---@field MaleBakeLOD00Mesh USkeletalMesh
---@field FemaleBakeLOD00Mesh USkeletalMesh
---@field MaleBakeMesh USkeletalMesh
---@field FemaleBakeMesh USkeletalMesh
---@field MaleLodBakeMesh USkeletalMesh
---@field FemaleLodBakeMesh USkeletalMesh
---@field MaleLobbyBakeMesh USkeletalMesh
---@field FemaleLobbyBakeMesh USkeletalMesh
---@field MaleEmoteBakeMesh USkeletalMesh
---@field FemaleEmoteBakeMesh USkeletalMesh
---@field PinchFaceAssetsPathList ULuaArrayHelper<FSoftObjectPath>
---@field CurFaceDataStr string
---@field CurFaceData FGalaxyFaceData
---@field bIsGalaxyFaceOpen boolean
---@field bIsHighResFaceInGameEnabled boolean
---@field bIsHighResFaceWithSkeletonInGameEnabled boolean
---@field HighResFaceID number
---@field HighResFaceIDWithSkeleton number
---@field GameModeIDWhiteList ULuaArrayHelper<number>
---@field GameModeIDBlackListForPC ULuaArrayHelper<number>
---@field DrawRtMaterials_Male FDrawRTMaterials
---@field DrawRtMaterials_Female FDrawRTMaterials
---@field RTSizeMap ULuaMapHelper<number, FDrawFaceSceneRTSize>
---@field MakeupDefaultValue_Male ULuaMapHelper<number, string>
---@field MakeupDefaultValue_Female ULuaMapHelper<number, string>
---@field LoadedTextureResourceMap ULuaMapHelper<string, UTexture>
---@field CurSoftTextureMap ULuaMapHelper<string, UTexture>
---@field CurSoftTextureMap_AvatarAsync ULuaMapHelper<string, UTexture>
---@field CurBaseMaterialParamMap ULuaMapHelper<string, FMakeupMaterialParam>
---@field CurNormalMaterialParamMap ULuaMapHelper<string, FMakeupMaterialParam>
---@field CurRoughnessMaterialParamMap ULuaMapHelper<string, FMakeupMaterialParam>
---@field CurEyeBallParamMap ULuaMapHelper<string, FMakeupMaterialParam>
---@field CurEyelashParamMap ULuaMapHelper<string, FMakeupMaterialParam>
---@field CurSkinParamMap ULuaMapHelper<string, FMakeupMaterialParam>
---@field CurEyeMaterialParamMap ULuaMapHelper<string, FMakeupMaterialParam>
---@field AsyncLoadTexIdx number
---@field CurDeviceLevel number
---@field IsMale boolean
---@field GalaxyFaceSceneType EGalaxyFaceSceneType
---@field CurSkinColor FLinearColor
---@field CurSkinRoughness number
---@field IsSetSkin boolean
---@field LastFaceData FGalaxyFaceData
---@field LastFaceDataStr string
---@field bHasLastFaceData boolean
---@field bUseIncrementBakeMesh boolean
---@field ChangedParentAndChildBoneIndexMap ULuaMapHelper<number, number>
---@field ChangedControllerMap ULuaMapHelper<number, number>
---@field ChangedBoneIndexMap ULuaMapHelper<number, number>
---@field ChangedMakeUpCommandMap ULuaMapHelper<number, string>
---@field FaceInfoReplicatedData FGalaxyFaceReplicatedData
---@field FaceInfoReplicatedData_Conditional FGalaxyFaceReplicatedData
---@field FaceInfoData string
---@field FaceState FFaceState
---@field FaceHiddenState EFaceHiddenState
---@field OnBakeFaceFinished FOnBakeFaceFinished
---@field OnSkinColorChanged FOnSkinColorChanged
---@field bReinitAnim boolean
---@field bEnableFlushOptimize boolean
---@field LastBakeRequestBodyType number
---@field bCanUseGalaxyFace boolean
---@field bProcessingGalaxyFace boolean
local UGalaxyFaceUtils = {}

---@return boolean
function UGalaxyFaceUtils:IsGalaxyFaceOpen() end

---@return boolean
function UGalaxyFaceUtils:IsOpenAsyncCalculateBake() end

---@return boolean
function UGalaxyFaceUtils:IsES2Device() end

---@return boolean
function UGalaxyFaceUtils:IsMakeupOpen() end

---@return boolean
function UGalaxyFaceUtils:IsCurGameModeSupported() end

---@param GameModeID string
function UGalaxyFaceUtils:OnGameModeIDChanged(GameModeID) end

---@param ClientModeID number
function UGalaxyFaceUtils:OnClientModeIDChanged(ClientModeID) end

---@param bEnable boolean
---@return boolean
function UGalaxyFaceUtils:EnableHighResFaceInGame(bEnable) end

---@param bEnable boolean
---@return boolean
function UGalaxyFaceUtils:EnableHighResFaceWithSkeletonInGame(bEnable) end

---@param FaceDataStr string
---@param Gender number
---@param NeedBakeMeshComp USkeletalMeshComponent
function UGalaxyFaceUtils:AsyncBakeFaceMesh(FaceDataStr, Gender, NeedBakeMeshComp) end

---@param FaceDataStr string
---@param Gender number
---@param NeedBakeMeshComp USkeletalMeshComponent
function UGalaxyFaceUtils:SyncBakeFaceMesh(FaceDataStr, Gender, NeedBakeMeshComp) end

---@param controllers ULuaMapHelper<number, number>
---@param controllerConfig UFaceControllerListDataAsset
---@param faceBoneConfig UFaceBoneListDataAsset
---@param pSourceSkeletalMesh USkeletalMesh
---@param NeedBakeMesh USkeletalMesh
---@param BakeLod number
---@param BakeMaxLod number
---@param AsyncIndex number
function UGalaxyFaceUtils:DispatchParallelBakeFaceTask(controllers, controllerConfig, faceBoneConfig, pSourceSkeletalMesh, NeedBakeMesh, BakeLod, BakeMaxLod, AsyncIndex) end

---@param FaceDataStr string
---@param Gender number
---@param NeedBakeMeshComp USkeletalMeshComponent
function UGalaxyFaceUtils:AsyncLoadPinchFaceAssets(FaceDataStr, Gender, NeedBakeMeshComp) end

---@param FaceDataStr string
---@param Gender number
---@param NeedBakeMeshComp USkeletalMeshComponent
---@param AsyncIndex number
function UGalaxyFaceUtils:OnAsyncLoadAssets(FaceDataStr, Gender, NeedBakeMeshComp, AsyncIndex) end

---@param pSourceSkeletalMesh USkeletalMesh
---@param controllers ULuaMapHelper<number, number>
function UGalaxyFaceUtils:PreBake(pSourceSkeletalMesh, controllers) end

---@param InBakeFaceSkeleton USkeletalMesh
function UGalaxyFaceUtils:InitEditMesh(InBakeFaceSkeleton) end

---@param ControllerId number
---@param Value number
function UGalaxyFaceUtils:ChangeControllerValue(ControllerId, Value) end

---@param InBakeFaceSkeletalMesh USkeletalMesh
function UGalaxyFaceUtils:SetEditMesh(InBakeFaceSkeletalMesh) end

function UGalaxyFaceUtils:InitBoneTransform() end

function UGalaxyFaceUtils:InitilizeControllerValues() end

---@param Gender number
---@param IsAutonomous boolean
---@param CurHeadId number
---@param bLod00 boolean
---@return FSoftObjectPath
function UGalaxyFaceUtils:GetBakeUseMesh(Gender, IsAutonomous, CurHeadId, bLod00) end

---@param Gender number
---@param IsAutonomous boolean
---@param CurHeadId number
---@param bLod00 boolean
---@return FSoftObjectPath
function UGalaxyFaceUtils:GetBakeUseMesh_New(Gender, IsAutonomous, CurHeadId, bLod00) end

---@param headComp USkeletalMeshComponent
---@param skMesh USkeletalMesh
function UGalaxyFaceUtils:ApplyGalaxyFaceMesh(headComp, skMesh) end

---@param MakeupCommands ULuaMapHelper<number, string>
---@param MakeupMaterialParamMap ULuaMapHelper<string, string>
function UGalaxyFaceUtils:ReadMakeupData(MakeupCommands, MakeupMaterialParamMap) end

---@param FaceMesh USkeletalMeshComponent
---@param InMakeupCommands ULuaMapHelper<number, string>
function UGalaxyFaceUtils:DrawGalaxyFace(FaceMesh, InMakeupCommands) end

---@param DebugIndex number
---@return boolean
function UGalaxyFaceUtils:GalaxyCheckIsInAvatarAsyncMode(DebugIndex) end

---@param MakeupCommands ULuaMapHelper<number, string>
---@param OutMakeupCommands ULuaMapHelper<number, string>
function UGalaxyFaceUtils:FilterNotSupportCommands(MakeupCommands, OutMakeupCommands) end

---@param BaseMaterialParamMap ULuaMapHelper<string, FMakeupMaterialParam>
---@param NormalMaterialParamMap ULuaMapHelper<string, FMakeupMaterialParam>
---@param RoughnessMaterialParamMap ULuaMapHelper<string, FMakeupMaterialParam>
---@param EyeMaterialParamMap ULuaMapHelper<string, FMakeupMaterialParam>
---@param EyeBallParamMap ULuaMapHelper<string, FMakeupMaterialParam>
---@param EyelashParamMap ULuaMapHelper<string, FMakeupMaterialParam>
---@param SkinParamMap ULuaMapHelper<string, FMakeupMaterialParam>
function UGalaxyFaceUtils:StartDrawFace(BaseMaterialParamMap, NormalMaterialParamMap, RoughnessMaterialParamMap, EyeMaterialParamMap, EyeBallParamMap, EyelashParamMap, SkinParamMap) end

---@param dstMat UMaterialInstanceDynamic
---@param MaterialParamMap ULuaMapHelper<string, FMakeupMaterialParam>
---@param Prefix string
function UGalaxyFaceUtils:SetMaterialParamFaceInternel(dstMat, MaterialParamMap, Prefix) end

---@param OutSoftPathList ULuaArrayHelper<FSoftObjectPath>
function UGalaxyFaceUtils:CollectMakeUpAssetListForAvatarAsync(OutSoftPathList) end

function UGalaxyFaceUtils:StartDrawFaceForAvatarAsync() end

---@param AsyncIndex number
function UGalaxyFaceUtils:OnAsyncLoadTextureList(AsyncIndex) end

---@param MakeupMaterialParamMap ULuaMapHelper<string, string>
---@param BaseMaterialParamMap ULuaMapHelper<string, FMakeupMaterialParam>
---@param NormalMaterialParamMap ULuaMapHelper<string, FMakeupMaterialParam>
---@param RoughnessMaterialParamMap ULuaMapHelper<string, FMakeupMaterialParam>
---@param EyeMaterialParamMap ULuaMapHelper<string, FMakeupMaterialParam>
---@param EyeBallParamMap ULuaMapHelper<string, FMakeupMaterialParam>
---@param EyelashParamMap ULuaMapHelper<string, FMakeupMaterialParam>
---@param SkinParamMap ULuaMapHelper<string, FMakeupMaterialParam>
---@param MatTextureMap ULuaMapHelper<string, number>
function UGalaxyFaceUtils:ParseMaterialParam(MakeupMaterialParamMap, BaseMaterialParamMap, NormalMaterialParamMap, RoughnessMaterialParamMap, EyeMaterialParamMap, EyeBallParamMap, EyelashParamMap, SkinParamMap, MatTextureMap) end

---@param Command string
---@param Value string
---@param BaseMaterialParamMap ULuaMapHelper<string, FMakeupMaterialParam>
---@param NormalMaterialParamMap ULuaMapHelper<string, FMakeupMaterialParam>
---@param RoughnessMaterialParamMap ULuaMapHelper<string, FMakeupMaterialParam>
---@param EyeMaterialParamMap ULuaMapHelper<string, FMakeupMaterialParam>
---@param EyeBallParamMap ULuaMapHelper<string, FMakeupMaterialParam>
---@param EyelashParamMap ULuaMapHelper<string, FMakeupMaterialParam>
---@param SkinParamMap ULuaMapHelper<string, FMakeupMaterialParam>
---@param MatTextureMap ULuaMapHelper<string, number>
function UGalaxyFaceUtils:ParseMaterialParamInternel(Command, Value, BaseMaterialParamMap, NormalMaterialParamMap, RoughnessMaterialParamMap, EyeMaterialParamMap, EyeBallParamMap, EyelashParamMap, SkinParamMap, MatTextureMap) end

function UGalaxyFaceUtils:SetCurGalaxyFaceSceneType() end

---@param isMale boolean
function UGalaxyFaceUtils:SetMakeupDataConfig(isMale) end

---@param rt UTextureRenderTarget2D
---@param fileDestination string
---@return boolean
function UGalaxyFaceUtils:SaveRenderTargetToFile(rt, fileDestination) end

---@return FLinearColor
function UGalaxyFaceUtils:GetCurSkinColor() end

---@return number
function UGalaxyFaceUtils:GetCurSkinRoughness() end

---@param BaseMaterialParamMap ULuaMapHelper<string, FMakeupMaterialParam>
---@param RoughnessMaterialParamMap ULuaMapHelper<string, FMakeupMaterialParam>
function UGalaxyFaceUtils:SetCurSkinParam(BaseMaterialParamMap, RoughnessMaterialParamMap) end

function UGalaxyFaceUtils:SetCustomFaceTexSwitch() end

---@param MeshComp UMeshComponent
---@param MatSkin UMaterialInterface
---@param SlotName string
---@param SlotId number
function UGalaxyFaceUtils:SetGalaxySkinParam(MeshComp, MatSkin, SlotName, SlotId) end

---@param MeshComp UMeshComponent
---@param MatSkin UMaterialInterface
---@param SlotName string
function UGalaxyFaceUtils:SetGalaxySkinParamInternel(MeshComp, MatSkin, SlotName) end

---@param faceData FGalaxyFaceData
---@return string
function UGalaxyFaceUtils:ConvertFaceDataToString(faceData) end

---@param InGalaxyFaceReplicatedData FGalaxyFaceReplicatedData
---@return FGalaxyFaceData
function UGalaxyFaceUtils:ConvertReplicatedFaceDataToFaceData(InGalaxyFaceReplicatedData) end

---@param InFaceData FGalaxyFaceData
---@return FGalaxyFaceReplicatedData
function UGalaxyFaceUtils:ConvertFaceDataToReplicatedFaceData(InFaceData) end

---@param str string
---@return FGalaxyFaceData
function UGalaxyFaceUtils:ConvertStringToFaceData(str) end

---@param faceData FGalaxyFaceData
---@param obj UObject
---@return string
function UGalaxyFaceUtils:GetFaceDataExportText(faceData, obj) end

---@param importText string
---@param obj UObject
---@return FGalaxyFaceData
function UGalaxyFaceUtils:CreateFaceDataFromText(importText, obj) end

---@param FaceDataStr string
---@param Gender number
---@param NeedBakeMeshComp USkeletalMeshComponent
function UGalaxyFaceUtils:BakeEmotionMesh(FaceDataStr, Gender, NeedBakeMeshComp) end

---@param NeedBakeMeshComp USkeletalMeshComponent
function UGalaxyFaceUtils:RollBackGalaxyMesh(NeedBakeMeshComp) end

---@return boolean
function UGalaxyFaceUtils:HasLastFaceData() end

---@return boolean
function UGalaxyFaceUtils:GetChangedControllersAndMakeupCommands() end

---@return boolean
function UGalaxyFaceUtils:GetChangedBoneIndex() end

---@param BoneIndex number
---@param pSourceSkeletalMesh USkeletalMesh
---@return boolean
function UGalaxyFaceUtils:CheckSelfOrParentHasBeenChanged(BoneIndex, pSourceSkeletalMesh) end

---@param ControllerId number
---@return boolean
function UGalaxyFaceUtils:CheckControllerChanged(ControllerId) end

---@param BoneName string
---@return number
function UGalaxyFaceUtils:GetFaceBoneByName(BoneName) end

---@param Size number
---@param pSourceSkeletalMesh USkeletalMesh
---@return boolean
function UGalaxyFaceUtils:GetChangedParentAndChildBoneIndexArray(Size, pSourceSkeletalMesh) end

---@return boolean
function UGalaxyFaceUtils:HasOpenIncrementBakeMesh() end

function UGalaxyFaceUtils:OnRep_FaceData() end

function UGalaxyFaceUtils:OnRep_FaceState() end

function UGalaxyFaceUtils:OnRep_FaceData_Conditional() end

---@param Flag boolean
function UGalaxyFaceUtils:SetUseConditionalFaceData(Flag) end

---@return EFaceHiddenState
function UGalaxyFaceUtils:GetCurClientBakeState() end

function UGalaxyFaceUtils:TriggerLODFaceChange() end

function UGalaxyFaceUtils:UpdateMeshState() end

function UGalaxyFaceUtils:UpdatePawnComponentBone() end

---@param AsyncLoadID number
---@param LoadEventFrom UAvatarComponent
function UGalaxyFaceUtils:OnCharacterAvatarLoadFinish(AsyncLoadID, LoadEventFrom) end

---@param LoadEventFrom UAvatarComponent
function UGalaxyFaceUtils:OnCharacterAvatarRenderFinish(LoadEventFrom) end

---@param avatarComp UCharacterAvatarComponent
---@return boolean
function UGalaxyFaceUtils:HasHiddenGalaxyFaceAvatar(avatarComp) end

function UGalaxyFaceUtils:ClearGalaxyFaceData() end

---@param InFirstSkMesh USkeletalMesh
---@param InSecondSkMesh USkeletalMesh
---@return boolean
function UGalaxyFaceUtils:CheckSkeletonIsSame(InFirstSkMesh, InSecondSkMesh) end

function UGalaxyFaceUtils:RefreshHairEntityIfMeshChangeAndDirty() end

---@param InMasterComponent USkeletalMeshComponent
---@param bIsMale boolean
---@param NewMesh USkeletalMesh
function UGalaxyFaceUtils:CheckAndApplyOrBakeMeshSkeleton(InMasterComponent, bIsMale, NewMesh) end

---@param InMasterComponent USkeletalMeshComponent
---@param bIsMale boolean
---@param LastBakedMesh USkeletalMesh
function UGalaxyFaceUtils:UpdateGalaxyFace(InMasterComponent, bIsMale, LastBakedMesh) end

---@param InMasterComponent USkeletalMeshComponent
---@param LastDefaultFaceMesh USkeletalMesh
function UGalaxyFaceUtils:UpdateGalaxyFaceByHiddenFaceAvatar(InMasterComponent, LastDefaultFaceMesh) end

function UGalaxyFaceUtils:ReceiveOnCharacterAvatarRenderFinish() end

function UGalaxyFaceUtils:UpdateDefaultMesh() end

---@return boolean
function UGalaxyFaceUtils:CheckLastRequestBodyTypeIsMatch() end

---@param IsAutonomousAvatar boolean
---@param LoadEventFrom UAvatarComponent
function UGalaxyFaceUtils:OnAutonomousAvatarChange(IsAutonomousAvatar, LoadEventFrom) end
