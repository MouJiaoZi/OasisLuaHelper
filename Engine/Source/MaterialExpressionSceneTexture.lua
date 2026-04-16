---@meta

---like EPassInputId but can expose more e.g. GBuffer
---@class ESceneTextureId
---@field PPI_SceneColor number @Scene color, normal post process passes should use PostProcessInput0
---@field PPI_SceneDepth number @Scene depth, single channel, contains the linear depth of the opaque objects
---@field PPI_DiffuseColor number @Material diffuse, RGB color (computed from GBuffer)
---@field PPI_SpecularColor number @Material specular, RGB color (computed from GBuffer)
---@field PPI_SubsurfaceColor number @Material subsurface, RGB color (GBuffer, only for some ShadingModels)
---@field PPI_BaseColor number @Material base, RGB color (GBuffer), can be modified on read by the ShadingModel, consider StoredBasedColor
---@field PPI_Specular number @Material specular, single channel (GBuffer), can be modified on read by the ShadingModel, consider StoredSpecular
---@field PPI_Metallic number @Material metallic, single channel (GBuffer)
---@field PPI_WorldNormal number @Normal, RGB in -1..1 range, not normalized (GBuffer)
---@field PPI_SeparateTranslucency number @Not yet supported
---@field PPI_Opacity number @Material opacity, single channel (GBuffer)
---@field PPI_Roughness number @Material roughness, single channel (GBuffer)
---@field PPI_MaterialAO number @Material ambient occlusion, single channel (GBuffer)
---@field PPI_CustomDepth number @Scene depth, single channel, contains the linear depth of the opaque objects rendered with CustomDepth (mesh property)
---@field PPI_PostProcessInput0 number @Input #0 of this postprocess pass, usually the only one hooked up
---@field PPI_PostProcessInput1 number @Input #1 of this postprocess pass, usually not used
---@field PPI_PostProcessInput2 number @Input #2 of this postprocess pass, usually not used
---@field PPI_PostProcessInput3 number @Input #3 of this postprocess pass, usually not used
---@field PPI_PostProcessInput4 number @Input #4 of this postprocess pass, usually not used
---@field PPI_PostProcessInput5 number @Input #5 of this postprocess pass, usually not used
---@field PPI_PostProcessInput6 number @Input #6 of this postprocess pass, usually not used
---@field PPI_DecalMask number @Decal Mask, single bit (was moved to stencil for better performance, not accessible at the moment)
---@field PPI_ShadingModel number @Shading model
---@field PPI_AmbientOcclusion number @Ambient Occlusion, single channel
---@field PPI_CustomStencil number @Scene stencil, contains CustomStencil mesh property of the opaque objects rendered with CustomDepth
---@field PPI_StoredBaseColor number @Material base, RGB color (GBuffer)
---@field PPI_StoredSpecular number @Material specular, single channel (GBuffer)
ESceneTextureId = {}


---@class UMaterialExpressionSceneTexture: UMaterialExpression
---@field Coordinates FExpressionInput @UV in 0..1 range
---@field SceneTextureId ESceneTextureId @Which scene texture (screen aligned texture) we want to make a lookup into
---@field bClampUVs boolean @Clamps texture coordinates to the range 0 to 1. Incurs a performance cost.
---@field bFiltered boolean @Whether to use point sampled texture lookup (default) or using [bi-linear] filtered (can be slower, avoid faceted lock with distortions), some SceneTextures cannot be filtered
local UMaterialExpressionSceneTexture = {}
