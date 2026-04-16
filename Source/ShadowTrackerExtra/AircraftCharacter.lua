---@meta

---@class FAircraftCharacterInfo
---@field AvatarList ULuaArrayHelper<number>
---@field bIsEnable boolean
FAircraftCharacterInfo = {}


---@class FAircraftCharacterLoadReq
---@field bValidTask boolean
---@field ReqID number
---@field AircraftInfo FAircraftCharacterInfo
---@field LoadingHandleRefList ULuaArrayHelper<UBattleItemHandleBase>
---@field LoadingResList ULuaArrayHelper<FSoftObjectPath>
FAircraftCharacterLoadReq = {}


---@class FRenderAircraftFinishedDelegate : ULuaMulticastDelegate
FRenderAircraftFinishedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, AircraftCharacter: AAircraftCharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FRenderAircraftFinishedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param AircraftCharacter AAircraftCharacter
function FRenderAircraftFinishedDelegate:Broadcast(AircraftCharacter) end


---@class AAircraftCharacter: ACharacter, ISTExtraInputInterface, IParachuteInterface, IPlayerLogicInterface
---@field ReplicatedParchuteState FReplicatedParachuteState
---@field ReplicatedParachuteMove FReplicatedParachuteMove
---@field ReplicatedParachuteMove_New FReplicatedParachuteMove_New
---@field AvatarOpenSkinWeightProfileName_Male string
---@field AvatarOpenSkinWeightProfileName_Female string
---@field SingleSocket string
---@field DoubleSockets ULuaArrayHelper<string>
---@field TripleSockets ULuaArrayHelper<string>
---@field QuadrupleSockets ULuaArrayHelper<string>
---@field NetAircraftCharacterInfoList ULuaArrayHelper<FAircraftCharacterInfo>
---@field CurProcessingAircraftIndex number
---@field CurAsyncLoadReqID number
---@field CurAircraftCharacterTask FAircraftCharacterLoadReq
---@field ItemAsyncLoadChannel number
---@field AsyncLoadDelayTime number
---@field OnRenderAircraftFinished FRenderAircraftFinishedDelegate
---@field CachedParticleComponents ULuaArrayHelper<UParticleSystemComponent>
---@field GlideConfigState number
---@field GlideGlobalVisible boolean
---@field CachedAircraftHandles ULuaArrayHelper<UBattleItemHandleBase>
---@field CachedParticles ULuaArrayHelper<UParticleSystem>
---@field AttachedActors ULuaArrayHelper<AActor>
---@field LastAttachedActors ULuaArrayHelper<AActor>
---@field IDToNearClipPlane ULuaMapHelper<number, number>
---@field CheckCachedAircraftHandleTimerHandle FTimerHandle
---@field DefaultAircraftID ULuaArrayHelper<number>
local AAircraftCharacter = {}

function AAircraftCharacter:EndParachute() end

---@param rate number
function AAircraftCharacter:MoveForward(rate) end

---@param rate number
function AAircraftCharacter:MoveRight(rate) end

---@param TotalNum number
function AAircraftCharacter:GetSocketsList(TotalNum) end

---@param InThrottleInput number
---@param InSteeringInput number
---@param State number
---@param ControlRotation FRotator
function AAircraftCharacter:ServerUpdateState(InThrottleInput, InSteeringInput, State, ControlRotation) end

---@param InThrottleInput FFloat_NetQuantize8
---@param InSteeringInput FFloat_NetQuantize8
---@param State number
---@param ControlRotation FRotator
function AAircraftCharacter:ServerUpdateState_New(InThrottleInput, InSteeringInput, State, ControlRotation) end

---@param Timestamp number
---@param Position FVector_NetQuantize100
---@param Rotation FRotator
---@param Velocity FVector_NetQuantize100
function AAircraftCharacter:SendClientMoveToServerUnreliaby(Timestamp, Position, Rotation, Velocity) end

---@param Timestamp number
---@param Position FVector
---@param Rotation FRotator
---@param Velocity FVector
function AAircraftCharacter:SendClientMoveToServerReliaby(Timestamp, Position, Rotation, Velocity) end

---@param Timestamp number
---@param Position FVector
---@param Rotation FRotator
---@param Velocity FVector
function AAircraftCharacter:SendServerMoveToClientUnreliaby(Timestamp, Position, Rotation, Velocity) end

---@param Timestamp number
---@param Position FVector
---@param Rotation FRotator
---@param Velocity FVector
function AAircraftCharacter:SendServerMoveToClientReliaby(Timestamp, Position, Rotation, Velocity) end

function AAircraftCharacter:OnRep_ReplicatedParachuteState() end

function AAircraftCharacter:OnRep_ReplicatedParachuteMove() end

function AAircraftCharacter:OnRep_ReplicatedParachuteMove_New() end

function AAircraftCharacter:CheckMeshRegister() end

function AAircraftCharacter:OnRep_AircraftCharacterInfoList() end

---@param InAircraftNetInfoIndex number
---@return boolean
function AAircraftCharacter:TryStartAsyncLoadAircraft(InAircraftNetInfoIndex) end

---@param InHandleList ULuaArrayHelper<UBattleItemHandleBase>
---@param InRequestID number
function AAircraftCharacter:OnAsyncLoadItemHandleListFinish(InHandleList, InRequestID) end

---@return number
function AAircraftCharacter:CalcAsyncLoadDelayTime() end

---@param InDisplayTask FAircraftCharacterLoadReq
function AAircraftCharacter:CollectAndAsyncLoadDisplayRes(InDisplayTask) end

---@param InHandleList ULuaArrayHelper<UBattleItemHandleBase>
function AAircraftCharacter:GetRenderResList(InHandleList) end

