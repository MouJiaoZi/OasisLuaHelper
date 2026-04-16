---@meta

---Enumeration indicating toggle action
---@class ETrackToggleAction
---@field ETTA_Off number
---@field ETTA_On number
---@field ETTA_Toggle number
---@field ETTA_Trigger number
---@field ETTA_MAX number
ETrackToggleAction = {}


---Information for one toggle in the track.
---@class FToggleTrackKey
---@field Time number
---@field ToggleAction ETrackToggleAction
FToggleTrackKey = {}


---@class UInterpTrackToggle: UInterpTrack
---@field ToggleTrack ULuaArrayHelper<FToggleTrackKey> @Array of events to fire off.
---@field bActivateSystemEachUpdate number @If true, the track will call ActivateSystem on the emitter each update (the old 'incorrect' behavior). If false (the default), the System will only be activated if it was previously inactive.
---@field bActivateWithJustAttachedFlag number @If true, the track will activate the system w/ the 'Just Attached' flag.
---@field bFireEventsWhenForwards number @If events should be fired when passed playing the sequence forwards.
---@field bFireEventsWhenBackwards number @If events should be fired when passed playing the sequence backwards.
---@field bFireEventsWhenJumpingForwards number @If true, events on this track are fired even when jumping forwads through a sequence - for example, skipping a cinematic.
local UInterpTrackToggle = {}
