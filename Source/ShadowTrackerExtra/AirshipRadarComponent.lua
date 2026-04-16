---@meta

---@class UAirshipRadarComponent: UActorComponent
---@field LocationMarkTypeID number
---@field RadarRange number
---@field MarkInstIDList ULuaArrayHelper<number>
---@field AirAttackMarkTypeID number
---@field AirAttackMarkRange number
---@field AirAttackMarkInstID number
---@field LocationList ULuaArrayHelper<FVector2D>
local UAirshipRadarComponent = {}

function UAirshipRadarComponent:DumpAllPos() end

function UAirshipRadarComponent:ShowAllPosMark() end

function UAirshipRadarComponent:HideAllPosMark() end

function UAirshipRadarComponent:OnShowAllPosMark() end

function UAirshipRadarComponent:OnHideAllPosMark() end

function UAirshipRadarComponent:OnRepLocation() end

---@param LocX number
---@param LocY number
function UAirshipRadarComponent:ShowOrUpdateAirAttackMark(LocX, LocY) end

function UAirshipRadarComponent:HideAirAttackMark() end

---@return number
function UAirshipRadarComponent:GetMarkCreateTime() end

function UAirshipRadarComponent:CollectLocationListOnServer() end

function UAirshipRadarComponent:OnCollectLocationList() end

---@param TargetPlayerState ASTExtraPlayerState
---@return boolean
function UAirshipRadarComponent:ShouldCollectLocation(TargetPlayerState) end

function UAirshipRadarComponent:OnRep_LocationList() end
