---@meta

---@class FMarkData
---@field StationInstanceID number
---@field MarkInstanceID number
---@field StationLocation FVector
---@field StationIndex number
---@field StationForword FVector
---@field StationRight FVector
FMarkData = {}


---@class FEndStationInfo
---@field SledInstance number
---@field EndStationInstance number
---@field StartStationInstance number
---@field PlayerKEY number
FEndStationInfo = {}


---@class FStationData
---@field StationInstanceID number
---@field StationLocation FVector
FStationData = {}


---@class ASledStationMarkManager: AActor
---@field SledStationsInfo ULuaMapHelper<number, FMarkData>
---@field TheEnd FEndStationInfo
---@field TheEndArray ULuaArrayHelper<FEndStationInfo>
---@field StationArray ULuaArrayHelper<FStationData>
---@field MaxConnectCount number
---@field MarkID number
---@field MaxDistance number
---@field StationStartPosition ULuaArrayHelper<number>
---@field StationEndPosition ULuaArrayHelper<number>
---@field StationsDistance ULuaArrayHelper<number>
---@field OutputPathIndex ULuaArrayHelper<number>
---@field HasReport boolean
---@field isDriver boolean
local ASledStationMarkManager = {}

function ASledStationMarkManager:BindPlayerControllerCustomRPC() end

function ASledStationMarkManager:BindMapUIMarkManager() end

function ASledStationMarkManager:InitAllMarkData() end

---@param CurStationInstanceID number
function ASledStationMarkManager:EnableStationMark(CurStationInstanceID) end

function ASledStationMarkManager:DisableStationMark() end

---@param output ULuaArrayHelper<number>
---@return boolean
function ASledStationMarkManager:GetPath(output) end

function ASledStationMarkManager:OnRep_TheEndArray() end

function ASledStationMarkManager:OnRep_StationArray() end

---@param sledPtr ASTExtraXmasSledVehicle
function ASledStationMarkManager:SetSledInstanceID(sledPtr) end

---@param arr ULuaArrayHelper<FStationData>
function ASledStationMarkManager:ReceiveStationInfo(arr) end

---@param data FStationData
function ASledStationMarkManager:AppendData(data) end

function ASledStationMarkManager:DisableClickEvent() end

---@param instanceID FEndStationInfo
function ASledStationMarkManager:SledToSetEndStation(instanceID) end

function ASledStationMarkManager:SledMarkReplay() end

function ASledStationMarkManager:ObserveShowPath() end

function ASledStationMarkManager:OnViewTargetChanged() end

---@param instanceID number
function ASledStationMarkManager:CalculateTheShorestPath(instanceID) end

function ASledStationMarkManager:UpdatePathMarkState() end

function ASledStationMarkManager:CreateConnectedGraph() end

---@param endstationinstance number
function ASledStationMarkManager:SetStation(endstationinstance) end

---@param index number
function ASledStationMarkManager:EPTRCheck(index) end

---@param index number
function ASledStationMarkManager:MPTRCheck(index) end

---@param Param ULuaArrayHelper<FUAEBlackboardParameter>
---@param InController APlayerController
function ASledStationMarkManager:OnServerReceiveCustomData(Param, InController) end

function ASledStationMarkManager:OnRep_TheEndArray_BP() end

function ASledStationMarkManager:OnRep_StationArray_BP() end

---@param data FStationData
function ASledStationMarkManager:AppendData_BP(data) end

function ASledStationMarkManager:UpdatePathMarkState_BP() end

function ASledStationMarkManager:ViewTargetChanged_BP() end

function ASledStationMarkManager:RefreshViewTargetPlayerKey() end

function ASledStationMarkManager:RefreshSledID() end

function ASledStationMarkManager:SetPlayerKEYFromController() end

---@param tempInfo FEndStationInfo
---@return string
function ASledStationMarkManager:GetPlayerKEY(tempInfo) end

function ASledStationMarkManager:ClearPathInfo() end

function ASledStationMarkManager:SetStation_BP() end
