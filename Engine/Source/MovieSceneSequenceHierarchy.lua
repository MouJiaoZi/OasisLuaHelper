---@meta

---Sub sequence data that is stored within an evaluation template as a backreference to the originating sequence, and section
---@class FMovieSceneSubSequenceData
---@field RootToSequenceTransform FMovieSceneSequenceTransform @Transform that transforms a given time from the sequences outer space, to its authored space.
---@field SourceSequenceSignature FGuid @Cached signature of the evaluation template
---@field DeterministicSequenceID FMovieSceneSequenceID @This sequence's deterministic sequence ID. Used in editor to reduce the risk of collisions on recompilation
---@field PreRollRange FFloatRange @The sequence preroll range considering the start offset
---@field PostRollRange FFloatRange @The sequence postroll range considering the start offset
---@field HierarchicalBias number @The accumulated hierarchical bias of this sequence. Higher bias will take precedence
FMovieSceneSubSequenceData = {}


---Simple structure specifying parent and child sequence IDs for any given sequences
---@class FMovieSceneSequenceHierarchyNode
---@field ParentID FMovieSceneSequenceID @Movie scene sequence ID of this node's parent sequence
---@field Children ULuaArrayHelper<FMovieSceneSequenceID> @Array of child sequences contained within this sequence
FMovieSceneSequenceHierarchyNode = {}


---Structure that stores hierarchical information pertaining to all sequences contained within a master sequence
---@class FMovieSceneSequenceHierarchy
---@field SubSequences ULuaMapHelper<number, FMovieSceneSubSequenceData> @Map of all (recursive) sub sequences found in this template, keyed on sequence ID
---@field Hierarchy ULuaMapHelper<number, FMovieSceneSequenceHierarchyNode> @Structural information describing the structure of the sequence
FMovieSceneSequenceHierarchy = {}
