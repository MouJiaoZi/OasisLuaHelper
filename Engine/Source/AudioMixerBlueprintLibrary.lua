---@meta

---@class UAudioMixerBlueprintLibrary: UBlueprintFunctionLibrary
local UAudioMixerBlueprintLibrary = {}

---Adds a submix effect preset to the master submix.
---@param WorldContextObject UObject
---@param SubmixEffectPreset USoundEffectSubmixPreset
function UAudioMixerBlueprintLibrary:AddMasterSubmixEffect(WorldContextObject, SubmixEffectPreset) end

---Removes a submix effect preset from the master submix.
---@param WorldContextObject UObject
---@param SubmixEffectPreset USoundEffectSubmixPreset
function UAudioMixerBlueprintLibrary:RemoveMasterSubmixEffect(WorldContextObject, SubmixEffectPreset) end

---Clears all master submix effects.
---@param WorldContextObject UObject
function UAudioMixerBlueprintLibrary:ClearMasterSubmixEffects(WorldContextObject) end

---Adds source effect entry to preset chain. Only effects the instance of the preset chain
---@param WorldContextObject UObject
---@param PresetChain USoundEffectSourcePresetChain
---@param Entry FSourceEffectChainEntry
function UAudioMixerBlueprintLibrary:AddSourceEffectToPresetChain(WorldContextObject, PresetChain, Entry) end

---Adds source effect entry to preset chain. Only affects the instance of preset chain.
---@param WorldContextObject UObject
---@param PresetChain USoundEffectSourcePresetChain
---@param EntryIndex number
function UAudioMixerBlueprintLibrary:RemoveSourceEffectFromPresetChain(WorldContextObject, PresetChain, EntryIndex) end

---Set whether or not to bypass the effect at the source effect chain index.
---@param WorldContextObject UObject
---@param PresetChain USoundEffectSourcePresetChain
---@param EntryIndex number
---@param bBypassed boolean
function UAudioMixerBlueprintLibrary:SetBypassSourceEffectChainEntry(WorldContextObject, PresetChain, EntryIndex, bBypassed) end

---Returns the number of effect chain entries in the given source effect chain.
---@param WorldContextObject UObject
---@param PresetChain USoundEffectSourcePresetChain
---@return number
function UAudioMixerBlueprintLibrary:GetNumberOfEntriesInSourceEffectChain(WorldContextObject, PresetChain) end
