---@meta

---Editable font parameter.
---@class FFontParameterValue
---@field ParameterName string
---@field FontPage number
---@field ExpressionGUID FGuid
FFontParameterValue = {}


---Editable scalar parameter.
---@class FScalarParameterValue
---@field ParameterName string
---@field ParameterValue number
---@field ExpressionGUID FGuid
FScalarParameterValue = {}


---Editable texture parameter.
---@class FTextureParameterValue
---@field ParameterName string
---@field ExpressionGUID FGuid
FTextureParameterValue = {}


---Editable vector parameter.
---@class FVectorParameterValue
---@field ParameterName string
---@field ParameterValue FLinearColor
---@field ExpressionGUID FGuid
FVectorParameterValue = {}


---@class UMaterialInstance: UMaterialInterface
---@field MeshLogicType number @材质实例的功能分类：1:挂件
---@field bOverride_IncludeShaderCode number
---@field bIncludeShaderCode number
---@field bHasStaticPermutationResource number @Indicates whether the instance has static permutation resources (which are required when static parameters are present) Read directly from the rendering thread, can only be modified with the use of a FMaterialUpdateContext. When true, StaticPermutationMaterialResources will always be valid and non-null.
---@field bOverrideSubsurfaceProfile number @Defines if SubsurfaceProfile from this instance is used or it uses the parent one.
---@field FontParameterValues ULuaArrayHelper<FFontParameterValue> @Font parameters.
---@field ScalarParameterValues ULuaArrayHelper<FScalarParameterValue> @Scalar parameters.
---@field TextureParameterValues ULuaArrayHelper<FTextureParameterValue> @Texture parameters.
---@field VectorParameterValues ULuaArrayHelper<FVectorParameterValue> @Vector parameters.
---@field DynamicInstancingParameters ULuaMapHelper<string, FVector4> @Dynamic instancing parameters.
---@field bOverrideBaseProperties_DEPRECATED boolean
---@field BasePropertyOverrides any
---@field PermutationTextureReferences ULuaArrayHelper<UTexture> @Cached texture references from all expressions in the material (including nested functions). This is used to link uniform texture expressions which were stored in the DDC with the UTextures that they reference.
---@field bEnableTexture2DArrayShaderVariant number
local UMaterialInstance = {}
