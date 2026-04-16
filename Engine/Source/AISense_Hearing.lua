---@meta

---@class FAINoiseEvent
---@field NoiseLocation FVector @if not set Instigator's location will be used
---@field Loudness number @Loudness modifier of the sound. If MaxRange is non-zero, this modifies the range (by multiplication). If there is no MaxRange, then if Square(DistanceToSound) <= Square(HearingRange) * Loudness, the sound is heard, false otherwise.
---@field MaxRange number @Max range at which the sound can be heard. Multiplied by Loudness. A value of 0 indicates that there is no range limit, though listeners are still limited by their own hearing range.
---@field Tag string @Named identifier for the noise.
FAINoiseEvent = {}


---@class UAISense_Hearing: UAISense
---@field NoiseEvents ULuaArrayHelper<FAINoiseEvent>
---@field SpeedOfSoundSq number @Defaults to 0 to have instant notification. Setting to > 0 will result in delaying when AI hears the sound based on the distance from the source
local UAISense_Hearing = {}

---Report a noise event.
---@param WorldContextObject UObject
---@param NoiseLocation FVector
---@param Loudness number
---@param Instigator AActor
---@param MaxRange number
---@param Tag string
function UAISense_Hearing:ReportNoiseEvent(WorldContextObject, NoiseLocation, Loudness, Instigator, MaxRange, Tag) end