---@param CollectRes ULuaArrayHelper<FSoftObjectPath>
---@param Handle UBattleItemHandleBase
function AAircraftCharacter:CollectDesiredResource(CollectRes, Handle) end

---@param CollectRes ULuaArrayHelper<FSoftObjectPath>
---@param Handle UBattleItemHandleBase
function AAircraftCharacter:CollectMaterialResource(CollectRes, Handle) end

---@param CollectRes ULuaArrayHelper<FSoftObjectPath>
---@param Handle UBattleItemHandleBase
function AAircraftCharacter:CollectMeshResource(CollectRes, Handle) end

---@param CollectRes ULuaArrayHelper<FSoftObjectPath>
---@param Handle UBattleItemHandleBase
function AAircraftCharacter:CollectAnimResource(CollectRes, Handle) end

---@param CollectRes ULuaArrayHelper<FSoftObjectPath>
---@param Handle UBattleItemHandleBase
function AAircraftCharacter:CollectParticleResource(CollectRes, Handle) end

---@param InLoadingResList ULuaArrayHelper<FSoftObjectPath>
function AAircraftCharacter:LoadAircraftDisplayResAsync(InLoadingResList) end

---@param InLoadingResList ULuaArrayHelper<FSoftObjectPath>
---@param InAsyncLoadID number
function AAircraftCharacter:OnAsyncLoadAircraftDisplayRes(InLoadingResList, InAsyncLoadID) end

---@param InLoadingResList ULuaArrayHelper<FSoftObjectPath>
---@param InAsyncLoadID number
function AAircraftCharacter:EventOnAsyncLoadAircraftDisplayRes(InLoadingResList, InAsyncLoadID) end

---@param InLoadReq FAircraftCharacterLoadReq
function AAircraftCharacter:RenderAircraftCharacter(InLoadReq) end

---@param InLoadReq FAircraftCharacterLoadReq
function AAircraftCharacter:PostRenderAircraftCharacter(InLoadReq) end

---@param Handle UBattleItemHandleBase
function AAircraftCharacter:ApplyMaterial(Handle) end

---@param Handle UBattleItemHandleBase
function AAircraftCharacter:ApplyMesh(Handle) end

---@param Handle UBattleItemHandleBase
function AAircraftCharacter:ApplyAnim(Handle) end

---@param Handle UBattleItemHandleBase
function AAircraftCharacter:ApplyParticle(Handle) end

---@param Handle UBattleItemHandleBase
function AAircraftCharacter:ApplyParachuteAnimListOverride(Handle) end

---@param ItemIDs ULuaArrayHelper<number>
function AAircraftCharacter:AsyncClientDisplayAircraft(ItemIDs) end

function AAircraftCharacter:OnRep_GlideConfigState() end

function AAircraftCharacter:OnRep_GlideGlobalVisible() end

---@param bRegister boolean
function AAircraftCharacter:RegisterOrUnregisterMesh(bRegister) end

function AAircraftCharacter:BroadcastOnRenderAircraftFinished() end

---@param Handle UBattleItemHandleBase
---@return FSoftObjectPath
function AAircraftCharacter:GetMeshRef(Handle) end

function AAircraftCharacter:OnRep_AttachedActors() end

---@param PreState EParachuteState
---@param CurState EParachuteState
function AAircraftCharacter:OnParachuteStateChanged(PreState, CurState) end

---@param PreState EParachuteState
---@param CurState EParachuteState
function AAircraftCharacter:OnParachuteStateChangedForAutonomous(PreState, CurState) end

function AAircraftCharacter:OnParachuteStateChangedForSimluate() end

function AAircraftCharacter:EndPlayEvent() end

---@param AsyncLoadID number
---@param LoadEventFrom UAvatarComponent
function AAircraftCharacter:OnAvatarAsyncLoadingFinished(AsyncLoadID, LoadEventFrom) end

---@param InPlayer ASTExtraPlayerCharacter
---@param InVisible boolean
function AAircraftCharacter:SetParachuteVisible(InPlayer, InVisible) end

function AAircraftCharacter:OnPlayerEnterJumping() end

function AAircraftCharacter:HandleNearClipPlane() end

function AAircraftCharacter:HandleCharacterParachuteSubAnim() end

---@param MeshPack FMeshPackage
---@return boolean
function AAircraftCharacter:IsMatHighDeviceQuality(MeshPack) end

---@return boolean
function AAircraftCharacter:CheckCanActiveParticle() end

---@param NewTarget AActor
---@param PrevTarget AActor
function AAircraftCharacter:HandleViewTargetChange(NewTarget, PrevTarget) end

---@param AttachParent AActor
---@param AttachParent_Direct AActor
---@param AttachComponent USceneComponent
---@param AttachSocket string
function AAircraftCharacter:PostAttachmentReplication(AttachParent, AttachParent_Direct, AttachComponent, AttachSocket) end

---@param ItemIDs ULuaArrayHelper<number>
function AAircraftCharacter:ServerDisplayAircraft(ItemIDs) end

---@param InGlideConfigState number
function AAircraftCharacter:OnGlideConfigStateChangeFunction(InGlideConfigState) end

---@param InGlideGlobalVisible boolean
function AAircraftCharacter:OnGlideGlobalVisibleFunction(InGlideGlobalVisible) end

---@param InAttachedActor AActor
function AAircraftCharacter:AddAttachedActor(InAttachedActor) end

---@param InAttachedActor AActor
function AAircraftCharacter:RemoveAttachedActor(InAttachedActor) end

function AAircraftCharacter:ClearAttachedActor() end
