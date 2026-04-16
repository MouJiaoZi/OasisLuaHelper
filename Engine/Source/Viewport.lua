---@meta

---@class UViewport: UContentWidget
---@field BackgroundColor FLinearColor
local UViewport = {}

---@return FVector
function UViewport:GetViewLocation() end

---@param Location FVector
function UViewport:SetViewLocation(Location) end

---@return FRotator
function UViewport:GetViewRotation() end

---@param Rotation FRotator
function UViewport:SetViewRotation(Rotation) end
