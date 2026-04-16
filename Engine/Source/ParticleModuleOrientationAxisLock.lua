---@meta

---@class EParticleAxisLock
---@field EPAL_NONE number @No locking to an axis...
---@field EPAL_X number @Lock the sprite facing towards the positive X-axis
---@field EPAL_Y number @Lock the sprite facing towards the positive Y-axis
---@field EPAL_Z number @Lock the sprite facing towards the positive Z-axis
---@field EPAL_NEGATIVE_X number @Lock the sprite facing towards the negative X-axis
---@field EPAL_NEGATIVE_Y number @Lock the sprite facing towards the negative Y-axis
---@field EPAL_NEGATIVE_Z number @Lock the sprite facing towards the negative Z-axis
---@field EPAL_ROTATE_X number @Lock the sprite rotation on the X-axis
---@field EPAL_ROTATE_Y number @Lock the sprite rotation on the Y-axis
---@field EPAL_ROTATE_Z number @Lock the sprite rotation on the Z-axis
---@field EPAL_MAX number
EParticleAxisLock = {}


---@class UParticleModuleOrientationAxisLock: UParticleModuleOrientationBase
---@field LockAxisFlags EParticleAxisLock @The lock axis flag setting. Can be one of the following: EPAL_NONE			No locking to an axis. EPAL_X				Lock the sprite facing towards +X. EPAL_Y				Lock the sprite facing towards +Y. EPAL_Z				Lock the sprite facing towards +Z. EPAL_NEGATIVE_X		Lock the sprite facing towards -X. EPAL_NEGATIVE_Y		Lock the sprite facing towards -Y. EPAL_NEGATIVE_Z		Lock the sprite facing towards -Z. EPAL_ROTATE_X		Lock the sprite rotation on the X-axis. EPAL_ROTATE_Y		Lock the sprite rotation on the Y-axis. EPAL_ROTATE_Z		Lock the sprite rotation on the Z-axis.
local UParticleModuleOrientationAxisLock = {}
