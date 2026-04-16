---@meta

---Used to create local volumetric fog.
---@class UVolumetricFogSphereComponent: USphereComponent
---@field VolumetricFogAlbedo FColor @The height fog particle reflectiveness used by volumetric fog. Water particles in air have an albedo near white, while dust has slightly darker value.
---@field VolumetricFogEmissive FLinearColor @Light emitted by height fog.  This is a density so more light is emitted the further you are looking through the fog. In most cases skylight is a better choice, however right now volumetric fog does not support precomputed lighting, So stationary skylights are unshadowed and static skylights don't affect volumetric fog at all.
---@field VolumetricFogExtinctionScale number @Scales the height fog particle extinction amount used by volumetric fog.  Values larger than 1 cause fog particles everywhere absorb more light.
local UVolumetricFogSphereComponent = {}

---@param NewValue number
function UVolumetricFogSphereComponent:SetVolumetricFogExtinctionScale(NewValue) end

---@param NewValue FColor
function UVolumetricFogSphereComponent:SetVolumetricFogAlbedo(NewValue) end

---@param NewValue FLinearColor
function UVolumetricFogSphereComponent:SetVolumetricFogEmissive(NewValue) end
