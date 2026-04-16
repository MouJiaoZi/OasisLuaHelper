---@meta

---@class UCheatCommandComponent: UGameModeBaseComponent
---@field bBanCommandWhenNotFight boolean
---@field CommandUpdateInterval number
---@field AirDropLifeTime number
---@field AirDropVehicleLifeTime number
---@field SpawnVehicleLifeTime number
---@field CheatCommandList ULuaMapHelper<ECheatCommandType, FCheatCommandItem>
---@field CheatCommandHistoryList ULuaMapHelper<ECheatCommandType, FCheatCommandHistory>
---@field TimerHandle_CommandUpdate FTimerHandle
---@field AirDropCheatingMarkerList ULuaArrayHelper<AActor>
local UCheatCommandComponent = {}

function UCheatCommandComponent:OnGameEnterFight() end

function UCheatCommandComponent:OnGameEnterFinish() end

---@param InCommandTriggerController ASTExtraPlayerController
---@param InCheatCommandInfo FCheatCommandInfo
function UCheatCommandComponent:TriggerCheatCommand(InCommandTriggerController, InCheatCommandInfo) end

---@param InCommandTriggerObj UObject
---@param InCheatCommand FCheatCommandItem
---@param InCommandInfo FCheatCommandInfo
---@return boolean
function UCheatCommandComponent:IsCheatCommandCoolingDownForObj(InCommandTriggerObj, InCheatCommand, InCommandInfo) end

---@param InCommandTriggerObj UObject
---@param InCheatCommand FCheatCommandItem
---@param InCommandInfo FCheatCommandInfo
function UCheatCommandComponent:MarkCheatCommandCoolingDownForObj(InCommandTriggerObj, InCheatCommand, InCommandInfo) end

---@param InCommandTriggerObj UObject
---@param InCheatCommand FCheatCommandItem
---@param InCommandInfo FCheatCommandInfo
---@return boolean
function UCheatCommandComponent:IsCheatCommandExceedExecuteCountThreshold(InCommandTriggerObj, InCheatCommand, InCommandInfo) end

---@param InCommandTriggerObj UObject
---@param InCheatCommand FCheatCommandItem
---@param OutCommandState FCheatCommandResultInfo
---@return boolean
function UCheatCommandComponent:FetchCheatCommandState(InCommandTriggerObj, InCheatCommand, OutCommandState) end

---@param InCommandTriggerController ASTExtraPlayerController
---@param InCheatCommand FCheatCommandItem
---@param InCommandResult ECheatCommandResultType
function UCheatCommandComponent:FinishCheatCommand(InCommandTriggerController, InCheatCommand, InCommandResult) end

function UCheatCommandComponent:UpdateCheatCommand() end

---@param InAirDropTarget AActor
function UCheatCommandComponent:CheatAirDropLifeTime(InAirDropTarget) end

---@param InSpawnTarget AActor
function UCheatCommandComponent:CheatSpawnLifeTime(InSpawnTarget) end

---@param InAirDropCheatingMarker AActor
---@param InIsCheating boolean
function UCheatCommandComponent:MarkCheatingLifeTime(InAirDropCheatingMarker, InIsCheating) end

---@param InAirDropCheatingMarker AActor
function UCheatCommandComponent:MarkAsCheatingMarker(InAirDropCheatingMarker) end

---@param InAirDropCheatingMarker AActor
---@return boolean
function UCheatCommandComponent:IsAsLifeTimeCheatingMarker(InAirDropCheatingMarker) end

---@param InIsCheating boolean
function UCheatCommandComponent:SetCheating(InIsCheating) end

---@param InAirDropTarget AActor
function UCheatCommandComponent:CancelCheatingLifeTime(InAirDropTarget) end
