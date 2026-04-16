---@meta

---@class FTTTrackBase
---@field TrackName string @Name of this track
---@field bIsExternalCurve boolean @Flag to identify internal/external curve
FTTTrackBase = {}


---Structure storing information about one event track
---@class FTTEventTrack
FTTEventTrack = {}


---Structure storing information about one float interpolation track
---@class FTTFloatTrack
FTTFloatTrack = {}


---Structure storing information about one vector interpolation track
---@class FTTVectorTrack
FTTVectorTrack = {}


---Structure storing information about one color interpolation track
---@class FTTLinearColorTrack
FTTLinearColorTrack = {}


---@class UTimelineTemplate: UObject
---@field TimelineLength number @Length of this timeline
---@field LengthMode ETimelineLengthMode @How we want the timeline to determine its own length (e.g. specified length, last keyframe)
---@field bAutoPlay number @If we want the timeline to auto-play
---@field bLoop number @If we want the timeline to loop
---@field bReplicated number @If we want the timeline to loop
---@field bValidatedAsWired number @Compiler Validated As Wired up
---@field bIgnoreTimeDilation number @If we want the timeline to ignore global time dilation
---@field EventTracks ULuaArrayHelper<FTTEventTrack> @Set of event tracks
---@field FloatTracks ULuaArrayHelper<FTTFloatTrack> @Set of float interpolation tracks
---@field VectorTracks ULuaArrayHelper<FTTVectorTrack> @Set of vector interpolation tracks
---@field LinearColorTracks ULuaArrayHelper<FTTLinearColorTrack> @Set of linear color interpolation tracks
---@field MetaDataArray ULuaArrayHelper<FBPVariableMetaDataEntry> @Metadata information for this timeline
---@field TimelineGuid FGuid
local UTimelineTemplate = {}
