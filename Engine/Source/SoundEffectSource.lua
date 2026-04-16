---@meta

---@class FSourceEffectChainEntry
---@field bBypass number
FSourceEffectChainEntry = {}


---This is here to make sure users don't mix up source and submix effects in the editor. Asset sorting, drag-n-drop, etc.
---@class USoundEffectSourcePreset: USoundEffectPreset
local USoundEffectSourcePreset = {}


---@class USoundEffectSourcePresetChain: UObject
---@field Chain ULuaArrayHelper<FSourceEffectChainEntry> @Chain of source effects to use for this sound source.
---@field bPlayEffectChainTails number @Whether to keep the source alive for the duration of the effect chain tails.
local USoundEffectSourcePresetChain = {}
