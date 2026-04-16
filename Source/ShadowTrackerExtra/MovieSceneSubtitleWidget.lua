---@meta

---@class UMovieSceneSubtitleWidget: UUAEUserWidget
local UMovieSceneSubtitleWidget = {}

---@param Text string
---@param Tags ULuaArrayHelper<FMovieSceneSubtitleTagsKeyValue>
function UMovieSceneSubtitleWidget:OnBegin(Text, Tags) end

function UMovieSceneSubtitleWidget:OnEnd() end
