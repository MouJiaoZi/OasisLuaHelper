---@meta

---Proxy structure for color section key data.
---@class FMovieSceneColorKeyStruct
---@field Color FLinearColor @The key's color value.
---@field Time number @The key's time.
FMovieSceneColorKeyStruct = {}


---A single floating point section
---@class UMovieSceneColorSection: UMovieSceneSection, IKeyframeSection
---@field RedCurve FRichCurve @Red curve data
---@field GreenCurve FRichCurve @Green curve data
---@field BlueCurve FRichCurve @Blue curve data
---@field AlphaCurve FRichCurve @Alpha curve data
local UMovieSceneColorSection = {}
