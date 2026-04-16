---@meta

---Movie scene blend type enumeration
---@class EMovieSceneBlendType
---@field Absolute number @Blends all other weighted values together as an average of the total weight
---@field Additive number @Applies this value as a sum total of all other additives
---@field Relative number @Applies this value as a sum total of all other additives and the initial value before the animation
EMovieSceneBlendType = {}


---Optional blend type structure
---@class FOptionalMovieSceneBlendType
---@field BlendType EMovieSceneBlendType @The actual blend type
---@field bIsValid boolean @Boolean indicating whether BlendType is valid
FOptionalMovieSceneBlendType = {}
