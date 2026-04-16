---@meta

---@class IPickupDropFixedPosition
IPickupDropFixedPosition = {}

---@return boolean
function IPickupDropFixedPosition:UseDropFixedPosition() end

---@return boolean
function IPickupDropFixedPosition:IsDropFixedRelativePositionSetUp() end

---@param DropOwner AActor
---@return FVector
function IPickupDropFixedPosition:GetDropFixedRelativePosition(DropOwner) end
