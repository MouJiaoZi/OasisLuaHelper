---@meta

---A Component referencing a vector field.
---@class UVectorFieldComponent: UPrimitiveComponent
---@field Intensity number @The intensity at which the vector field is applied.
---@field Tightness number @How tightly particles follow the vector field.
---@field bPreviewVectorField number @If true, the vector field is only used for preview visualizations.
local UVectorFieldComponent = {}

---Set the intensity of the vector field.
---@param NewIntensity number
function UVectorFieldComponent:SetIntensity(NewIntensity) end
