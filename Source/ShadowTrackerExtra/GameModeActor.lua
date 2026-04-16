---@meta

---@class FGameModeActorStateInfo
---@field State EGameModeActorState
---@field EnterTime number
FGameModeActorStateInfo = {}


---@class FSpawnActorInfo
---@field BPPath string
---@field Loc FVector
---@field Rot FRotator
FSpawnActorInfo = {}


---@class AGameModeActor: AActor
---@field LocalState EGameModeActorState
---@field StateInfo FGameModeActorStateInfo
---@field ForceExitState EGameModeActorState
---@field PassedTime number
---@field StateTime number
---@field TeamID number
---@field PCList ULuaArrayHelper<ASTExtraPlayerController>
---@field ObserverPCList ULuaArrayHelper<ASTExtraPlayerController>
---@field ReplayPawnList ULuaArrayHelper<APawn>
---@field CurrentSceneIndex number
---@field IsMultiZoneActor boolean
---@field bConsernActorSpawned boolean
---@field SpawnActorInfoList ULuaArrayHelper<FSpawnActorInfo>
---@field SpawnActorList ULuaArrayHelper<AActor>
---@field TickFreq number
---@field GameTotalTime number
---@field MaxPlayTimes number
---@field ExportedActorLuaTableList ULuaArrayHelper<string>
---@field PlayerStartTransformList ULuaArrayHelper<FTransform>
---@field LocalPlayerPawnLoaded boolean
---@field IsClientLoadingCompleted boolean
---@field OnlyNetRelevantForPlayer boolean
---@field ItemsNeedDropIDList ULuaArrayHelper<number>
---@field IsRelevantToObserver boolean
---@field IsNeedReplay boolean
---@field IsChildActorAutoSetOwner boolean
---@field LevelRange FBox
---@field bUseLevelInstance boolean
---@field LevelInstancePackageNames ULuaArrayHelper<string>
---@field WeatherLevelPackageNames ULuaArrayHelper<string>
---@field WeatherLevelIndex number
---@field DynamicLevelPackageNames ULuaArrayHelper<string>
---@field DynamicLevelIndex number
---@field InstancedLevels ULuaArrayHelper<ULevel>
---@field LevelInstanceInfos ULuaArrayHelper<FLevelInstanceInfo>
---@field GameInstanceID number
local AGameModeActor = {}

function AGameModeActor:OnRep_State() end

function AGameModeActor:OnRep_ForceExit() end

function AGameModeActor:LuaTick() end

---@param PC ASTExtraPlayerController
function AGameModeActor:Login(PC) end

---@param PC ASTExtraPlayerController
function AGameModeActor:LuaLogin(PC) end

---@param PC ASTExtraPlayerController
function AGameModeActor:Logout(PC) end

---@param PC ASTExtraPlayerController
function AGameModeActor:LuaLogout(PC) end

function AGameModeActor:GotoNextState() end

---@return string
function AGameModeActor:GetGameModeState() end

function AGameModeActor:GotoNextScene() end

---@return boolean
function AGameModeActor:NeedGotoNextScene() end

---@return number
function AGameModeActor:GetNextSceneIndex() end

---@param Idx number
---@return string
function AGameModeActor:GetLuaTableFullPath(Idx) end

---@param X number
---@param Y number
---@param Z number
---@param Roll number
---@param Pitch number
---@param Yaw number
---@param BPPath string
function AGameModeActor:AddActorFromLuaTable(X, Y, Z, Roll, Pitch, Yaw, BPPath) end

function AGameModeActor:TickSpawnActor() end

---@param Player AActor
function AGameModeActor:BroadcastInitPlayer(Player) end

---@param Player AActor
function AGameModeActor:SetInCheatMode(Player) end

function AGameModeActor:TickLocalPlayerPawnLoaded() end

---@param PC ASTExtraPlayerController
function AGameModeActor:NotifyClientLoadingComplete(PC) end

---等客户端通知完毕后进入Active阶段
function AGameModeActor:GotoActiveState() end

---业务逻辑强切状态
function AGameModeActor:GotoReadyState() end

---业务逻辑强切状态
function AGameModeActor:GotoFightingState() end

---业务逻辑强切状态
function AGameModeActor:GotoFinishedState() end

function AGameModeActor:CheckClientLoadingCompleted() end

function AGameModeActor:Lua_OnClientLoadingCompleted() end

---@return boolean
function AGameModeActor:Lua_CheckClientLoadingCompleted() end

---@param PC ASTExtraPlayerController
function AGameModeActor:Lua_ServerNotifyClientLoadingComplete(PC) end

---@param Actor AActor
function AGameModeActor:AddDynamicSpawnedActor(Actor) end

---@return number
function AGameModeActor:GetNumPlayers() end

function AGameModeActor:ConstructLevelInstances() end

---@param PackageName string
function AGameModeActor:ConstructOneLevelInstance(PackageName) end

function AGameModeActor:DestructLevelInstances() end

---@param PackageName string
---@return string
function AGameModeActor:ConvertToLevelInstanceName(PackageName) end

---@param ObserverController ASTExtraPlayerController
---@param bIsEnter boolean
function AGameModeActor:OnMyObserversChangeDelegate(ObserverController, bIsEnter) end

---@param ActorClass AActor
---@param OutActors ULuaArrayHelper<AActor>
function AGameModeActor:GetActorsOfClass(ActorClass, OutActors) end

---@param Tag string
---@param OutActors ULuaArrayHelper<AActor>
function AGameModeActor:GetActorsWithTag(Tag, OutActors) end

---@param InActor AActor
---@return boolean
function AGameModeActor:BelongsToMe(InActor) end

---@param InPos FVector
---@return boolean
function AGameModeActor:PosInMyRange(InPos) end

---@param PackageName string
---@param InActive boolean
---@param bOnlyClient boolean
function AGameModeActor:ToggleLevelWithName(PackageName, InActive, bOnlyClient) end

function AGameModeActor:OnAllMonsterKilled() end

function AGameModeActor:PostConstructLevelInstances() end

---@param Log boolean
---@return number
function AGameModeActor:GetDynamicSpawnedActorCount(Log) end

function AGameModeActor:HideAllLevelsInClient() end

---@param LastIndex number
function AGameModeActor:OnRep_WeatherLevelIndex(LastIndex) end

function AGameModeActor:OnRep_DynamicLevelIndex() end
