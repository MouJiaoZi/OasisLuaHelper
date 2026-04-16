---@meta

---@class FForceFeedbackChannelDetails
---@field bAffectsLeftLarge number
---@field bAffectsLeftSmall number
---@field bAffectsRightLarge number
---@field bAffectsRightSmall number
---@field Curve FRuntimeFloatCurve
FForceFeedbackChannelDetails = {}


---@class FActiveForceFeedbackEffect
FActiveForceFeedbackEffect = {}


---A predefined force-feedback effect to be played on a controller
---@class UForceFeedbackEffect: UObject
---@field ChannelDetails ULuaArrayHelper<FForceFeedbackChannelDetails>
---@field Duration number @Duration of force feedback pattern in seconds.
local UForceFeedbackEffect = {}
