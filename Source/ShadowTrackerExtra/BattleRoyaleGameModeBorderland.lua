---@meta

---@class FReviveChaInfo
---@field Rank number
---@field ReviveHandle FTimerHandle
---@field KillerKey number
FReviveChaInfo = {}


---@class FOnBorderPlayerKilled : ULuaMulticastDelegate
FOnBorderPlayerKilled = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Character: ASTExtraPlayerCharacter, ReviveTime: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnBorderPlayerKilled:Add(Callback, Obj) end

---触发 Lua 广播
---@param Character ASTExtraPlayerCharacter
---@param ReviveTime number
function FOnBorderPlayerKilled:Broadcast(Character, ReviveTime) end


---@class FSetBorderPlayerView : ULuaMulticastDelegate
FSetBorderPlayerView = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PC: ASTExtraPlayerController, ReviveTime: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSetBorderPlayerView:Add(Callback, Obj) end

---触发 Lua 广播
---@param PC ASTExtraPlayerController
---@param ReviveTime number
function FSetBorderPlayerView:Broadcast(PC, ReviveTime) end


---@class ABattleRoyaleGameModeBorderland: ABattleRoyaleGameModeTeam
---@field WinTeamID number
---@field ReviveFlowExtID number
---@field ReviveTlogID number
---@field OnBorderPlayerKilled FOnBorderPlayerKilled
---@field SetBorderPlayerView FSetBorderPlayerView
---@field AdvanceReviveTime number
---@field DelayOBTime number
---@field ReviveChaInfos ULuaMapHelper<number, FReviveChaInfo>
---@field MatchDurationTime number
local ABattleRoyaleGameModeBorderland = {}

---@param PlayerController ASTExtraPlayerController
---@param CurPlayerState ASTExtraPlayerStateBorderland
function ABattleRoyaleGameModeBorderland:DelayStartObserve(PlayerController, CurPlayerState) end

---@param PlayerKey number
---@param CurPlayerState ASTExtraPlayerStateBorderland
---@return boolean
function ABattleRoyaleGameModeBorderland:BP_RevivingObserveTeamMate(PlayerKey, CurPlayerState) end

---@param TeamID number
---@param CurPlayerState ASTExtraPlayerStateBorderland
---@return boolean
function ABattleRoyaleGameModeBorderland:CheckTeamAllDead(TeamID, CurPlayerState) end

---@param TeamID number
function ABattleRoyaleGameModeBorderland:RemoveTeamMateReviveHandle(TeamID) end

---@return boolean
function ABattleRoyaleGameModeBorderland:CheckGameEnd_Implementation() end

---@return boolean
function ABattleRoyaleGameModeBorderland:CheckNoHumanExist() end

---@param TargetGameModeState string
function ABattleRoyaleGameModeBorderland:ChangeStateGM(TargetGameModeState) end

function ABattleRoyaleGameModeBorderland:CheckAndGotoMatchEnd() end

---@param PlayerKey number
---@param ReviveTime number
---@param Killer AController
---@param VictimPawn APawn
---@param KillerKey number
function ABattleRoyaleGameModeBorderland:RevivePlayer(PlayerKey, ReviveTime, Killer, VictimPawn, KillerKey) end

---@param PlayerKey number
---@return number
function ABattleRoyaleGameModeBorderland:GetRank(PlayerKey) end

---@param PlayerController AUAEPlayerController
function ABattleRoyaleGameModeBorderland:OnPlayerRevived(PlayerController) end

---@param TeamID number
---@return boolean
function ABattleRoyaleGameModeBorderland:IsWinTeam(TeamID) end
