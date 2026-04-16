---@meta

---Information about a streaming texture that a primitive uses for rendering.
---@class FStreamingTexturePrimitiveInfo
---@field Bounds FBoxSphereBounds @The streaming bounds of the texture, usually the component material bounds. Usually only valid for registered component, as component bounds are only updated when the components are registered. otherwise only PackedRelativeBox can be used.Irrelevant when the component is not registered, as the component could be moved by ULevel::ApplyWorldOffset() In that case, only PackedRelativeBox is meaningful.
---@field TexelFactor number
---@field PackedRelativeBox number @When non zero, this represents the relative box used to compute Bounds, using the component bounds as reference. If available, this allows the texture streamer to generate the level streaming data before the level gets visible. At that point, the component are not yet registered, and the bounds are unknown, but the precompiled build data is still available. Also allows to update the relative bounds after a level get moved around from ApplyWorldOffset.
FStreamingTexturePrimitiveInfo = {}


---This struct holds the result of TextureStreaming Build for each component texture, as referred by its used materials. It is possible that the entry referred by this data is not actually relevant in a given quality / target. It is also possible that some texture are not referred, and will then fall on fallbacks computation. Because each component holds its precomputed data for each texture, this struct is designed to be as compact as possible.
---@class FStreamingTextureBuildInfo
---@field PackedRelativeBox number @The relative bounding box for this entry. The relative bounds is a bound equal or smaller than the component bounds and represent the merged LOD section bounds of all LOD section referencing the given texture. When the level transform is modified following a call to ApplyLevelTransform, this relative bound becomes deprecated as it was computed from the transform at build time.
---@field TextureLevelIndex number @The level scope identifier of the texture. When building the texture streaming data, each level holds a list of all referred texture Guids. This is required to prevent loading textures on platforms which would not require the texture to be loaded, and is a consequence of the texture streaming build not being platform specific (the same streaming data is build for every platform target). Could also apply to quality level.
---@field TexelFactor number @The texel factor for this texture. This represent the world size a texture square holding with unit UVs. This value is a combination of the TexelFactor from the mesh and also the material scale. It does not take into consideration StreamingDistanceMultiplier, or texture group scale.
FStreamingTextureBuildInfo = {}
