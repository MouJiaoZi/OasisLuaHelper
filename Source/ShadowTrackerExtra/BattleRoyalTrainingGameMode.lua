---@meta

---@class EDuelingArenaType
---@field Personal number
---@field Team number
EDuelingArenaType = {}


---@class FDuelingArenaInfo
---@field PlayerKeys ULuaArrayHelper<number>
---@field DuelingArenaType EDuelingArenaType
---@field bIsAllowedDeath boolean
FDuelingArenaInfo = {}


---@class FGameModeOnPlayerRealExitDelegate : ULuaMulticastDelegate
FGameModeOnPlayerRealExitDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Exiting: APlayerController) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGameModeOnPlayerRealExitDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Exiting APlayerController
function FGameModeOnPlayerRealExitDelegate:Broadcast(Exiting) end


---@class FGameModeOnPlayerLoseDelegate : ULuaMulticastDelegate
FGameModeOnPlayerLoseDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ArenaID: number, Loser: number, IsHeadShot: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGameModeOnPlayerLoseDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param ArenaID number
---@param Loser number
---@param IsHeadShot boolean
function FGameModeOnPlayerLoseDelegate:Broadcast(ArenaID, Loser, IsHeadShot) end


---@class ABattleRoyalTrainingGameMode: ABattleRoyaleGameModeTeam
---@field PlayerToStartMap ULuaMapHelper<APlayerController, ASTExtraPlayerStart>
---@field OnPlayerRealExitDelegate FGameModeOnPlayerRealExitDelegate
---@field OnPlayerLoseDelegate FGameModeOnPlayerLoseDelegate
---@field SpecialCollectItemList ULuaArrayHelper<number>
---@field NeedSetTrainingMode boolean
---@field bInfiniteBullets boolean
---@field DuelDamageTypeBlacklist ULuaArrayHelper<EDamageType>
---@field EditorCanDamage boolean
local ABattleRoyalTrainingGameMode = {}

---@param PlayerKeys ULuaArrayHelper<number>
---@param DuelingArenaType EDuelingArenaType
---@param bIsAllowedDeath boolean
---@return number
function ABattleRoyalTrainingGameMode:CreateDuelingArena(PlayerKeys, DuelingArenaType, bIsAllowedDeath) end

---@param DuelingArenaID number
function ABattleRoyalTrainingGameMode:RemoveDuelingArena(DuelingArenaID) end

---@param DuelingArenaID number
---@param PlayerKey number
function ABattleRoyalTrainingGameMode:JoinDuelingArena(DuelingArenaID, PlayerKey) end

---@param DuelingArenaID number
---@param PlayerKey number
function ABattleRoyalTrainingGameMode:ExitDuelingArena(DuelingArenaID, PlayerKey) end

---@param PlayerController APlayerController
function ABattleRoyalTrainingGameMode:EnterRacingRange(PlayerController) end

---@param PlayerController APlayerController
function ABattleRoyalTrainingGameMode:ExitRacingRange(PlayerController) end

---@param ConcertActivityData FConcertActivityData
function ABattleRoyalTrainingGameMode:GetActivityResultData(ConcertActivityData) end

---@param DelayTime number
---@param InParam string
function ABattleRoyalTrainingGameMode:DelayFinishGame(DelayTime, InParam) end
