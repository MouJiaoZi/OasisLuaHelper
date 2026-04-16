---@meta

---@class UGameModeStage: UObject
---@field AllowStages ULuaArrayHelper<string>
---@field EnterStageTimeD number
---@field EnterStageTimeF number
---@field StageTime number
---@field bSupportLuaExtension boolean
---@field LuaTickFreq number
local UGameModeStage = {}

---@return boolean
function UGameModeStage:ShouldCountDown() end

---@return boolean
function UGameModeStage:IsTimeout() end

---@param InLeftTime number
function UGameModeStage:SetLeftTime(InLeftTime) end

---@return number
function UGameModeStage:GetLeftTime() end

---@return number
function UGameModeStage:GetPassedTime() end

---@param NewStageTime number
function UGameModeStage:SetStageTime(NewStageTime) end

---@return number
function UGameModeStage:GetStageTime() end

function UGameModeStage:InitEnterStageTime() end

---@return string
function UGameModeStage:GetStageType() end

---@param InGameModeActor AActor
function UGameModeStage:SetGameModeActor(InGameModeActor) end

function UGameModeStage:LuaEnter() end

function UGameModeStage:LuaExecute() end

function UGameModeStage:LuaExit() end

function UGameModeStage:LuaGotoNextStage() end
