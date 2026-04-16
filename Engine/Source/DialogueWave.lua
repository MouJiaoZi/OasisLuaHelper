---@meta

---@class FDialogueContextMapping
---@field Context FDialogueContext @The context of the dialogue.
---@field LocalizationKeyFormat string @The format string to use when generating the localization key for this context. This must be unique within the owner dialogue wave. Available format markers: * {ContextHash} - A hash generated from the speaker and target voices.
FDialogueContextMapping = {}


---@class UDialogueWave: UObject
---@field bMature number @true if this dialogue is considered to contain mature/adult content.
---@field bOverride_SubtitleOverride number
---@field SpokenText string @A localized version of the text that is actually spoken phonetically in the audio.
---@field SubtitleOverride string @A localized version of the subtitle text that should be displayed for this audio. By default this will be the same as the Spoken Text.
---@field ContextMappings ULuaArrayHelper<FDialogueContextMapping> @Provides general notes to the voice actor intended to direct their performance, as well as contextual information to the translator.
---@field LocalizationGUID FGuid
local UDialogueWave = {}
