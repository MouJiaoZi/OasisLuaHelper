---@meta

---@class FAudioEQEffect
---@field FrequencyCenter0 number @Center frequency in Hz for band 0
---@field Gain0 number @Boost/cut of band 0
---@field Bandwidth0 number @Bandwidth of band 0. Region is center frequency +/- Bandwidth /2
---@field FrequencyCenter1 number @Center frequency in Hz for band 1
---@field Gain1 number @Boost/cut of band 1
---@field Bandwidth1 number @Bandwidth of band 1. Region is center frequency +/- Bandwidth /2
---@field FrequencyCenter2 number @Center frequency in Hz for band 2
---@field Gain2 number @Boost/cut of band 2
---@field Bandwidth2 number @Bandwidth of band 2. Region is center frequency +/- Bandwidth /2
---@field FrequencyCenter3 number @Center frequency in Hz for band 3
---@field Gain3 number @Boost/cut of band 3
---@field Bandwidth3 number @Bandwidth of band 3. Region is center frequency +/- Bandwidth /2
FAudioEQEffect = {}


---Elements of data for sound group volume control
---@class FSoundClassAdjuster
---@field VolumeAdjuster number
---@field PitchAdjuster number
---@field bApplyToChildren number
---@field VoiceCenterChannelVolumeAdjuster number
FSoundClassAdjuster = {}


---@class USoundMix: UObject
---@field bApplyEQ number @Whether to apply the EQ effect
---@field EQPriority number
---@field EQSettings any
---@field SoundClassEffects ULuaArrayHelper<FSoundClassAdjuster>
---@field InitialDelay number
---@field FadeInTime number
---@field Duration number
---@field FadeOutTime number
local USoundMix = {}
