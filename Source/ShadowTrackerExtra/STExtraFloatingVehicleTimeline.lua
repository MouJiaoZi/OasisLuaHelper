---@meta

---@class ASTExtraFloatingVehicleTimeline: ASTExtraFloatingVehicle
---@field BoostCD number
---@field BoostLastTime number
---@field BoostCDServerTolerance number
---@field BoostSkillModifier number
---@field bIsBoostingTimeline boolean
---@field BoostCDTimer number
---@field BoostTimer number
local ASTExtraFloatingVehicleTimeline = {}

function ASTExtraFloatingVehicleTimeline:BoostByPassenger() end

function ASTExtraFloatingVehicleTimeline:ServerBoost() end

function ASTExtraFloatingVehicleTimeline:OnRep_IsBoostingTimeline() end

function ASTExtraFloatingVehicleTimeline:OnBoostingTimelineChanged() end
