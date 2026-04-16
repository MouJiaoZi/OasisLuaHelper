---@meta

---@class FOnTeamMatchStageChanged : ULuaMulticastDelegate
FOnTeamMatchStageChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, OldStage: FTeamMatchStage, NewStage: FTeamMatchStage) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnTeamMatchStageChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param OldStage FTeamMatchStage
---@param NewStage FTeamMatchStage
function FOnTeamMatchStageChanged:Broadcast(OldStage, NewStage) end


---@class UGameModeStateFighting_TeamMatch: UGameModeStateFightingTeam
---@field PreviousTeamMatchStage FTeamMatchStage
---@field PresentTeamMatchStage FTeamMatchStage
---@field StartMatchStage string
---@field TeamMatchStagesConfig ULuaArrayHelper<FTeamMatchStage>
---@field OnTeamMatchStageChangedDelegate FOnTeamMatchStageChanged
---@field TeamMatchStages ULuaMapHelper<string, UGameModeStage>
---@field TeamMatchStagesConfigCache ULuaArrayHelper<FTeamMatchStage>
local UGameModeStateFighting_TeamMatch = {}

function UGameModeStateFighting_TeamMatch:LuaEnter() end

function UGameModeStateFighting_TeamMatch:LuaExit() end

function UGameModeStateFighting_TeamMatch:LuaExecute() end

---@param TargetGameModeStage string
function UGameModeStateFighting_TeamMatch:ChangeGameModeStage(TargetGameModeStage) end

function UGameModeStateFighting_TeamMatch:InitTeamMatchStage() end

---@param PresentStage FTeamMatchStage
---@param TestStage FTeamMatchStage
---@return boolean
function UGameModeStateFighting_TeamMatch:CheckNextTeamMatchStage(PresentStage, TestStage) end

function UGameModeStateFighting_TeamMatch:GotoNextTeamMatchStage() end

---@param Stage string
---@param Time number
function UGameModeStateFighting_TeamMatch:GM_SetStageTime(Stage, Time) end
