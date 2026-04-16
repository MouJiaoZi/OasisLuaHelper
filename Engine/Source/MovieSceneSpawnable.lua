---@meta

---@class ESpawnOwnership
---@field InnerSequence number @The object's lifetime is managed by the sequence that spawned it
---@field MasterSequence number @The object's lifetime is managed by the outermost sequence
---@field External number @Once spawned, the object's lifetime is managed externally.
ESpawnOwnership = {}


---MovieSceneSpawnable describes an object that can be spawned for this MovieScene
---@class FMovieSceneSpawnable
FMovieSceneSpawnable = {}
