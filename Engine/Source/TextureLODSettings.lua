---@meta

---LOD settings for a single texture group.
---@class FTextureLODGroup
---@field Group TextureGroup @Minimum LOD mip count below which the code won't bias.
---@field LODBias number @Group LOD bias.
---@field NumStreamedMips number @Number of mip-levels that can be streamed. -1 means all mips can stream.
---@field MipGenSettings TextureMipGenSettings @Defines how the the mip-map generation works, e.g. sharpening
---@field MinLODSize number
---@field MaxLODSize number
---@field MinMagFilter string
---@field MipFilter string
FTextureLODGroup = {}


---@class FTextureLODGroupFilterOverride
---@field Group TextureGroup @Minimum LOD mip count below which the code won't bias.
---@field MinMagFilter string
---@field MipFilter string
FTextureLODGroupFilterOverride = {}


---Structure containing all information related to an LOD group and providing helper functions to calculate the LOD bias of a given group.
---@class UTextureLODSettings: UObject
---@field TextureLODGroups ULuaArrayHelper<FTextureLODGroup> @Array of LOD settings with entries per group.
---@field TextureLODGroupsFilterCache ULuaMapHelper<TextureGroup, ETextureSamplerFilter>
local UTextureLODSettings = {}
