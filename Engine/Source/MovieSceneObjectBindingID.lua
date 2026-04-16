---@meta

---Enumeration specifying how a movie scene object binding ID relates to the sequence
---@class EMovieSceneObjectBindingSpace
---@field Local number @The object binding sequence ID resolves from a local sequence (ie, it may need to accumulate a parent sequence ID before it resolves correctly)
---@field Root number @The object binding sequence ID resolves from the root of the sequence
EMovieSceneObjectBindingSpace = {}


---Persistent identifier to a specific object binding within a sequence hierarchy.
---@class FMovieSceneObjectBindingID
---@field SequenceID number @Sequence ID stored as an int32 so that it can be used in the blueprint VM
---@field Space EMovieSceneObjectBindingSpace @The binding's resolution space
---@field Guid FGuid @Identifier for the object binding within the sequence
FMovieSceneObjectBindingID = {}
