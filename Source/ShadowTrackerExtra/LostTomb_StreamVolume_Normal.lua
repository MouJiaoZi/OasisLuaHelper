---@meta

---@class FStreamVolumeLevelGroup
---@field Levels ULuaArrayHelper<string>
FStreamVolumeLevelGroup = {}


---@class ALostTomb_StreamVolume_Normal: ALostTomb_StreamVolume
---@field ActiveLevels ULuaMapHelper<string, FStreamVolumeLevelGroup>
---@field ForceNoLoadStreamLevels ULuaArrayHelper<string>
---@field bGenerateByEditor boolean
local ALostTomb_StreamVolume_Normal = {}
