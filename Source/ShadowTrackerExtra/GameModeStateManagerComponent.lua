---@meta

---@class UGameModeStateManagerComponent: UGameModeBaseComponent
---@field GameModeStates ULuaMapHelper<string, UGameModeState>
---@field CurGameModeState string
local UGameModeStateManagerComponent = {}

function UGameModeStateManagerComponent:InitialGameModeStates() end

---@param TargetGameModeState string
---@param NewStateTime number
function UGameModeStateManagerComponent:SetStateTime(TargetGameModeState, NewStateTime) end

---@param TargetGameModeState string
function UGameModeStateManagerComponent:ChangeGameModeState(TargetGameModeState) end

function UGameModeStateManagerComponent:OnGameModeStateChange() end

---@param NewPlayer APlayerController
function UGameModeStateManagerComponent:OnPostLogin(NewPlayer) end

---@param Exiting APlayerController
function UGameModeStateManagerComponent:OnLogout(Exiting) end

---@param Msg string
function UGameModeStateManagerComponent:OnMsg(Msg) end

---@param TargetGameModeState string
---@return boolean
function UGameModeStateManagerComponent:IsInState(TargetGameModeState) end
