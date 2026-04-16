---@meta

---@class FModelChangeDelegate : ULuaMulticastDelegate
FModelChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, itemid: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FModelChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param itemid number
function FModelChangeDelegate:Broadcast(itemid) end


---@class FItemGetAllResPathCallBack : ULuaMulticastDelegate
FItemGetAllResPathCallBack = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SystemTag: string, ResId: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FItemGetAllResPathCallBack:Add(Callback, Obj) end

---触发 Lua 广播
---@param SystemTag string
---@param ResId number
function FItemGetAllResPathCallBack:Broadcast(SystemTag, ResId) end


---@class FAsyncGetSoftRefObjCallBack : ULuaMulticastDelegate
FAsyncGetSoftRefObjCallBack = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, AssetPath: FSoftObjectPath, LoadedObject: UObject) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAsyncGetSoftRefObjCallBack:Add(Callback, Obj) end

---触发 Lua 广播
---@param AssetPath FSoftObjectPath
---@param LoadedObject UObject
function FAsyncGetSoftRefObjCallBack:Broadcast(AssetPath, LoadedObject) end


---@class FItemRotatingEvent : ULuaSingleDelegate
FItemRotatingEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FItemRotatingEvent:Bind(Callback, Obj) end

---执行委托
function FItemRotatingEvent:Execute() end


---@class FItemRotateEndEvent : ULuaSingleDelegate
FItemRotateEndEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FItemRotateEndEvent:Bind(Callback, Obj) end

---执行委托
function FItemRotateEndEvent:Execute() end


---@class ALobbyItemShowActor: AActor
---@field EffectTimer FTimerHandle
---@field DecalComponentsMap ULuaMapHelper<string, UDecalComponent>
---@field CurResId number
---@field AvatarModelTransform ULuaMapHelper<EAvatarSlotType, FTransform>
---@field VehicleModelTransform ULuaMapHelper<EVehicleAvatarSlot, FTransform>
---@field BoatAircraftUI UUAEUserWidget
---@field AnimLength number
---@field BaseMatMapping ULuaMapHelper<UMaterialInterface, UMaterialInterface>
---@field GenNameWidgetSwitcherIndex number
---@field DstTag string
---@field AsyncLoadIndex number
---@field MontageLength number
---@field OnMyModelChangeDelegate FModelChangeDelegate
---@field TotalResPath ULuaArrayHelper<FSoftObjectPath>
---@field AsyncLoadBigWorldModelIndex number
---@field VehicleSubAnimSlotName string
---@field Lod00MatEndWith string
---@field RotatingEvent FItemRotatingEvent
---@field RotateEndEvent FItemRotateEndEvent
---@field AnimVehiclePengLength number
---@field CurrentRotateThreshold number
---@field RotatedPixProduct number
---@field RotateThresholdMin number
---@field RotateThresholdMax number
---@field CurFPSMax number
---@field CurFPSMin number
local ALobbyItemShowActor = {}

---@param resId number
---@param sceneComponentIn USceneComponent
---@return boolean
function ALobbyItemShowActor:ShowItemModelByResId(resId, sceneComponentIn) end

---@param IsRefreshTexture boolean
---@param IsRefreshAll boolean
---@return boolean
function ALobbyItemShowActor:DownloadCallBack(IsRefreshTexture, IsRefreshAll) end

---@param dstTag string
---@param resId number
---@param streamerid number
function ALobbyItemShowActor:ShowStreamerByResId(dstTag, resId, streamerid) end

---@param streamerid number
function ALobbyItemShowActor:ShowTwinsAppearanceById(streamerid) end

---@return number
function ALobbyItemShowActor:GetVehicleTwinsId() end

---@param resId number
function ALobbyItemShowActor:PutOnComponentByResId(resId) end

---@param resId number
function ALobbyItemShowActor:PutOffComponentByResId(resId) end

---@param slotId number
function ALobbyItemShowActor:PutOffComponentBySlotId(slotId) end

---@param trans FTransform
function ALobbyItemShowActor:SetModelLocalTransform(trans) end

function ALobbyItemShowActor:ClearModel() end

function ALobbyItemShowActor:ClickModel() end

---@param tag string
function ALobbyItemShowActor:SetDstTag(tag) end

---@return string
function ALobbyItemShowActor:GetDstTag() end

---@param show boolean
function ALobbyItemShowActor:SetParticleVisiblity(show) end

---@param show boolean
function ALobbyItemShowActor:VisiblityChanged(show) end

