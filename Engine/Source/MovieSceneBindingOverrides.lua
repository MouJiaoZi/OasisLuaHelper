---@meta

---Movie scene binding override data
---@class FMovieSceneBindingOverrideData
---@field ObjectBindingId FMovieSceneObjectBindingID @Specifies the object binding to override.
---@field Object UObject @Specifies the object to override the binding with.
---@field bOverridesDefault boolean @Specifies whether the default assignment should remain bound (false) or if this should completely override the default binding (false).
FMovieSceneBindingOverrideData = {}


---A one-to-many definition of movie scene object binding IDs to overridden objects that should be bound to that binding.
---@class UMovieSceneBindingOverrides: UObject, IMovieSceneBindingOverridesInterface
---@field BindingData ULuaArrayHelper<FMovieSceneBindingOverrideData> @The actual binding data
local UMovieSceneBindingOverrides = {}

---@param InBindingID FGuid
---@param InSequenceID FMovieSceneSequenceID
---@param InSpace EMovieSceneObjectBindingSpace
---@return FMovieSceneObjectBindingID
function UMovieSceneBindingOverrides:MakeBindingID(InBindingID, InSequenceID, InSpace) end

---@param BindingID FMovieSceneObjectBindingID
---@return string
function UMovieSceneBindingOverrides:GetGuidStr(BindingID) end
