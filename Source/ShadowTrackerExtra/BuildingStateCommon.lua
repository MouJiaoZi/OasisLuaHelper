---@meta

---@class EBuildingStateType
---@field None number
---@field Idle number
---@field Alertness number
---@field Battle number
---@field Reload number
---@field Max number
EBuildingStateType = {}


---@class UBuildingStateBase: UActorStateBase
local UBuildingStateBase = {}


---@class UBuildingStateIdle: UBuildingStateBase
local UBuildingStateIdle = {}

---@return boolean
function UBuildingStateIdle:EnterState() end

---@param DeltaTime number
function UBuildingStateIdle:UpdateState(DeltaTime) end

function UBuildingStateIdle:LeaveState() end


---@class UBuildingStateAlertness: UBuildingStateBase
local UBuildingStateAlertness = {}

---@return boolean
function UBuildingStateAlertness:EnterState() end

---@param DeltaTime number
function UBuildingStateAlertness:UpdateState(DeltaTime) end

function UBuildingStateAlertness:LeaveState() end


---@class UBuildingStateBattle: UBuildingStateBase
---@field CurrentFireInterval number
local UBuildingStateBattle = {}

---@return boolean
function UBuildingStateBattle:EnterState() end

---@param DeltaTime number
function UBuildingStateBattle:UpdateState(DeltaTime) end

function UBuildingStateBattle:LeaveState() end


---@class UBuildingStateReload: UBuildingStateBase
---@field CurrentTime number
local UBuildingStateReload = {}

---@return boolean
function UBuildingStateReload:EnterState() end

---@param DeltaTime number
function UBuildingStateReload:UpdateState(DeltaTime) end

function UBuildingStateReload:LeaveState() end
