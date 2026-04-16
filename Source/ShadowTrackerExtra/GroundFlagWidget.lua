---@meta

---@class UGroundFlagWidget: UUAEUserWidget
---@field Limit FVector4
---@field UIOffset FVector2D
---@field flagDuration ULuaArrayHelper<number>
---@field rightPlus number
---@field opacityFactor number
---@field maxAlpha ULuaArrayHelper<number>
---@field minAlpha ULuaArrayHelper<number>
---@field flagType number
---@field showItemRadius number
---@field bShowItem boolean
local UGroundFlagWidget = {}

---@param Loc FVector
function UGroundFlagWidget:SetWorldPos(Loc) end

---@return number
function UGroundFlagWidget:GetTargetDistance() end

function UGroundFlagWidget:ShowItem() end

function UGroundFlagWidget:HideItem() end
