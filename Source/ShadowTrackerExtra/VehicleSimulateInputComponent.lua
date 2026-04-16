---@meta

---标识哪些字段需要序列化
---@class EVHKFSerializeFlag
---@field EVHKF_TIME number
---@field EVHKF_INDEX number
---@field EVHKF_MOVEFORWARD number
---@field EVHKF_MOVERIGHT number
---@field EVHKF_BRAKE number
---@field EVHKF_HANDBRAKE number
---@field EVHKF_GEAR number
---@field EVHKF_BOOSTON number
---@field EVHKF_DRIFTINPUT number
---@field EVHKF_NONE number
---@field EVHKF_ALL number
EVHKFSerializeFlag = {}


---@class UVehicleSimulateInputComponent: UVehicleComponent
---@field AIControllerClass AController
---@field ReplayFilePath string
---@field CurrentMapID number
---@field CurrentTrackID number
---@field UseForRecordVehicleSimulate boolean
---@field bIsRecord boolean
---@field bIsReplay boolean
local UVehicleSimulateInputComponent = {}

function UVehicleSimulateInputComponent:StopReplay() end

---@param InReplayFilePath string
function UVehicleSimulateInputComponent:StartReplay(InReplayFilePath) end

---@param Filename string
---@return boolean
function UVehicleSimulateInputComponent:LoadReplayData(Filename) end

function UVehicleSimulateInputComponent:ClearReplayData() end

---@param MapID number
---@param TrackID number
function UVehicleSimulateInputComponent:StartRecord(MapID, TrackID) end

function UVehicleSimulateInputComponent:StopRecord() end

function UVehicleSimulateInputComponent:SaveRecordInputData() end

function UVehicleSimulateInputComponent:ClearVehicleInput() end

function UVehicleSimulateInputComponent:InitializeTempVariables() end

---@param Start boolean
---@return boolean
function UVehicleSimulateInputComponent:SetBeforeStartOrStopReplay(Start) end

---@param On boolean
function UVehicleSimulateInputComponent:SetVehicleToTestMode(On) end

---@param DeltaTime number
function UVehicleSimulateInputComponent:ReplayInputInFramesInClient(DeltaTime) end

---@param DeltaTime number
function UVehicleSimulateInputComponent:ReplayInputInTimeInClient(DeltaTime) end

---@param DeltaTime number
function UVehicleSimulateInputComponent:ReplayInputInFramesInServer(DeltaTime) end

---@param DeltaTime number
function UVehicleSimulateInputComponent:ReplayInputInTimeInServer(DeltaTime) end

---@param Start boolean
---@return boolean
function UVehicleSimulateInputComponent:SetBeforeStartOrStopRecord(Start) end

---@param DeltaTime number
function UVehicleSimulateInputComponent:RecordClientInput(DeltaTime) end

---@param DeltaTime number
function UVehicleSimulateInputComponent:RecordDSInput(DeltaTime) end

function UVehicleSimulateInputComponent:RegisterSelfToProcessor() end

function UVehicleSimulateInputComponent:UnregisterSelfToProcessor() end
