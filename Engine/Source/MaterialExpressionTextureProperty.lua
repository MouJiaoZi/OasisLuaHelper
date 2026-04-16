---@meta

---Selects the texture property to output
---@class EMaterialExposedTextureProperty
---@field TMTM_TextureSize number @Texture Size
---@field TMTM_TexelSize number @Texel Size
---@field TMTM_MAX number
EMaterialExposedTextureProperty = {}


---@class UMaterialExpressionTextureProperty: UMaterialExpression
---@field TextureObject FExpressionInput
---@field Property EMaterialExposedTextureProperty @Texture property to be accessed
local UMaterialExpressionTextureProperty = {}
