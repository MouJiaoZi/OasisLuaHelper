---@meta

---A material that is rendered onto the surface of a mesh. A kind of 'bumper sticker' for a model.
---@class UDecalComponent: USceneComponent
---@field SortOrder number @Controls the order in which decal elements are rendered.  Higher values draw later (on top). Setting many different sort orders on many different decals prevents sorting by state and can reduce performance.
---@field FadeScreenSize number
---@field FadeStartDelay number @Time in seconds to wait before beginning to fade out the decal. Set fade duration and start delay to 0 to make persistent.
---@field FadeDuration number @Time in seconds for the decal to fade out. Set fade duration and start delay to 0 to make persistent. Only fades in active simulation or game.
---@field bDestroyOwnerAfterFade number @Automatically destroys the owning actor after fully fading out.
---@field DecalSize FVector @Decal size in local space (does not include the component scale), technically redundant but there for convenience
local UDecalComponent = {}

---Whether bake decal to the landscape flatten material
---@return number
function UDecalComponent:GetFadeStartDelay() end

---@return number
function UDecalComponent:GetFadeDuration() end

---Sets the decal's fade start time, duration and if the owning actor should be destroyed after the decal is fully faded out. The default value of 0 for FadeStartDelay and FadeDuration makes the decal persistent. See DecalLifetimeOpacity material node to control the look of "fading out."
---@param StartDelay number
---@param Duration number
---@param DestroyOwnerAfterFade boolean
function UDecalComponent:SetFadeOut(StartDelay, Duration, DestroyOwnerAfterFade) end

---Set the FadeScreenSize for this decal component
---@param NewFadeScreenSize number
function UDecalComponent:SetFadeScreenSize(NewFadeScreenSize) end

---Sets the sort order for the decal component. Higher values draw later (on top). This will force the decal to reattach
---@param Value number
function UDecalComponent:SetSortOrder(Value) end

---setting decal material on decal component. This will force the decal to reattach
---@param NewDecalMaterial UMaterialInterface
function UDecalComponent:SetDecalMaterial(NewDecalMaterial) end
