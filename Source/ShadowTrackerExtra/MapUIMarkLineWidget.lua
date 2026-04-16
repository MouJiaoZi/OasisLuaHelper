---@meta

---@class UMapUIMarkLineWidget: UMapUIMarkBaseWidget
---@field IsAutoSize boolean
---@field RotatorStart boolean
---@field RotatorEnd boolean
---@field LastStartPos FVector2D
---@field LastEndPos FVector2D
---@field PointStart FVector
---@field PointEnd FVector
---@field DefaultAnchors FAnchors
---@field DefaultMargin FMargin
---@field PosStartOffset FVector2D
---@field PosLineOffset FVector2D
---@field PosEndOffset FVector2D
local UMapUIMarkLineWidget = {}

---@param InStr string
function UMapUIMarkLineWidget:DecodeStrToPoints(InStr) end

function UMapUIMarkLineWidget:UpdateLinePoints() end

function UMapUIMarkLineWidget:OnSetCurUIPos() end
