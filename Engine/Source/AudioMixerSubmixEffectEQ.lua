---@meta

---@class FSubmixEffectEQBand
---@field Frequency number
---@field Bandwidth number
---@field GainDb number
---@field bEnabled number
FSubmixEffectEQBand = {}


---@class FSubmixEffectSubmixEQSettings
---@field EQBands ULuaArrayHelper<FSubmixEffectEQBand>
FSubmixEffectSubmixEQSettings = {}


---@class USubmixEffectSubmixEQPreset: USoundEffectSubmixPreset
---@field Settings FSubmixEffectSubmixEQSettings
local USubmixEffectSubmixEQPreset = {}

---@param InSettings FSubmixEffectSubmixEQSettings
function USubmixEffectSubmixEQPreset:SetSettings(InSettings) end
