---@meta

---Information for one event in the track.
---@class FEventTrackKey
---@field Time number
---@field EventName string
FEventTrackKey = {}


---@class UInterpTrackEvent: UInterpTrack
---@field EventTrack ULuaArrayHelper<FEventTrackKey> @Array of events to fire off.
---@field bFireEventsWhenForwards number @If events should be fired when passed playing the sequence forwards.
---@field bFireEventsWhenBackwards number @If events should be fired when passed playing the sequence backwards.
---@field bFireEventsWhenJumpingForwards number @If true, events on this track are fired even when jumping forwads through a sequence - for example, skipping a cinematic.
---@field bUseCustomEventName number @If checked each key's event name is the exact name of the custom event function in level script that will be called
local UInterpTrackEvent = {}
