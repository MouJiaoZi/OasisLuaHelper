---@meta

---@class UOBModeAirDropWidget: UUAEUserWidget
---@field Limit FVector4
---@field heightPlus number
---@field rightPlus number
---@field UIOffset FVector2D
---@field LocOffset FVector
local UOBModeAirDropWidget = {}

---@param DropBox AAirDropBoxActor
function UOBModeAirDropWidget:SetAirDrop(DropBox) end

function UOBModeAirDropWidget:OnItemClicked() end

function UOBModeAirDropWidget:BP_CallButtonLook() end