---@return string
function ALobbyItemShowActor:GetItemAdditionData() end

---@return number
function ALobbyItemShowActor:GetCurResID() end

---@param meshPack FMeshPackage
---@param skComponent UMeshComponent
---@param stComponent UMeshComponent
function ALobbyItemShowActor:SetMeshAndMatarial(meshPack, skComponent, stComponent) end

---@param slot number
---@return string
function ALobbyItemShowActor:GetSlotSocketName(slot) end

function ALobbyItemShowActor:ItemAnimStart() end

function ALobbyItemShowActor:ItemAnimEnd() end

function ALobbyItemShowActor:MontageStart() end

function ALobbyItemShowActor:MontageEnd() end

function ALobbyItemShowActor:SetupBaseMatMap() end

function ALobbyItemShowActor:ItemIntroAnimEnd() end

function ALobbyItemShowActor:ItemPengAnimEnd() end

---@param component UMeshComponent
---@param skeletalMesh USkeletalMesh
---@param staticMesh UStaticMesh
function ALobbyItemShowActor:ApplyMesh(component, skeletalMesh, staticMesh) end

---@param meshPack FMeshPackage
---@param InAssetRef FSoftObjectPath
---@return FSoftObjectPath
function ALobbyItemShowActor:ReceiveGetSkeletalMesh(meshPack, InAssetRef) end

---@param meshPack FMeshPackage
---@return FAvatarMeshConfig
function ALobbyItemShowActor:GetAvatarMeshConfig(meshPack) end

---@param meshPack FMeshPackage
---@param InAssetRef FSoftObjectPath
---@return FSoftObjectPath
function ALobbyItemShowActor:ReceiveGetStaticMesh(meshPack, InAssetRef) end

---@param mat UMaterialInterface
---@param isOpen boolean
function ALobbyItemShowActor:SetStreamingLOD(mat, isOpen) end

---@param meshComp UMeshComponent
---@param material UMaterialInstance
function ALobbyItemShowActor:ApplyMaterial(meshComp, material) end

---@param meshComp UMeshComponent
---@param material UMaterialInstance
---@param idx number
function ALobbyItemShowActor:ApplyMaterialByIdx(meshComp, material, idx) end

---@param resId number
---@param component UMeshComponent
function ALobbyItemShowActor:ShowFlightSuitByResId(resId, component) end

---@param slotId number
---@param entity ULobbyModelShowEntity
---@return FTransform
function ALobbyItemShowActor:GetTransformBySlotId(slotId, entity) end

---@param animPath string
---@param animType number
function ALobbyItemShowActor:PlayItemAnim(animPath, animType) end

function ALobbyItemShowActor:StopItemSound() end

---@param animPath string
---@param animType number
function ALobbyItemShowActor:PlayItemMontage(animPath, animType) end

function ALobbyItemShowActor:StopPlayItemAnim() end

---@param ratio number
function ALobbyItemShowActor:SetItemAnimPos(ratio) end

function ALobbyItemShowActor:PauseItemMontage() end

function ALobbyItemShowActor:ResumeItemMontage() end

function ALobbyItemShowActor:StopItemMontage() end

---@param id number
---@param bIsLoop boolean
function ALobbyItemShowActor:AttachParticle(id, bIsLoop) end

function ALobbyItemShowActor:ClearParticle() end

---@param showTime number
function ALobbyItemShowActor:SetParticleShowTime(showTime) end

---@param slotID number
---@param animPath string
---@param animType number
function ALobbyItemShowActor:PlayItemMontageBySlotID(slotID, animPath, animType) end

---@param slotResID number
---@param animPath string
---@param animType number
function ALobbyItemShowActor:PlayItemMontageBySlotResID(slotResID, animPath, animType) end

---@param slotID number
function ALobbyItemShowActor:StopItemAnimBySlotID(slotID) end

---@param SlotID number
---@param ParticleID number
function ALobbyItemShowActor:AttachParticleBySlotID(SlotID, ParticleID) end

---@param SlotID number
function ALobbyItemShowActor:ClearParticleBySlotID(SlotID) end

---@param SlotResID number
function ALobbyItemShowActor:ClearParticleBySlotResID(SlotResID) end

---@param showTime number
---@param SlotResID number
function ALobbyItemShowActor:SetParticleShowTimeBySlotResID(showTime, SlotResID) end

---@param meshPackage FMeshPackage
---@return EMeshType
function ALobbyItemShowActor:GetMeshType(meshPackage) end

