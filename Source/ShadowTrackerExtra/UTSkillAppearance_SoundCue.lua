---@meta

---@class UTSkill_SoundCue_ListenType
---@field Listen_SelfOnly number
---@field Listen_Teammate number
---@field Listen_Target number
---@field Listen_AllTarget number
---@field Listen_All number
---@field Listen_ExcludeSelf number
UTSkill_SoundCue_ListenType = {}


---@class FUTSkillAppearance_SoundCue_Item
---@field ListenType UTSkill_SoundCue_ListenType
---@field bLoop boolean
---@field bNeedOverrideByAvatar boolean
FUTSkillAppearance_SoundCue_Item = {}


---@class FCurPlayingAKEvent
FCurPlayingAKEvent = {}


---播放声音
---@class UUTSkillAppearance_SoundCue: UUTSkillAction
---@field Item FUTSkillAppearance_SoundCue_Item
---@field bStopSoundWhenUnDoAction boolean
---@field bFootSound boolean
---@field PhysSoundMapForLocal ULuaMapHelper<EPhysicalSurface, UAkAudioEvent>
---@field IsPlayingCollideSound boolean
---@field PhysSoundMap ULuaMapHelper<EPhysicalSurface, UAkAudioEvent>
local UUTSkillAppearance_SoundCue = {}
