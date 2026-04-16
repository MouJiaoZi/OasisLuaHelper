---@meta

---@class FOnGameActorStageChanged : ULuaMulticastDelegate
FOnGameActorStageChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, OldStage: FTeamMatchStage, NewStage: FTeamMatchStage) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnGameActorStageChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param OldStage FTeamMatchStage
---@param NewStage FTeamMatchStage
function FOnGameActorStageChanged:Broadcast(OldStage, NewStage) end


---@class UGameModeActorStateWithStage: UGameModeActorState
---@field PreviousTeamMatchStage FTeamMatchStage
---@field PresentTeamMatchStage FTeamMatchStage
---@field CanEnterSameStage boolean
---@field StartMatchStage string
---@field TeamMatchStagesConfig ULuaArrayHelper<FTeamMatchStage>
---@field OnGameActorStageChangedDelegate FOnGameActorStageChanged
---@field TeamMatchStages ULuaMapHelper<string, UGameModeStage>
---@field TeamMatchStagesConfigCache ULuaArrayHelper<FTeamMatchStage>
local UGameModeActorStateWithStage = {}

function UGameModeActorStateWithStage:LuaEnter() end

function UGameModeActorStateWithStage:LuaExit() end

function UGameModeActorStateWithStage:LuaExecute() end

---@param TargetGameModeStage string
function UGameModeActorStateWithStage:ChangeGameModeStage(TargetGameModeStage) end

function UGameModeActorStateWithStage:InitTeamMatchStage() end

---@param PresentStage FTeamMatchStage
---@param TestStage FTeamMatchStage
---@return boolean
function UGameModeActorStateWithStage:CheckNextTeamMatchStage(PresentStage, TestStage) end

function UGameModeActorStateWithStage:GotoNextTeamMatchStage() end

---@param Stage string
---@param Time number
function UGameModeActorStateWithStage:GM_SetStageTime(Stage, Time) end
