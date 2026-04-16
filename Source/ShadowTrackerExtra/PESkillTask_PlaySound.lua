---@meta

---@class EPSoundPlayType
---@field EPSoundPlayType_All number @模拟端和主控端均播放
---@field EPSoundPlayType_Autonomous number @仅主控端播放
---@field EPSoundPlayType_Simulation number @仅模拟端播放
EPSoundPlayType = {}


---蓄力跳转,仅主角可用，非主控端的不可用
---@class UPESkillTask_PlaySound: UPESkillTaskPeriod
---@field SoundPlayType EPSoundPlayType
---@field SpawnTarget EPESkillSpawnTargetType
local UPESkillTask_PlaySound = {}
