---@meta

---Information for one sound in the track.
---@class FSoundTrackKey
---@field Time number
---@field Volume number
---@field Pitch number
FSoundTrackKey = {}


---@class UInterpTrackSound: UInterpTrackVectorBase
---@field Sounds ULuaArrayHelper<FSoundTrackKey> @Array of sounds to play at specific times.
---@field bPlayOnReverse number @if set, sound plays only when playing the matinee in reverse instead of when the matinee plays forward
---@field bContinueSoundOnMatineeEnd number @If true, sounds on this track will not be forced to finish when the matinee sequence finishes.
---@field bSuppressSubtitles number @If true, don't show subtitles for sounds played by this track.
---@field bTreatAsDialogue number @If true and track is controlling a pawn, makes the pawn "speak" the given audio.
---@field bAttach number
local UInterpTrackSound = {}
