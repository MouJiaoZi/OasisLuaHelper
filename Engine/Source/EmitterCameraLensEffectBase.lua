---@meta

---@class AEmitterCameraLensEffectBase: AEmitter
---@field RelativeTransform FTransform @Effect-to-camera transform to allow arbitrary placement of the particle system . Note the X component of the location will be scaled with camera fov to keep the lens effect the same apparent size.
---@field BaseFOV number @This is the assumed FOV for which the effect was authored. The code will make automatic adjustments to make it look the same at different FOVs
---@field bAllowMultipleInstances number @true if multiple instances of this emitter can exist simultaneously, false otherwise.
---@field bResetWhenRetriggered number @If bAllowMultipleInstances is true and this effect is retriggered, the particle system will be reset if this is true
---@field EmittersToTreatAsSame ULuaArrayHelper<AEmitterCameraLensEffectBase> @If an emitter class in this array is currently playing, do not play this effect. Useful for preventing multiple similar or expensive camera effects from playing simultaneously.
---@field DistFromCamera_DEPRECATED number @DEPRECATED(4.11)
local AEmitterCameraLensEffectBase = {}
