---@meta

---@class UIngameArmedVehicleUI: UUAEUserWidget
---@field bUsed boolean
---@field bShowControlButton boolean
---@field bShowCompass boolean
---@field AngleMatParamIndex number
---@field AngleMatParameterName string
---@field bGotAngleMatParamIndex boolean
---@field ScalePercent number
---@field Angle number
---@field CompassMinAngle number
---@field CompassMaxAngle number
---@field CompassMatMinPercent number
---@field CompassMatMaxPercent number
---@field bEnableShowInterferenceLineByScreenAppearance boolean
---@field bShowInterference boolean
---@field InterferenceLineAppearanceName string
---@field CompassStrFormat string
local UIngameArmedVehicleUI = {}

---@param InDeltaTime number
function UIngameArmedVehicleUI:UpdateCompassAngleAndMatScalePercent(InDeltaTime) end

---@param InCompassMat UMaterialInstanceDynamic
function UIngameArmedVehicleUI:InitCompassAngleMat(InCompassMat) end

---@param bShow boolean
function UIngameArmedVehicleUI:ShowInterferenceLineByScreenAppearance(bShow) end
