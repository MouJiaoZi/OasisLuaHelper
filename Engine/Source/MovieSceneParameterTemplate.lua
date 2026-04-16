---@meta

---Template that performs evaluation of parameter sections
---@class FMovieSceneParameterSectionTemplate
---@field Scalars ULuaArrayHelper<FScalarParameterNameAndCurve> @The scalar parameter names and their associated curves.
---@field Vectors ULuaArrayHelper<FVectorParameterNameAndCurves> @The vector parameter names and their associated curves.
---@field Colors ULuaArrayHelper<FColorParameterNameAndCurves> @The color parameter names and their associated curves.
FMovieSceneParameterSectionTemplate = {}


---Evaluation template for primitive component materials
---@class FMovieSceneComponentMaterialSectionTemplate
---@field MaterialIndex number
FMovieSceneComponentMaterialSectionTemplate = {}
