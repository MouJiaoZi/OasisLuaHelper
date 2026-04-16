---@meta

---DEPRECATED: Exists for backwards compatibility Indicates a reverb preset to use.
---@class ReverbPreset
---@field REVERB_Default number
---@field REVERB_Bathroom number
---@field REVERB_StoneRoom number
---@field REVERB_Auditorium number
---@field REVERB_ConcertHall number
---@field REVERB_Cave number
---@field REVERB_Hallway number
---@field REVERB_StoneCorridor number
---@field REVERB_Alley number
---@field REVERB_Forest number
---@field REVERB_City number
---@field REVERB_Mountains number
---@field REVERB_Quarry number
---@field REVERB_Plain number
---@field REVERB_ParkingLot number
---@field REVERB_SewerPipe number
---@field REVERB_Underwater number
---@field REVERB_SmallRoom number
---@field REVERB_MediumRoom number
---@field REVERB_LargeRoom number
---@field REVERB_MediumHall number
---@field REVERB_LargeHall number
---@field REVERB_Plate number
---@field REVERB_MAX number
ReverbPreset = {}


---Struct encapsulating settings for reverb effects.
---@class FReverbSettings
---@field bApplyReverb number
---@field ReverbType_DEPRECATED ReverbPreset @The reverb preset to employ.
---@field Volume number @Volume level of the reverb affect.
---@field FadeTime number @Time to fade from the current reverb settings into this setting, in seconds.
FReverbSettings = {}


---Struct encapsulating settings for interior areas.
---@class FInteriorSettings
---@field bIsWorldSettings number
---@field ExteriorVolume number
---@field ExteriorTime number
---@field ExteriorLPF number
---@field ExteriorLPFTime number
---@field InteriorVolume number
---@field InteriorTime number
---@field InteriorLPF number
---@field InteriorLPFTime number
FInteriorSettings = {}


---@class AAudioVolume: AVolume
---@field Priority number @Priority of this volume. In the case of overlapping volumes the one with the highest priority is chosen. The order is undefined if two or more overlapping volumes have the same priority.
---@field bEnabled number @whether this volume is currently enabled and able to affect sounds
---@field Settings FReverbSettings @Reverb settings to use for this volume.
---@field AmbientZoneSettings FInteriorSettings @Interior settings used for this volume
local AAudioVolume = {}

---@param NewPriority number
function AAudioVolume:SetPriority(NewPriority) end

---@param bNewEnabled boolean
function AAudioVolume:SetEnabled(bNewEnabled) end

---@param NewReverbSettings FReverbSettings
function AAudioVolume:SetReverbSettings(NewReverbSettings) end

---@param NewInteriorSettings FInteriorSettings
function AAudioVolume:SetInteriorSettings(NewInteriorSettings) end

function AAudioVolume:OnRep_bEnabled() end
