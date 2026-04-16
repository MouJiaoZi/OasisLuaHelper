---@meta

---@class UBaseCarRevivalComponent: USuperPeopleRevivalComponent
---@field DefaultRevivalCountDown number
---@field MaxRevivalTime number
---@field PunishRevivalTime number
---@field TimeRevivalTimeBias ULuaMapHelper<number, number>
---@field CustomRevivalPoint FVector
---@field RevivalTips number
---@field RevivalCountDown number
---@field RevivalHandle FTimerHandle
---@field OnRevivalCountDown FOnRevivalCountDown
local UBaseCarRevivalComponent = {}

---@param Target AActor
function UBaseCarRevivalComponent:ModifyRevivalLocationTarget(Target) end

---@return boolean
function UBaseCarRevivalComponent:IsRevivalTargetValid() end

function UBaseCarRevivalComponent:InitRevivalTimer() end

function UBaseCarRevivalComponent:InitRevivalTimerPropphase() end

function UBaseCarRevivalComponent:ClearRevivalTimer() end

---@param Reason string
function UBaseCarRevivalComponent:OnPlayerSendBattleResult(Reason) end

function UBaseCarRevivalComponent:OnRep_RevivalCountDown() end

function UBaseCarRevivalComponent:OnRep_DefaultRevivalCountDown() end
