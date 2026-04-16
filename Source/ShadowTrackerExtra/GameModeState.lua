---@meta

---@class UGameModeState: UObject
---@field EnterStateTime number
---@field StateTime number
---@field bSupportLuaExtension boolean
---@field LuaTickFreq number @生化团竞合入, feishen, 20200828
---@field bEnableTimePause boolean
local UGameModeState = {}

---@return boolean
function UGameModeState:ShouldCountDown() end

---生化团竞合入, feishen, 20200828
---@return boolean
function UGameModeState:IsTimeout() end

---@param OutAllPC ULuaArrayHelper<APlayerController>
function UGameModeState:GetAllPlayerController(OutAllPC) end

---@param InLeftTime number
function UGameModeState:SetLeftTime(InLeftTime) end

---生化团竞合入, feishen, 20200828
---@return number
function UGameModeState:GetLeftTime() end

---@param NewStateTime number
function UGameModeState:SetStateTime(NewStateTime) end

---@return number
function UGameModeState:GetStateTime() end

function UGameModeState:InitEnterStateTime() end

---生化团竞合入, feishen, 20200828
function UGameModeState:GotoNextState() end

function UGameModeState:LuaEnter() end

function UGameModeState:LuaExecute() end

function UGameModeState:LuaExit() end
