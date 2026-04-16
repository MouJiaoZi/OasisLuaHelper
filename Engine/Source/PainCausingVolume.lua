---@meta

---Volume that causes damage over time to any Actor that overlaps its collision.
---@class APainCausingVolume: APhysicsVolume
---@field bPainCausing number @Whether volume currently causes damage.
---@field DamagePerSec number @Damage done per second to actors in this volume when bPainCausing=true
---@field DamageType UDamageType @Type of damage done
---@field PainInterval number @If pain causing, time between damage applications.
---@field bEntryPain number @if bPainCausing, cause pain when something enters the volume in addition to damage each second
---@field BACKUP_bPainCausing number @Checkpointed bPainCausing value
local APainCausingVolume = {}
