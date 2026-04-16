---@meta

---@class UVehicleEllipseRegionComponent: UBoxComponent
---@field EllipseSegment number
---@field HeightSegment number
---@field DrawDebugInterval number
local UVehicleEllipseRegionComponent = {}

function UVehicleEllipseRegionComponent:DrawDebugEllipse() end

function UVehicleEllipseRegionComponent:UpdateEllipse() end

---@param Point FVector
---@return number
function UVehicleEllipseRegionComponent:IsPointInEllipse(Point) end

---@param X number
---@return number
function UVehicleEllipseRegionComponent:CalYByX(X) end

---@param Local FVector2D
---@return FVector2D
function UVehicleEllipseRegionComponent:TransLocalToWorld(Local) end
