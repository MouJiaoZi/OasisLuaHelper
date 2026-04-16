---@meta

---The random player node holds a list of sequences and parameter ranges which will be played continuously In a random order. If shuffle mode is enabled then each entry will be played once before repeating any
---@class FRandomPlayerSequenceEntry
---@field ChanceToPlay number @When not in shuffle mode, this is the chance this entry will play (normalized against all other sample chances)
---@field MinLoopCount number @Minimum number of times this entry will loop before ending
---@field MaxLoopCount number @Maximum number of times this entry will loop before ending
---@field MinPlayRate number @Minimum playrate for this entry
---@field MaxPlayRate number @Maximum playrate for this entry
---@field BlendIn FAlphaBlend @Blending properties used when this entry is blending in ontop of another entry
FRandomPlayerSequenceEntry = {}


---@class FAnimNode_RandomPlayer
---@field bShuffleMode boolean @When shuffle mode is active we will never loop a sequence beyond MaxLoopCount without visiting each sequence in turn (no repeats). Enabling this will ignore ChanceToPlay for each entry
---@field Entries ULuaArrayHelper<FRandomPlayerSequenceEntry> @List of sequences to randomly step through
FAnimNode_RandomPlayer = {}
