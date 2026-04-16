---@meta

---@class FAirLineMarkPlayerInstanceIDsData
---@field InstanceIDs FAirLineMarkIDs
---@field PlayerKey string
FAirLineMarkPlayerInstanceIDsData = {}


---@class FAirLineMarkClientSimulateData
---@field IsShown boolean
---@field RangeType EMarkDispatchRange
---@field PlaneStartLoc FVector
---@field PlaneEndLoc FVector
---@field PlayersInstanceID ULuaArrayHelper<FAirLineMarkPlayerInstanceIDsData>
FAirLineMarkClientSimulateData = {}


---@class UMapUIMarkClientSimulateWidget: UMapUIMarkBaseWidget
---@field IsClientSimulateNow boolean
local UMapUIMarkClientSimulateWidget = {}

---@param WorldPos3D FVector
function UMapUIMarkClientSimulateWidget:ClientSetWidgetCurPostion(WorldPos3D) end

---@param WorldRot3D FRotator
function UMapUIMarkClientSimulateWidget:ClientSetWidgetCurRotation(WorldRot3D) end

---@return FVector
function UMapUIMarkClientSimulateWidget:GetWidgetCurWorldPos() end

---@return FRotator
function UMapUIMarkClientSimulateWidget:GetWidgetCurWorldRot() end
