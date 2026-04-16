---@meta

---@class FSoundSubmixSendInfo
---@field SendLevel number
FSoundSubmixSendInfo = {}


---@class USoundSubmix: UObject
---@field ChildSubmixes ULuaArrayHelper<USoundSubmix>
---@field SubmixEffectChain ULuaArrayHelper<USoundEffectSubmixPreset> @EdGraph based representation of the SoundSubmix
local USoundSubmix = {}
