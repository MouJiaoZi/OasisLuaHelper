---@meta

---@class EBossBattleFieldState
---@field Normal number
---@field BeginSeq number
---@field ShootingBox number
---@field QTE number
---@field ShootingCore number
---@field Leave number
---@field Finish number
EBossBattleFieldState = {}


---@class ABossBattleField: AActivityBaseActor
---@field RelevantPawns ULuaArrayHelper<ASTExtraBaseCharacter>
---@field CurState EBossBattleFieldState
---@field MaxPlayTime number
---@field PlayerSkipList ULuaArrayHelper<number>
---@field CanSkipSeq boolean
---@field TeamScore number
---@field bClientOnAirPlane boolean
---@field RelevantPlayerKeys ULuaArrayHelper<number>
---@field EvacuatePlayerPCList ULuaArrayHelper<ASTExtraPlayerController> @记录点击过撤离的玩家
---@field ForceEvacuateCountDown number @强制撤离倒计时
---@field bDamagedCore boolean
local ABossBattleField = {}

function ABossBattleField:StartSequence() end

function ABossBattleField:OnRep_RelevantPawns() end

---玩家撤离, 上飞机
function ABossBattleField:FirePlayersEvacuate() end

---@param PlayerState AActor
function ABossBattleField:LuaFirePlayersEvacuate(PlayerState) end

---玩家点击撤离button响应
---@param PC ASTExtraPlayerController
function ABossBattleField:ServerPlayerEvacuate(PC) end

---判断所有玩家都点击了撤离Button
---@return boolean
function ABossBattleField:IsAllPlayerEvacuate() end

---判断某个玩家点击了撤离Button
---@param PC ASTExtraPlayerController
---@return boolean
function ABossBattleField:IsPlayerEvacuate(PC) end

---更新倒计时
function ABossBattleField:OnRep_ForceEvacuateCountDown() end

function ABossBattleField:OnRep_PlayerSkipList() end

function ABossBattleField:OnRep_CanSkipSeq() end

function ABossBattleField:OnRep_TeamScore() end

function ABossBattleField:OnRep_bClientOnAirPlane() end

---@param PlayerKey number
function ABossBattleField:KickOutOnePlayer(PlayerKey) end

---@param PlayerCharacter ASTExtraBaseCharacter
function ABossBattleField:OnPlayerKickOut(PlayerCharacter) end

---@param InPlayer APlayerController
function ABossBattleField:OnPlayerExitGame(InPlayer) end

---@param InPlayer APlayerController
function ABossBattleField:OnPlayerPostLogin(InPlayer) end

---@param InPlayerKey number
---@param KillerKey number
---@param bIsAI boolean
function ABossBattleField:OnPlayerKilled(InPlayerKey, KillerKey, bIsAI) end

---@param InPlayerKey number
---@param Reason string
function ABossBattleField:OnPlayerSendBattleResult(InPlayerKey, Reason) end

function ABossBattleField:StartEvacuateCountDown() end

function ABossBattleField:DoEvacuateCountDown() end

---@param OldState EBossBattleFieldState
function ABossBattleField:OnRep_CurState(OldState) end

function ABossBattleField:GotoNextState() end

---@param InState EBossBattleFieldState
function ABossBattleField:GotoState(InState) end

function ABossBattleField:OnGotoState_BeginSeq() end

function ABossBattleField:OnLeaveState_BeginSeq() end

function ABossBattleField:OnGotoState_ShootingBox() end

function ABossBattleField:OnLeaveState_ShootingBox() end

function ABossBattleField:OnGotoState_QTE() end

function ABossBattleField:OnLeaveState_QTE() end

function ABossBattleField:OnGotoState_ShootingCore() end

function ABossBattleField:OnLeaveState_ShootingCore() end

function ABossBattleField:OnGotoState_Leave() end

function ABossBattleField:OnLeaveState_Leave() end

function ABossBattleField:OnGotoState_Finish() end
