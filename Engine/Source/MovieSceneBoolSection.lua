---@meta

---A single bool section.
---@class UMovieSceneBoolSection: UMovieSceneSection, IKeyframeSection
---@field DefaultValue_DEPRECATED boolean @The default value to use when no keys are present - use GetCurve().SetDefaultValue()
---@field BoolCurve FIntegralCurve @Ordered curve data
local UMovieSceneBoolSection = {}
