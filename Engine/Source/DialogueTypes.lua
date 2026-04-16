---@meta

---@class EGrammaticalGender
---@field Neuter number @Neuter
---@field Masculine number @Masculine
---@field Feminine number @Feminine
---@field Mixed number @Mixed
EGrammaticalGender = {}


---@class EGrammaticalNumber
---@field Singular number @Singular
---@field Plural number @Plural
EGrammaticalNumber = {}


---@class FDialogueContext
---@field Targets ULuaArrayHelper<UDialogueVoice> @The people being spoken to.
FDialogueContext = {}


---@class FDialogueWaveParameter
---@field Context FDialogueContext @The context to use for the dialogue wave.
FDialogueWaveParameter = {}