---@param name string
---@param ParameterName string
---@param idx number
---@param plateNumber string
---@param styleId number
---@param VehicleParameterName string
function ALobbyItemShowActor:ApplyItemNameMaterial(name, ParameterName, idx, plateNumber, styleId, VehicleParameterName) end

---@param Value number
---@param ParameterName string
---@param idx number
function ALobbyItemShowActor:SetItemMaterialScalarParameter(Value, ParameterName, idx) end

---@param InTexture UTexture
---@param ParameterName string
---@param SlotName string
function ALobbyItemShowActor:SetItemMaterialTextureParameter(InTexture, ParameterName, SlotName) end

---根据材质的Index修改Mesh的材质
---@param InMaterialInst UMaterialInstance
---@param InIndex number
function ALobbyItemShowActor:SetItemMaterialByIndex(InMaterialInst, InIndex) end

---根据材质的SlotName修改Mesh的材质
---@param InMaterialInst UMaterialInstance
---@param InSlotName string
function ALobbyItemShowActor:SetItemMaterialBySlotName(InMaterialInst, InSlotName) end

---@param resId number
function ALobbyItemShowActor:ShowVehicleIntroByResId(resId) end

function ALobbyItemShowActor:StopVehicleIntro() end

function ALobbyItemShowActor:PrivateUpdateDynamicCollision() end

---播放LevelSequence
---@param InLevelSequenceType number
---@param InLobbyCharacter AActor
---@param InPlayLevelSequenceMode number
---@return boolean
function ALobbyItemShowActor:PlayLevelSequence(InLevelSequenceType, InLobbyCharacter, InPlayLevelSequenceMode) end

---停止LevelSequence
---@return boolean
function ALobbyItemShowActor:StopLevelSequence() end

---创建贴花组件
---@param DecalComponentName string
function ALobbyItemShowActor:CreateDecalComponent(DecalComponentName) end

---设置贴花组件的参数
---@param DecalComponentName string
---@param InExtraData ULuaMapHelper<string, string>
function ALobbyItemShowActor:SetDecalComponentParams(DecalComponentName, InExtraData) end

---修改贴花的内容
---@param DecalComponentName string
---@param InParameterName string
---@param InDecalContent string
function ALobbyItemShowActor:SetDecalComponentContent(DecalComponentName, InParameterName, InDecalContent) end

---根据特效名称播放特效
---@param InParticleName string
---@param bIsLoop boolean
function ALobbyItemShowActor:AttachParticleByName(InParticleName, bIsLoop) end

---释放LevelSequence的资源
function ALobbyItemShowActor:ReleaseLevelSequenceResources() end

---@return number
function ALobbyItemShowActor:GetCurItemResId() end

---@param InObjectPtr UObject
---@param AnimType number
---@param AnimState ELobbyNPCAnimState
function ALobbyItemShowActor:AsyncLoadRes(InObjectPtr, AnimType, AnimState) end

---@param Index number
---@param InPath FSoftObjectPath
---@param AnimType number
---@param AnimState ELobbyNPCAnimState
function ALobbyItemShowActor:AsyncLoadCallBack(Index, InPath, AnimType, AnimState) end

---@param InAnimSequence UAnimSequence
---@param AnimType number
---@param AnimState ELobbyNPCAnimState
function ALobbyItemShowActor:AsyncLoadFinishAndPlayAnim(InAnimSequence, AnimType, AnimState) end

---@param InAnimLength number
function ALobbyItemShowActor:SetAnimLength(InAnimLength) end

---@param InMontageLength number
function ALobbyItemShowActor:SetMontageLength(InMontageLength) end

function ALobbyItemShowActor:SetVehicleAnimEnd() end

---@param deltaTime number
---@param beBurn boolean
---@return boolean
function ALobbyItemShowActor:BurnTire(deltaTime, beBurn) end

---@return boolean
function ALobbyItemShowActor:CanBurnTire() end

function ALobbyItemShowActor:DoModelChange() end

---@param deltaTime number
---@param bReverse boolean
---@param bOnlyOne boolean
---@return boolean
function ALobbyItemShowActor:PlayVehicleUTurn(deltaTime, bReverse, bOnlyOne) end

function ALobbyItemShowActor:StopVehicleUTurn() end

function ALobbyItemShowActor:VehicleUTurnReset() end

---@param degre number
function ALobbyItemShowActor:VehicleBeginRotateDegree(degre) end

