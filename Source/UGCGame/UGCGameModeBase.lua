---@meta

---游戏模式类
---@class AUGCGameModeBase: ASTExtraGameFramework, IUGCGetDynamicConfigInterface, IUGCGraphicScriptInterface
---@field CheckPeriod number
---@field FirstCheckedNoPlayer boolean
---@field Enable_UGC_BTLog boolean
---@field TLogID number
---@field UGCExecutableServerCommands ULuaSetHelper<string>
---@field MatchGoal number
---@field bCheckMatchGoalAchievedEnabled boolean
---@field PawnSpawnMap ULuaArrayHelper<number>
---@field ActiveGameParts ULuaArrayHelper<string>
local AUGCGameModeBase = {}

---@param PlayerKey number
function AUGCGameModeBase:NotifyNewAIPlayerEnter(PlayerKey) end

function AUGCGameModeBase:GameOver() end

---@param DeltaTime number
function AUGCGameModeBase:CheckAliveCharacters(DeltaTime) end

---@param key string
---@param value string
---@param PlayerKey number
function AUGCGameModeBase:SendTlog(key, value, PlayerKey) end

---@param key string
---@param value string
---@param PlayerKey number
function AUGCGameModeBase:ServerSendTlog(key, value, PlayerKey) end

---UGC standard Tlog report function, send a key-value pair immediately and reliably, use it if you want to save something to tlog database now
---@param Key string
---@param Value string
function AUGCGameModeBase:SendTlog2(Key, Value) end

---@param PlayerState ASTExtraPlayerState
---@return boolean
function AUGCGameModeBase:IsPlayerAlive(PlayerState) end

---@param PlayerKey number
---@param TeamID number
---@param ShouldCheckGodSon boolean
---@return boolean
function AUGCGameModeBase:IsAllTeamDead(PlayerKey, TeamID, ShouldCheckGodSon) end

---@param PlayerKey number
---@param TeamID number
---@param ShouldCheckGodSon boolean
---@return boolean
function AUGCGameModeBase:HasAliveTeamMate(PlayerKey, TeamID, ShouldCheckGodSon) end

function AUGCGameModeBase:CheckMatchGoalAchieved() end

function AUGCGameModeBase:EnableCheckMatchGoalAchieved() end

---@param PlayerController ASTExtraPlayerController
---@param Target AActor
---@param AdditionalParam number
---@param PickCount number
function AUGCGameModeBase:OnPickUpTarget(PlayerController, Target, AdditionalParam, PickCount) end

---@param Command string
---@return boolean
function AUGCGameModeBase:IsServerCommandExecutable(Command) end

---@param PlayerKey number
---@param bIsAI boolean
function AUGCGameModeBase:OnPlayerRespawned(PlayerKey, bIsAI) end

---@param PlayerKey number
---@param AIController AFakePlayerAIController
function AUGCGameModeBase:OnAIAdd(PlayerKey, AIController) end

---Event
---玩家预加载事件，此时玩家还在Loading中，尚未触发PostLogin，PlayerController尚未创建。
---生效范围S
---@param UID number @UID
---@param PlayerKey number @PlayerKey
---@param TeamID number @队伍ID
function AUGCGameModeBase:UGC_PlayerPreLoadingEvent(UID, PlayerKey, TeamID) end

---Event
---玩家Loading结束，进入游戏，PlayerController创建完毕，且数据初始化完成。
---生效范围S
---@param PlayerController APlayerController @玩家控制器
function AUGCGameModeBase:UGC_PlayerLoginEvent(PlayerController) end

---Event
---玩家离开，PlayerController，PlayerPawn，PlayerState等玩家信息即将销毁。
---生效范围S
---@param PlayerController APlayerController @玩家控制器
function AUGCGameModeBase:UGC_PlayerExitEvent(PlayerController) end

---Event
---玩家被淘汰事件。
---生效范围S
---@param Killer AController @淘汰对方的玩家
---@param VictimPlayer AController @被淘汰玩家
---@param VictimPawn APawn @被淘汰玩家Pawn
---@param DamageType EDamageType @伤害类型
function AUGCGameModeBase:UGC_PlayerKilledEvent(Killer, VictimPlayer, VictimPawn, DamageType) end

---Event
---玩家复活事件。
---生效范围S
---@param RespawnedController AController @被复活的Controller
function AUGCGameModeBase:UGC_PlayerRespawnEvent(RespawnedController) end

---Event
---AI创建事件，此时AIController创建完毕，且数据初始化完成。
---生效范围S
---@param NewAIController AAIController @新创建的AIController
function AUGCGameModeBase:UGC_SpawnedAIEvent(NewAIController) end

---Event
---玩家拾取事件
---生效范围S
---@param PlayerController ASTExtraPlayerController @玩家控制器
---@param Target AActor @拾取的目标,盒子Actor或者单个掉落物
---@param ItemResId number @拾取到的物品资源id
---@param PickCount number @拾取的数量
function AUGCGameModeBase:UGC_PlayerPickUpEvent(PlayerController, Target, ItemResId, PickCount) end
