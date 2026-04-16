---@meta

---@class ESledMarkState
---@field ENormal number
---@field EStartStation number
---@field EHasBeChosen number
ESledMarkState = {}


---@class UMapSledStationWidget: UMapUIMarkBaseWidget
---@field InstanceID number
---@field MarkState ESledMarkState
---@field isEnable boolean
---@field isTheEnd boolean
---@field isMiniMap boolean
---@field CurDistance number
---@field Midpoint FVector2D
---@field CurAngle number
local UMapSledStationWidget = {}

---@param state ESledMarkState
function UMapSledStationWidget:SetMarkState(state) end

function UMapSledStationWidget:GetTheShorestPath() end

---@param v1 FVector2D
---@param v2 FVector2D
function UMapSledStationWidget:UpdateRoute(v1, v2) end

---@param isvisi boolean
---@param isend boolean
function UMapSledStationWidget:SetRouteVisible(isvisi, isend) end

---@param _isenable boolean
function UMapSledStationWidget:SetClickedEnable(_isenable) end

function UMapSledStationWidget:SledMarkReplay() end
