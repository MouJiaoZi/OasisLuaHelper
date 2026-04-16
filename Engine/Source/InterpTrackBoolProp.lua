---@meta

---Information for one event in the track.
---@class FBoolTrackKey
---@field Time number
---@field Value number
FBoolTrackKey = {}


---@class UInterpTrackBoolProp: UInterpTrack
---@field BoolTrack ULuaArrayHelper<FBoolTrackKey> @Array of booleans to set.
---@field PropertyName string @Name of property in Group  AActor  which this track will modify over time.
local UInterpTrackBoolProp = {}
