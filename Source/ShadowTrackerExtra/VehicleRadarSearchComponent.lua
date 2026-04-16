---@meta

---@class UVehicleRadarSearchComponent: USceneComponent, IObjectPoolInterface
---@field SearchIntervalTime number
---@field SearchRange_Map number
---@field SearchRange_World number
---@field VehicleTypeIcons ULuaMapHelper<ASTExtraVehicleBase, number>
---@field DefaultVehicleTypeIcons number
---@field SearchRangeIconID number
---@field IgnoreVehicleType ULuaArrayHelper<ASTExtraVehicleBase>
---@field MaxDetectedCount number
---@field TipsWhenPlayerEnter number
---@field TipsWhenPlayerLeave number
---@field VehiclesDetected ULuaMapHelper<ASTExtraVehicleBase, number>
local UVehicleRadarSearchComponent = {}

---@param bToPersistentPool boolean
function UVehicleRadarSearchComponent:OnRecycled(bToPersistentPool) end

function UVehicleRadarSearchComponent:StartDetect() end

function UVehicleRadarSearchComponent:EndDtect() end

---@param bDoIncludeOB boolean
---@return ENetRole
function UVehicleRadarSearchComponent:GetNetRoleSafety(bDoIncludeOB) end