---@return boolean
function ALobbyItemShowActor:VehicleCanUTurn() end

---@param ResId number
---@return FBoxSphereBounds
function ALobbyItemShowActor:GetCurHandleMeshBounds(ResId) end

---@param SystemTag string
---@param ResId number
---@param InDelegate FItemGetAllResPathCallBack
function ALobbyItemShowActor:AsyncLoadHandlesByResId(SystemTag, ResId, InDelegate) end

---@param SystemTag string
---@param ResId number
---@param ParentHandle FSoftObjectPath
---@param InDelegate FItemGetAllResPathCallBack
---@param AsyncLoadItemIndex number
function ALobbyItemShowActor:LoadChildHandle(SystemTag, ResId, ParentHandle, InDelegate, AsyncLoadItemIndex) end

---@param SystemTag string
---@param ResId number
---@param InHandles ULuaArrayHelper<FSoftObjectPath>
---@param InDelegate FItemGetAllResPathCallBack
---@param AsyncLoadItemIndex number
function ALobbyItemShowActor:GetAllResPathesAfterLoadAllHandle(SystemTag, ResId, InHandles, InDelegate, AsyncLoadItemIndex) end

---@param SystemTag string
---@param ResId number
---@param InDelegate FItemGetAllResPathCallBack
---@param AsyncLoadItemIndex number
function ALobbyItemShowActor:CompleteAllResLoadAndCallCB(SystemTag, ResId, InDelegate, AsyncLoadItemIndex) end

---@param InHandle UBattleItemHandleBase
function ALobbyItemShowActor:CollectItemHandleRes(InHandle) end

---@return boolean
function ALobbyItemShowActor:ItemHasAnimBpOrNot() end

---@return boolean
function ALobbyItemShowActor:GetLOD00State() end

---@param InMeshPackage FMeshPackage
---@return boolean
function ALobbyItemShowActor:CheckLod00QualityIsMatch(InMeshPackage) end

function ALobbyItemShowActor:PlayTrailSeq() end

function ALobbyItemShowActor:StopTrailSeq() end

function ALobbyItemShowActor:PlayGeneradeParticle() end

function ALobbyItemShowActor:StopGeneradeParticle() end

function ALobbyItemShowActor:OnRotatingEventTrigger() end

function ALobbyItemShowActor:OnRotateStoppedEventTrigger() end

---@return EVehiclePengState
function ALobbyItemShowActor:GetVehiclePengState() end

---@return EVehicleTireState
function ALobbyItemShowActor:GetVehicleTireState() end

---@param PengS EVehiclePengState
---@param seq UAnimSequence
function ALobbyItemShowActor:SetVehiclePengState(PengS, seq) end

---@param TireS EVehicleTireState
---@param seq UAnimSequence
function ALobbyItemShowActor:SetVehicleTireState(TireS, seq) end

function ALobbyItemShowActor:VehiclePengStateChange() end

---@param animPath string
---@param isOpen boolean
---@param isForce boolean
---@return boolean
function ALobbyItemShowActor:PlayVehiclePengAnim(animPath, isOpen, isForce) end

function ALobbyItemShowActor:StopPlayVehiclePengAnim() end

---@param behaveType EItemBehaviorType
---@param additionParams ULuaMapHelper<string, string>
---@return boolean
function ALobbyItemShowActor:PlayEntityBehave(behaveType, additionParams) end

---@param behaveType EItemBehaviorType
function ALobbyItemShowActor:StopEntityBehave(behaveType) end

function ALobbyItemShowActor:StopEntityAllBehave() end

---@param behaveType EItemBehaviorType
---@return boolean
function ALobbyItemShowActor:IsBehaviorStillDoing(behaveType) end

---@param id number
---@param IsAudioPlay boolean
---@return number
function ALobbyItemShowActor:PlayModelParticleAndAudio(id, IsAudioPlay) end

---@param InString string
---@return FTransform
function ALobbyItemShowActor:String2Trans(InString) end

---@return EAttachLocation
function ALobbyItemShowActor:GetParticleAttachRule() end

function ALobbyItemShowActor:UpdateCurrentRotateThreshold() end

function ALobbyItemShowActor:OnFpsChanged() end

---@param ParticleBPId number
---@param id number
---@param IsAudioPlay boolean
function ALobbyItemShowActor:PlayParticleAndAudioWithoutModel(ParticleBPId, id, IsAudioPlay) end

function ALobbyItemShowActor:StopParticleAndAudioWithoutModel() end
