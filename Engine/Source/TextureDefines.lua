---@meta

---update BaseEngine.ini [SystemSettings] you might have to update the update Game's DefaultEngine.ini [SystemSettings] order and actual name can never change (order is important!) TEXTUREGROUP_Cinematic: should be used for Cinematics which will be baked out and want to have the highest settings
---@class TextureGroup
---@field TEXTUREGROUP_World number @World
---@field TEXTUREGROUP_WorldNormalMap number @WorldNormalMap
---@field TEXTUREGROUP_WorldSpecular number @WorldSpecular
---@field TEXTUREGROUP_Character number @Character
---@field TEXTUREGROUP_CharacterNormalMap number @CharacterNormalMap
---@field TEXTUREGROUP_CharacterSpecular number @CharacterSpecular
---@field TEXTUREGROUP_Weapon number @Weapon
---@field TEXTUREGROUP_WeaponNormalMap number @WeaponNormalMap
---@field TEXTUREGROUP_WeaponSpecular number @WeaponSpecular
---@field TEXTUREGROUP_Vehicle number @Vehicle
---@field TEXTUREGROUP_VehicleNormalMap number @VehicleNormalMap
---@field TEXTUREGROUP_VehicleSpecular number @VehicleSpecular
---@field TEXTUREGROUP_Cinematic number @Cinematic
---@field TEXTUREGROUP_Effects number @Effects
---@field TEXTUREGROUP_EffectsNotFiltered number @EffectsNotFiltered
---@field TEXTUREGROUP_Skybox number @Skybox
---@field TEXTUREGROUP_UI number @UI
---@field TEXTUREGROUP_Lightmap number @Lightmap
---@field TEXTUREGROUP_RenderTarget number @RenderTarget
---@field TEXTUREGROUP_MobileFlattened number @MobileFlattened
---@field TEXTUREGROUP_ProcBuilding_Face number @Obsolete - kept for backwards compatibility.
---@field TEXTUREGROUP_ProcBuilding_LightMap number @Obsolete - kept for backwards compatibility.
---@field TEXTUREGROUP_Shadowmap number @Shadowmap
---@field TEXTUREGROUP_ColorLookupTable number @No compression, no mips.
---@field TEXTUREGROUP_Terrain_Heightmap number @Terrain_Heightmap
---@field TEXTUREGROUP_Terrain_Weightmap number @Terrain_Weightmap
---@field TEXTUREGROUP_Bokeh number @Using this TextureGroup triggers special mip map generation code only useful for the BokehDOF post process.
---@field TEXTUREGROUP_IESLightProfile number @No compression, created on import of a .IES file.
---@field TEXTUREGROUP_Pixels2D number @Non-filtered, useful for 2D rendering.
---@field TEXTUREGROUP_HierarchicalLOD number @Hierarchical LOD generated textures
---@field TEXTUREGROUP_TerrainAlbedo number @TerrainAlbedo
---@field TEXTUREGROUP_MaskedBillboard number @MaskedBillboard
---@field TEXTUREGROUP_CharacterHD number @CharacterHD
---@field TEXTUREGROUP_CharacterNormalMapHD number @CharacterNormalMapHD
---@field TEXTUREGROUP_CharacterSpecularHD number @CharacterSpecularHD
---@field TEXTUREGROUP_WeaponHD number @WeaponHD
---@field TEXTUREGROUP_WeaponNormalMapHD number @WeaponNormalMapHD
---@field TEXTUREGROUP_WeaponSpecularHD number @WeaponSpecularHD
---@field TEXTUREGROUP_WorldHD number @Texture used for festival, set lower texture lod bias to reduce memory.
---@field TEXTUREGROUP_WorldNormalMapHD number @WorldNormalMapHD
---@field TEXTUREGROUP_WorldSpecularHD number @WorldSpecularHD
---@field TEXTUREGROUP_LobbyScene number @LobbyScene
---@field TEXTUREGROUP_LobbyLightMap number @LobbyLightMap
---@field TEXTUREGROUP_LobbyUI number @LobbyUI
---@field TEXTUREGROUP_MAX number
TextureGroup = {}


---@class TextureMipGenSettings
---@field TMGS_FromTextureGroup number @Default for the "texture".
---@field TMGS_SimpleAverage number @2x2 average, default for the "texture group".
---@field TMGS_Sharpen0 number @8x8 with sharpening: 0=no sharpening but better quality which is softer, 1=little, 5=medium, 10=extreme.
---@field TMGS_Sharpen1 number @8x8 with sharpening: 0=no sharpening but better quality which is softer, 1=little, 5=medium, 10=extreme.
---@field TMGS_Sharpen2 number @8x8 with sharpening: 0=no sharpening but better quality which is softer, 1=little, 5=medium, 10=extreme.
---@field TMGS_Sharpen3 number @8x8 with sharpening: 0=no sharpening but better quality which is softer, 1=little, 5=medium, 10=extreme.
---@field TMGS_Sharpen4 number @8x8 with sharpening: 0=no sharpening but better quality which is softer, 1=little, 5=medium, 10=extreme.
---@field TMGS_Sharpen5 number @8x8 with sharpening: 0=no sharpening but better quality which is softer, 1=little, 5=medium, 10=extreme.
---@field TMGS_Sharpen6 number @8x8 with sharpening: 0=no sharpening but better quality which is softer, 1=little, 5=medium, 10=extreme.
---@field TMGS_Sharpen7 number @8x8 with sharpening: 0=no sharpening but better quality which is softer, 1=little, 5=medium, 10=extreme.
---@field TMGS_Sharpen8 number @8x8 with sharpening: 0=no sharpening but better quality which is softer, 1=little, 5=medium, 10=extreme.
---@field TMGS_Sharpen9 number @8x8 with sharpening: 0=no sharpening but better quality which is softer, 1=little, 5=medium, 10=extreme.
---@field TMGS_Sharpen10 number @8x8 with sharpening: 0=no sharpening but better quality which is softer, 1=little, 5=medium, 10=extreme.
---@field TMGS_NoMipmaps number @NoMipmaps
---@field TMGS_LeaveExistingMips number @Do not touch existing mip chain as it contains generated data.
---@field TMGS_Blur1 number @Blur further (useful for image based reflections).
---@field TMGS_Blur2 number @Blur2
---@field TMGS_Blur3 number @Blur3
---@field TMGS_Blur4 number @Blur4
---@field TMGS_Blur5 number @Blur5
---@field TMGS_Sharpen5_New number @New Mip Filter
---@field TMGS_MAX number
TextureMipGenSettings = {}


---Options for texture padding mode.
---@class ETexturePowerOfTwoSetting
---@field None number @Do not modify the texture dimensions.
---@field PadToPowerOfTwo number @Pad the texture to the nearest power of two size.
---@field PadToSquarePowerOfTwo number @Pad the texture to the nearest square power of two size.
ETexturePowerOfTwoSetting = {}


---@class ETextureSamplerFilter
---@field Point number
---@field Bilinear number
---@field Trilinear number
---@field AnisotropicPoint number
---@field AnisotropicLinear number
ETextureSamplerFilter = {}
