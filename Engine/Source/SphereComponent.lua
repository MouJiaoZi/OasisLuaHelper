---@meta

---A sphere generally used for simple collision. Bounds are rendered as lines in the editor.
---@class USphereComponent: UShapeComponent
---@field SphereRadius number @The radius of the sphere *
local USphereComponent = {}

---Change the sphere radius. This is the unscaled radius, before component scale is applied.
---@param InSphereRadius number
---@param bUpdateOverlaps boolean
function USphereComponent:SetSphereRadius(InSphereRadius, bUpdateOverlaps) end

---@return number
function USphereComponent:GetScaledSphereRadius() end

---@return number
function USphereComponent:GetUnscaledSphereRadius() end

---@return number
function USphereComponent:GetShapeScale() end
