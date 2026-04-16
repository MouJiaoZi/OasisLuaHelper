---@meta

---DecalActor contains a DecalComponent which can be used to render material modifications on top of existing geometry.
---@class ADecalActor: AActor
local ADecalActor = {}

---@param NewDecalMaterial UMaterialInterface
function ADecalActor:SetDecalMaterial(NewDecalMaterial) end
