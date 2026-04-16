---@meta

---Structure representing an animated scalar parameter and it's associated animation curve.
---@class FScalarParameterNameAndCurve
---@field ParameterName string @The name of the scalar parameter which is being animated.
---@field Index number
---@field ParameterCurve FRichCurve @The curve which contains the animation data for the scalar parameter.
FScalarParameterNameAndCurve = {}


---Structure representing an animated vector parameter and it's associated animation curve.
---@class FVectorParameterNameAndCurves
---@field ParameterName string @The name of the vector parameter which is being animated.
---@field Index number
---@field XCurve FRichCurve @The curve which contains the animation data for the x component of the vector parameter.
---@field YCurve FRichCurve @The curve which contains the animation data for the y component of the vector parameter.
---@field ZCurve FRichCurve @The curve which contains the animation data for the z component of the vector parameter.
FVectorParameterNameAndCurves = {}


---Structure representing an animated vector parameter and it's associated animation curve.
---@class FColorParameterNameAndCurves
---@field ParameterName string @The name of the vector parameter which is being animated.
---@field Index number
---@field RedCurve FRichCurve @The curve which contains the animation data for the red component of the color parameter.
---@field GreenCurve FRichCurve @The curve which contains the animation data for the green component of the color parameter.
---@field BlueCurve FRichCurve @The curve which contains the animation data for the blue component of the color parameter.
---@field AlphaCurve FRichCurve @The curve which contains the animation data for the alpha component of the color parameter.
FColorParameterNameAndCurves = {}


---A single movie scene section which can contain data for multiple named parameters.
---@class UMovieSceneParameterSection: UMovieSceneSection
---@field ScalarParameterNamesAndCurves ULuaArrayHelper<FScalarParameterNameAndCurve> @The scalar parameter names and their associated curves.
---@field VectorParameterNamesAndCurves ULuaArrayHelper<FVectorParameterNameAndCurves> @The vector parameter names and their associated curves.
---@field ColorParameterNamesAndCurves ULuaArrayHelper<FColorParameterNameAndCurves> @The vector parameter names and their associated curves.
local UMovieSceneParameterSection = {}
