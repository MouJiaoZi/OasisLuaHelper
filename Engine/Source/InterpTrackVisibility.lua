---@meta

---Visibility track actions
---@class EVisibilityTrackAction
---@field EVTA_Hide number @Hides the object
---@field EVTA_Show number @Shows the object
---@field EVTA_Toggle number @Toggles visibility of the object
---@field EVTA_MAX number
EVisibilityTrackAction = {}


---Required condition for firing this event
---@class EVisibilityTrackCondition
---@field EVTC_Always number @Always play this event
---@field EVTC_GoreEnabled number @Only play this event when extreme content (gore) is enabled
---@field EVTC_GoreDisabled number @Only play this event when extreme content (gore) is disabled
---@field EVTC_MAX number
EVisibilityTrackCondition = {}


---Information for one toggle in the track.
---@class FVisibilityTrackKey
---@field Time number
---@field Action EVisibilityTrackAction
---@field ActiveCondition EVisibilityTrackCondition @Condition that must be satisfied for this key event to fire
FVisibilityTrackKey = {}


---@class UInterpTrackVisibility: UInterpTrack
---@field VisibilityTrack ULuaArrayHelper<FVisibilityTrackKey> @Array of events to fire off.
---@field bFireEventsWhenForwards number @If events should be fired when passed playing the sequence forwards.
---@field bFireEventsWhenBackwards number @If events should be fired when passed playing the sequence backwards.
---@field bFireEventsWhenJumpingForwards number @If true, events on this track are fired even when jumping forwads through a sequence - for example, skipping a cinematic.
local UInterpTrackVisibility = {}
