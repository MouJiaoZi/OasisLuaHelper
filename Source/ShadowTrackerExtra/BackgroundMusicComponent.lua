---@meta

---@class UBackgroundMusicRegister: UObject
local UBackgroundMusicRegister = {}

function UBackgroundMusicRegister:PostEvent() end

---@param BGMComponent UBackgroundMusicComponent
function UBackgroundMusicRegister:ReceiveRegisterBGMEvent(BGMComponent) end

---@param BGMComponent UBackgroundMusicComponent
function UBackgroundMusicRegister:ReceiveUnregisterBGMEvent(BGMComponent) end


---@class UBackgroundMusicRegister_GameModeState: UBackgroundMusicRegister
---@field TargetGameModeState string
local UBackgroundMusicRegister_GameModeState = {}

---@param NewGameModeState string
function UBackgroundMusicRegister_GameModeState:HandleGameModeStateChanegd(NewGameModeState) end


---@class UBackgroundMusicRegister_TeamDeathMatchScore: UBackgroundMusicRegister
---@field Score number
---@field OnlyOnce boolean
---@field bPlayedOnce boolean
local UBackgroundMusicRegister_TeamDeathMatchScore = {}

function UBackgroundMusicRegister_TeamDeathMatchScore:HandleTeamScoreChanged() end


---@class UBackgroundMusicRegister_InfectionState: UBackgroundMusicRegister
---@field StateName string
local UBackgroundMusicRegister_InfectionState = {}

---@param NewStateName string
function UBackgroundMusicRegister_InfectionState:HandleInfectionStateChanged(NewStateName) end


---@class UBackgroundMusicComponent: UActorComponent
---@field BGMRegisters ULuaArrayHelper<UBackgroundMusicRegister>
local UBackgroundMusicComponent = {}
