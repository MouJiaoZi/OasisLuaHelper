---@meta

---@class UReplayWidgetLive: UReplayWidgetBase
---@field bIsEnableUIRecDisplay boolean
local UReplayWidgetLive = {}

---@param isEnemy boolean
function UReplayWidgetLive:OnSpectatorChanged(isEnemy) end

---@param Vehicle ASTExtraVehicleBase
function UReplayWidgetLive:OnViewCharacterAttachedToVehicle(Vehicle) end

---@param Vehicle ASTExtraVehicleBase
function UReplayWidgetLive:OnViewCharacterDetachedFromVehicle(Vehicle) end

function UReplayWidgetLive:OnViewCharaterChangedVechileSeat() end

function UReplayWidgetLive:RefreshUIRecDisplay() end
