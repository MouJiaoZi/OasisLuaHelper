---@meta

---@class UCrossHairWidget: UUAEUserWidget
---@field CurrentType number
---@field OriginalDistance number
---@field VerticalOriginalDistance number
---@field bEnableSpread boolean
---@field bFitUI boolean
local UCrossHairWidget = {}

---@param Deviation number
---@param UIScale number
---@param DevBase number
---@param Rotation number
function UCrossHairWidget:OnSpreadCrossHair(Deviation, UIScale, DevBase, Rotation) end

function UCrossHairWidget:RefreshCrossHairBySetting() end

---@param index number
---@return boolean
function UCrossHairWidget:OnHideCrossHairOverride(index) end

---@return boolean
function UCrossHairWidget:OverrideTickComponent() end

---@return boolean
function UCrossHairWidget:OverrideDrawWeaponCrosshairInner() end

---@return boolean
function UCrossHairWidget:OverrideEndPlay() end

function UCrossHairWidget:ClearWidgetPtr() end

---@param Left UUAEUserWidget
---@param Right UUAEUserWidget
---@param Top UUAEUserWidget
---@param Bottom UUAEUserWidget
function UCrossHairWidget:UpdateWidgetPtr(Left, Right, Top, Bottom) end

---@param Deviation number
---@param UIScale number
---@param DevBase number
function UCrossHairWidget:OnSpreadCrossHair_Type_4(Deviation, UIScale, DevBase) end

---@param NewOpacity number
function UCrossHairWidget:OnUpdateRenderOpacity(NewOpacity) end
