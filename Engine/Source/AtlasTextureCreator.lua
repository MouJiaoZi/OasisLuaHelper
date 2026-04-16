---@meta

---@class ETexBias
---@field Include number
---@field Exclude number
ETexBias = {}


---@class ETextureType
---@field Diffuse number
---@field Normal number
---@field RMA number
---@field FX number
---@field MASK number
ETextureType = {}


---@class EUpScaleMethod
---@field Nearest number
---@field Bilinear number
EUpScaleMethod = {}


---@class FTextureInfo
---@field TexIndex number
---@field AtlasOffset FVector2D
---@field MipScaleBias number
FTextureInfo = {}


---@class FAtlasTextures
---@field Textures ULuaArrayHelper<FTextureInfo>
---@field TextureSize FVector2D
---@field MinMipMapTextureIdx number
FAtlasTextures = {}


---@class FAtlasTexList
---@field Atlas ULuaArrayHelper<FAtlasTextures>
FAtlasTexList = {}


---@class FMergedAtlasList
---@field AtlasList ULuaMapHelper<ETextureType, FAtlasTexList>
---@field ReferenceAtlasType ETextureType
FMergedAtlasList = {}


---@class UAtlasTextureCreator: UObject
local UAtlasTextureCreator = {}
