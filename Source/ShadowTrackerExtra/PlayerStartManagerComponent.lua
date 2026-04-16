---@meta

---@class UPlayerStartManagerComponent: UGameModeBaseComponent
---@field PlayerNumPerTeam number @活动出生点用。保证同一队伍在同一个活动出生岛。feishen, 20200515
---@field UsedTeamList ULuaArrayHelper<number>
local UPlayerStartManagerComponent = {}

---@return boolean
function UPlayerStartManagerComponent:InitPlayerStartsData() end

---@return boolean
function UPlayerStartManagerComponent:IsPlayerStartsDataInitilized() end

function UPlayerStartManagerComponent:InitEditorPlayerStartInfo() end

function UPlayerStartManagerComponent:SpawnEditorPlayerStart() end

---@param Radius number
---@param HalfHeight number
---@param TraceStart FVector
---@param TraceEnd FVector
---@return boolean
function UPlayerStartManagerComponent:SweepCheckPlayerStart(Radius, HalfHeight, TraceStart, TraceEnd) end
