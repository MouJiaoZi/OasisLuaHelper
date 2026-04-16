---@meta

---@class EShow3DTrajectory
---@field EST_OnlyWhenSelected number @Only When Selected
---@field EST_Always number @Always
---@field EST_Never number @Never
EShow3DTrajectory = {}


---Proxy structure for translation keys in 3D transform sections.
---@class FMovieScene3DLocationKeyStruct
---@field Location FVector @The key's translation value.
---@field Time number @The key's time.
FMovieScene3DLocationKeyStruct = {}


---Proxy structure for translation keys in 3D transform sections.
---@class FMovieScene3DRotationKeyStruct
---@field Rotation FRotator @The key's rotation value.
---@field Time number @The key's time.
FMovieScene3DRotationKeyStruct = {}


---Proxy structure for translation keys in 3D transform sections.
---@class FMovieScene3DScaleKeyStruct
---@field Scale FVector @The key's scale value.
---@field Time number @The key's time.
FMovieScene3DScaleKeyStruct = {}


---Proxy structure for 3D transform section key data.
---@class FMovieScene3DTransformKeyStruct
---@field Location FVector @The key's translation value.
---@field Rotation FRotator @The key's rotation value.
---@field Scale FVector @The key's scale value.
---@field Time number @The key's time.
FMovieScene3DTransformKeyStruct = {}


---@class FMovieSceneTransformMask
---@field Mask number
FMovieSceneTransformMask = {}


---A 3D transform section
---@class UMovieScene3DTransformSection: UMovieSceneSection, IKeyframeSection
---@field TransformMask FMovieSceneTransformMask
---@field ManualWeight FRichCurve @Manual weight curve
local UMovieScene3DTransformSection = {}
