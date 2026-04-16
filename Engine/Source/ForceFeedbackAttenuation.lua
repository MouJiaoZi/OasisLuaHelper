---@meta

---The struct for defining the properties used when determining attenuation for a force feedback effect
---@class FForceFeedbackAttenuationSettings
FForceFeedbackAttenuationSettings = {}


---Wrapper class that can be created as an asset for force feedback attenuation properties which allows reuse of the properties for multiple attenuation components
---@class UForceFeedbackAttenuation: UObject
---@field Attenuation FForceFeedbackAttenuationSettings
local UForceFeedbackAttenuation = {}
