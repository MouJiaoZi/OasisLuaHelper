---@meta

---@class ELocationSkelVertSurfaceSource
---@field VERTSURFACESOURCE_Vert number @Vertices
---@field VERTSURFACESOURCE_Surface number @Surfaces
---@field VERTSURFACESOURCE_MAX number
ELocationSkelVertSurfaceSource = {}


---@class UParticleModuleLocationSkelVertSurface: UParticleModuleLocationBase
---@field SourceType ELocationSkelVertSurfaceSource @Whether the module uses Verts or Surfaces for locations. VERTSURFACESOURCE_Vert		- Use Verts as the source locations. VERTSURFACESOURCE_Surface	- Use Surfaces as the source locations.
---@field UniversalOffset FVector @An offset to apply to each vert/surface
---@field bUpdatePositionEachFrame number @If true, update the particle locations each frame with that of the vert/surface
---@field bOrientMeshEmitters number @If true, rotate mesh emitter meshes to orient w/ the vert/surface
---@field bInheritBoneVelocity number @If true, particles inherit the associated bone velocity when spawned
---@field InheritVelocityScale number @A scale on how much of the bone's velocity a particle will inherit.
---@field SkelMeshActorParamName string @The parameter name of the skeletal mesh actor that supplies the SkelMeshComponent for in-game.
---@field ValidAssociatedBones ULuaArrayHelper<string> @This module will only spawn from verts or surfaces associated with the bones in this list
---@field bEnforceNormalCheck number @When true use the RestrictToNormal and NormalTolerance values to check surface normals
---@field NormalToCompare FVector @Use this normal to restrict spawning locations
---@field NormalCheckToleranceDegrees number @Normal tolerance.  0 degrees means it must be an exact match, 180 degrees means it can be any angle.
---@field NormalCheckTolerance number @Normal tolerance.  Value between 1.0 and -1.0 with 1.0 being exact match, 0.0 being everything up to perpendicular and -1.0 being any direction or don't restrict at all.
---@field ValidMaterialIndices ULuaArrayHelper<number> @Array of material indices that are valid materials to spawn from. If empty, any material will be considered valid
---@field bInheritVertexColor number @If true, particles inherit the associated vertex color on spawn. This feature is not supported for GPU particles.
---@field bInheritUV number @If true, particles inherit the associated UV data on spawn. Accessed through dynamic parameter module X and Y, must be a "Spawn Time Only" parameter on "AutoSet" mode. This feature is not supported for GPU particles.
---@field InheritUVChannel number @UV channel to inherit from the spawn mesh, internally clamped to those available.
local UParticleModuleLocationSkelVertSurface = {}
