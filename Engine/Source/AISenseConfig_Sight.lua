---@meta

---@class UAISenseConfig_Sight: UAISenseConfig
---@field Implementation UAISense_Sight
---@field SightRadius number @Maximum sight distance to notice a target.
---@field LoseSightRadius number @Maximum sight distance to see target that has been already seen.
---@field PeripheralVisionAngleDegrees number @How far to the side AI can see, in degrees. Use SetPeripheralVisionAngle to change the value at runtime. The value represents the angle measured in relation to the forward vector, not the whole range.
---@field DetectionByAffiliation FAISenseAffiliationFilter
---@field AutoSuccessRangeFromLastSeenLocation number @If not an InvalidRange (which is the default), we will always be able to see the target that has already been seen if they are within this range of their last seen location.
local UAISenseConfig_Sight = {}
