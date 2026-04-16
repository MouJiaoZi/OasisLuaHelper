---@meta

---EmitterDynamicParameterValue Enumeration indicating the way a dynamic parameter should be set.
---@class EEmitterDynamicParameterValue
---@field EDPV_UserSet number @UserSet - use the user set values in the distribution (the default)
---@field EDPV_AutoSet number @AutoSet - ignore values set in the distribution, another module will handle this data
---@field EDPV_VelocityX number @VelocityX - pass the particle velocity along the X-axis thru
---@field EDPV_VelocityY number @VelocityY - pass the particle velocity along the Y-axis thru
---@field EDPV_VelocityZ number @VelocityZ - pass the particle velocity along the Z-axis thru
---@field EDPV_VelocityMag number @VelocityMag - pass the particle velocity magnitude thru
---@field EDPV_MAX number
EEmitterDynamicParameterValue = {}


---Helper structure for displaying the parameter.
---@class FEmitterDynamicParameter
---@field ParamName string @The parameter name - from the material DynamicParameter expression. READ-ONLY
---@field bUseEmitterTime number @If true, use the EmitterTime to retrieve the value, otherwise use Particle RelativeTime.
---@field bSpawnTimeOnly number @If true, only set the value at spawn time of the particle, otherwise update each frame.
---@field ValueMethod EEmitterDynamicParameterValue @Where to get the parameter value from.
---@field bScaleVelocityByParamValue number @If true, scale the velocity value selected in ValueMethod by the evaluated ParamValue.
---@field ParamValue any @The distriubtion for the parameter value.
FEmitterDynamicParameter = {}


---@class UParticleModuleParameterDynamic: UParticleModuleParameterBase
---@field DynamicParams ULuaArrayHelper<FEmitterDynamicParameter> @The dynamic parameters this module uses.
---@field UpdateFlags number @Flags for optimizing update
---@field bUsesVelocity number
local UParticleModuleParameterDynamic = {}
