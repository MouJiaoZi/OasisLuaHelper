---@meta

---@class UAvatarBehaviorFeature_VehicleTranslucent: UAvatarBehaviorFeature
---@field TranslucentBehaviorParam FVehicleTranslucentBehaviorParam
---@field bOverride_ApplyTranslucentConfig boolean
---@field bOverride_RevertTranslucentConfig boolean
local UAvatarBehaviorFeature_VehicleTranslucent = {}

function UAvatarBehaviorFeature_VehicleTranslucent:ApplyTranslucentConfig() end

function UAvatarBehaviorFeature_VehicleTranslucent:BP_ApplyTranslucentConfig() end

function UAvatarBehaviorFeature_VehicleTranslucent:RevertTranslucentConfig() end

function UAvatarBehaviorFeature_VehicleTranslucent:BP_RevertTranslucentConfig() end
