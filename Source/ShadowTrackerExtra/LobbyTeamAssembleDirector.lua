---@meta

---@class FLobbyTeammateConfig
---@field AnimationMontage UAnimMontage
FLobbyTeammateConfig = {}


---@class FLobbyBackgroundConfig
---@field BackgroundActorClass AActor
---@field BackgroundTransform FTransform
FLobbyBackgroundConfig = {}


---@class FLobbyTeammateRuntimeData
---@field IsShowCharacter boolean
FLobbyTeammateRuntimeData = {}


---@class FOnTeammateAnimationLoaded : ULuaMulticastDelegate
FOnTeammateAnimationLoaded = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, TeammateIndex: number, bLoadSuccess: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnTeammateAnimationLoaded:Add(Callback, Obj) end

---触发 Lua 广播
---@param TeammateIndex number
---@param bLoadSuccess boolean
function FOnTeammateAnimationLoaded:Broadcast(TeammateIndex, bLoadSuccess) end


---@class FOnAllTeammateAnimationsLoaded : ULuaMulticastDelegate
FOnAllTeammateAnimationsLoaded = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bAllLoadSuccess: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAllTeammateAnimationsLoaded:Add(Callback, Obj) end

---触发 Lua 广播
---@param bAllLoadSuccess boolean
function FOnAllTeammateAnimationsLoaded:Broadcast(bAllLoadSuccess) end


---@class FOnTeammateMontageFinished : ULuaMulticastDelegate
FOnTeammateMontageFinished = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, TeammateIndex: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnTeammateMontageFinished:Add(Callback, Obj) end

---触发 Lua 广播
---@param TeammateIndex number
function FOnTeammateMontageFinished:Broadcast(TeammateIndex) end


---@class FOnAllTeammateMontagesFinished : ULuaSingleDelegate
FOnAllTeammateMontagesFinished = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAllTeammateMontagesFinished:Bind(Callback, Obj) end

---执行委托
function FOnAllTeammateMontagesFinished:Execute() end


---@class FOnBackgroundActorSpawned : ULuaMulticastDelegate
FOnBackgroundActorSpawned = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SpawnedBackgroundActor: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnBackgroundActorSpawned:Add(Callback, Obj) end

---触发 Lua 广播
---@param SpawnedBackgroundActor AActor
function FOnBackgroundActorSpawned:Broadcast(SpawnedBackgroundActor) end


---@class ALobbyTeamAssembleDirector: AActor
---@field TeammatePositions ULuaArrayHelper<USceneComponent>
---@field TeammateConfigs ULuaArrayHelper<FLobbyTeammateConfig>
---@field TeammateData ULuaArrayHelper<FLobbyTeammateRuntimeData>
---@field TeammateActorClass AActor
---@field BackgroundConfig FLobbyBackgroundConfig
---@field OnTeammateAnimationLoaded FOnTeammateAnimationLoaded
---@field OnAllTeammateAnimationsLoaded FOnAllTeammateAnimationsLoaded
---@field OnTeammateMontageFinished FOnTeammateMontageFinished
---@field OnAllTeammateMontagesFinished FOnAllTeammateMontagesFinished
---@field OnBackgroundActorSpawned FOnBackgroundActorSpawned
local ALobbyTeamAssembleDirector = {}

---@param TeammateActors ULuaArrayHelper<AActor>
function ALobbyTeamAssembleDirector:SetupTeammatesAndLoadAnimations(TeammateActors) end

---@param Actor AActor
---@param PositionIndex number
function ALobbyTeamAssembleDirector:AttachActorToPosition(Actor, PositionIndex) end

---@param PositionIndex number
function ALobbyTeamAssembleDirector:DetachActorFromPosition(PositionIndex) end

function ALobbyTeamAssembleDirector:DetachAllActors() end

function ALobbyTeamAssembleDirector:DestroyAllTeammatesAndData() end

function ALobbyTeamAssembleDirector:LoadAndSpawnBackgroundActor() end

function ALobbyTeamAssembleDirector:DestroyBackgroundActor() end

---@return boolean
function ALobbyTeamAssembleDirector:IsBackgroundLoadingComplete() end

function ALobbyTeamAssembleDirector:GetAllPositionComponents() end

---@return number
function ALobbyTeamAssembleDirector:GetMaxPositionCount() end

function ALobbyTeamAssembleDirector:PlayAllTeammateAnimations() end

---@param TeammateIndex number
function ALobbyTeamAssembleDirector:PlayTeammateAnimation(TeammateIndex) end

function ALobbyTeamAssembleDirector:StopAllTeammateAnimations() end

---@param TeammateIndex number
function ALobbyTeamAssembleDirector:StopTeammateAnimation(TeammateIndex) end

---@return boolean
function ALobbyTeamAssembleDirector:IsAnimationLoadingComplete() end

---@return number
function ALobbyTeamAssembleDirector:GetAnimationLoadingProgress() end

---@param TeammateIndex number
---@param PlayRate number
function ALobbyTeamAssembleDirector:PlayTeammateAnimationWithRate(TeammateIndex, PlayRate) end

---@param TeammateIndex number
---@param PlayRate number
function ALobbyTeamAssembleDirector:PlayTeammateAnimationAndFreeze(TeammateIndex, PlayRate) end

---@param PlayRate number
function ALobbyTeamAssembleDirector:PlayAllTeammateAnimationsAndFreeze(PlayRate) end

function ALobbyTeamAssembleDirector:JumpToAllTeammateAnimationsLastFrame() end

---@param TeammateIndex number
function ALobbyTeamAssembleDirector:JumpToTeammateAnimationLastFrame(TeammateIndex) end

---@param TeammateIndex number
---@return boolean
function ALobbyTeamAssembleDirector:IsTeammateMontageePlaying(TeammateIndex) end

---@return number
function ALobbyTeamAssembleDirector:GetLoadedAnimationCount() end

---@return number
function ALobbyTeamAssembleDirector:GetTotalAnimationCount() end

function ALobbyTeamAssembleDirector:CollectComponents() end

---@param InMaterial UMaterialInterface
---@param InSlotName string
function ALobbyTeamAssembleDirector:SetBackgroundBigPlaneMaterial(InMaterial, InSlotName) end

---@param Montage UAnimMontage
---@param bInterrupted boolean
function ALobbyTeamAssembleDirector:OnMontageBlendingOut(Montage, bInterrupted) end

---@param Montage UAnimMontage
---@param bInterrupted boolean
function ALobbyTeamAssembleDirector:OnMontageEnded(Montage, bInterrupted) end
