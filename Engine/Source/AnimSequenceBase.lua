---@meta

---@class ETypeAdvanceAnim
---@field ETAA_Default number
---@field ETAA_Finished number
---@field ETAA_Looped number
ETypeAdvanceAnim = {}


---@class UAnimSequenceBase: UAnimationAsset
---@field Notifies ULuaArrayHelper<FAnimNotifyEvent> @Animation notifies, sorted by time (earliest notification first).
---@field SequenceLength number @Length (in seconds) of this AnimSequence if played back with a speed of 1.0.
---@field RateScale number @Number for tweaking playback rate of this animation globally.
---@field bEnableExcludeNotifiesWhenPlayAsMontage boolean
---@field RawCurveData any @Raw uncompressed float curve data
local UAnimSequenceBase = {}

---Returns the total play length of the montage, if played back with a speed of 1.0.
---@return number
function UAnimSequenceBase:GetPlayLength() end
