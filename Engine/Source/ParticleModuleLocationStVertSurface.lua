---@meta

---@class ELocationStVertSurfaceSource
---@field ST_VERTSURFACESOURCE_Vert number @Vertices
---@field ST_VERTSURFACESOURCE_Surface number @Surfaces_CacheStMesh
---@field ST_VERTSURFACESOURCE_ActorVert number @Actor_Vertices
---@field ST_VERTSURFACESOURCE_ActorSurface number @Actor_Surface
---@field ST_VERTSURFACESOURCE_MAX number
ELocationStVertSurfaceSource = {}


---@class ELocationStVertBrustType
---@field ST_VERTBRUSTTYPE_RANDOM number @Random
---@field ST_VERTBRUSTTYPE_SEQ number @Sequence
---@field ST_VERTBRUSTTYPE_Reverse number @Reverse
---@field ST_VERTBRUSTTYPE_MAX number
ELocationStVertBrustType = {}


---@class EParticleCoutingMethod
---@field ST_ParticleCoutingMethod_ActiveParticles number @以当前活跃特效数量计数
---@field ST_ParticleCoutingMethod_SpawnedParticles number @以历史释放特效数量计数
---@field ST_ParticleCoutingMethod_MAX number
EParticleCoutingMethod = {}


---@class UParticleModuleLocationStVertSurface: UParticleModuleLocationBase
---@field SourceType ELocationStVertSurfaceSource @Whether the module uses Verts or Surfaces for locations. ST_VERTSURFACESOURCE_Vert           - Use StoreVertexPostion ST_VERTSURFACESOURCE_ActorVert		- Use Actor Verts as the source locations. ST_VERTSURFACESOURCE_ActorSurface	- Use Actor Surfaces as the source locations.
---@field BrustType ELocationStVertBrustType
---@field ParticleCoutingMethod EParticleCoutingMethod
---@field UniversalOffset FVector @An offset to apply to each vert/surface
---@field bUpdatePositionEachFrame number @If true, update the particle locations each frame with that of the vert/surface
---@field bOrientMeshEmitters number @If true, rotate mesh emitter meshes to orient w/ the vert/surface
---@field StMeshActorParamName string @The parameter name of the skeletal mesh actor that supplies the SkelMeshComponent for in-game.
---@field VertexPosition ULuaArrayHelper<FVector> @The name of the skeletal mesh to use in the editor
---@field VertexNormals ULuaArrayHelper<FVector>
---@field EditorStoreTriangleIndexArray ULuaArrayHelper<number>
---@field EditorStoreTriangleNum number
---@field EditorStoreSectionCount number
---@field EditorStoreSectionMinVertexIndexMap ULuaMapHelper<number, number>
---@field EditorStoreSectionTrianglesMap ULuaMapHelper<number, number>
---@field PostionScale FVector
---@field ParticleSpeed number
---@field bEnforceNormalCheck number @When true use the RestrictToNormal and NormalTolerance values to check surface normals
---@field NormalToCompare FVector @Use this normal to restrict spawning locations
---@field NormalCheckToleranceDegrees number @Normal tolerance.  0 degrees means it must be an exact match, 180 degrees means it can be any angle.
---@field NormalCheckTolerance number @Normal tolerance.  Value between 1.0 and -1.0 with 1.0 being exact match, 0.0 being everything up to perpendicular and -1.0 being any direction or don't restrict at all.
---@field bInheritVertexColor number @If true, particles inherit the associated vertex color on spawn. This feature is not supported for GPU particles.
---@field bInheritUV number @If true, particles inherit the associated UV data on spawn. Accessed through dynamic parameter module X and Y, must be a "Spawn Time Only" parameter on "AutoSet" mode. This feature is not supported for GPU particles.
---@field InheritUVChannel number @UV channel to inherit from the spawn mesh, internally clamped to those available.
local UParticleModuleLocationStVertSurface = {}
