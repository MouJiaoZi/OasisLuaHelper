---@meta

---Base Proxy structure for vector section key data.
---@class FMovieSceneVectorKeyStructBase
---@field Time number @The key's time.
FMovieSceneVectorKeyStructBase = {}


---Proxy structure for 2D vector section key data.
---@class FMovieSceneVector2DKeyStruct
---@field Vector FVector2D @They key's vector value.
FMovieSceneVector2DKeyStruct = {}


---Proxy structure for vector section key data.
---@class FMovieSceneVectorKeyStruct
---@field Vector FVector @They key's vector value.
FMovieSceneVectorKeyStruct = {}


---Proxy structure for vector4 section key data.
---@class FMovieSceneVector4KeyStruct
---@field Vector FVector4 @They key's vector value.
FMovieSceneVector4KeyStruct = {}


---A vector section.
---@class UMovieSceneVectorSection: UMovieSceneSection, IKeyframeSection
---@field ChannelsUsed number @How many curves are actually used
local UMovieSceneVectorSection = {}
