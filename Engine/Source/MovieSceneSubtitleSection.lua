---@meta

---@class ESubtitleKeyType
---@field Animation number
---@field Anchor number
---@field RichText number
---@field BackGround number
---@field CustomUI number
ESubtitleKeyType = {}


---@class ESubtitleKeyAnimationType
---@field Roll number
---@field Fade number
ESubtitleKeyAnimationType = {}


---@class ESubtitleKeyAnchorType
---@field Low number
---@field Mid number
---@field Up number
ESubtitleKeyAnchorType = {}


---@class ESubtitleRichTextType
---@field Normal number
---@field H1 number
---@field H2 number
ESubtitleRichTextType = {}


---@class FMovieSceneSubtitleTagsKeyValue
---@field Key ESubtitleKeyType @BlendOutTimeWhenStop
---@field Animation ESubtitleKeyAnimationType
---@field Anchor ESubtitleKeyAnchorType
---@field RichText ESubtitleRichTextType
---@field CustomUI FSoftObjectPath
FMovieSceneSubtitleTagsKeyValue = {}


---@class FMovieSceneSubtitleParams
---@field SubTitleText string @BlendOutTimeWhenStop
---@field Tags ULuaArrayHelper<FMovieSceneSubtitleTagsKeyValue>
FMovieSceneSubtitleParams = {}


---A single floating point section.
---@class UMovieSceneSubtitleSection: UMovieSceneSection
---@field Params FMovieSceneSubtitleParams
local UMovieSceneSubtitleSection = {}
