---@meta

---@class EMobileCSMQuality
---@field NoFiltering number
---@field PCF_1x1 number @1x1 PCF
---@field PCF_2x2 number @2x2 PCF
EMobileCSMQuality = {}


---@class FMaterialQualityOverrides
---@field bEnableOverride boolean
---@field bForceFullyRough boolean
---@field bForceNonMetal boolean
---@field bForceDisableLMDirectionality boolean
---@field bForceLQReflections boolean
---@field MobileCSMQuality EMobileCSMQuality
---@field MobilePointLightShadowQuality EMobileCSMQuality
---@field MobilePhotonShadowQuality EMobileCSMQuality @#if WITH_PHOTON_SHADOW
FMaterialQualityOverrides = {}


---@class UShaderPlatformQualitySettings: UObject
local UShaderPlatformQualitySettings = {}
