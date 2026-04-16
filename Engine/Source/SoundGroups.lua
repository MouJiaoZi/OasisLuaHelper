---@meta

---@class ESoundGroup
---@field SOUNDGROUP_Default number @Default
---@field SOUNDGROUP_Effects number @Effects
---@field SOUNDGROUP_UI number @UI
---@field SOUNDGROUP_Music number @Music
---@field SOUNDGROUP_Voice number @Voice
---@field SOUNDGROUP_GameSoundGroup1 number
---@field SOUNDGROUP_GameSoundGroup2 number
---@field SOUNDGROUP_GameSoundGroup3 number
---@field SOUNDGROUP_GameSoundGroup4 number
---@field SOUNDGROUP_GameSoundGroup5 number
---@field SOUNDGROUP_GameSoundGroup6 number
---@field SOUNDGROUP_GameSoundGroup7 number
---@field SOUNDGROUP_GameSoundGroup8 number
---@field SOUNDGROUP_GameSoundGroup9 number
---@field SOUNDGROUP_GameSoundGroup10 number
---@field SOUNDGROUP_GameSoundGroup11 number
---@field SOUNDGROUP_GameSoundGroup12 number
---@field SOUNDGROUP_GameSoundGroup13 number
---@field SOUNDGROUP_GameSoundGroup14 number
---@field SOUNDGROUP_GameSoundGroup15 number
---@field SOUNDGROUP_GameSoundGroup16 number
---@field SOUNDGROUP_GameSoundGroup17 number
---@field SOUNDGROUP_GameSoundGroup18 number
---@field SOUNDGROUP_GameSoundGroup19 number
---@field SOUNDGROUP_GameSoundGroup20 number
ESoundGroup = {}


---@class FSoundGroup
---@field SoundGroup ESoundGroup
---@field DisplayName string
---@field bAlwaysDecompressOnLoad number
---@field DecompressedDuration number @Sound duration in seconds below which sounds are entirely expanded to PCM at load time Disregarded if bAlwaysDecompressOnLoad is true
FSoundGroup = {}


---@class USoundGroups: UObject
---@field SoundGroupProfiles ULuaArrayHelper<FSoundGroup>
local USoundGroups = {}
