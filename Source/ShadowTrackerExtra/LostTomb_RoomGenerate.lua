---@meta

---@class FLostTomb_RoomData
---@field Location FVector
---@field OffsetYaw number
---@field Group number
FLostTomb_RoomData = {}


---@class FLostTomb_RoomLevel
---@field CacheIndex number
---@field LevelName ULuaArrayHelper<string>
---@field OffsetYaw number
---@field OldOrigin FVector
FLostTomb_RoomLevel = {}


---@class FLostTomb_GroupConfig
---@field GroupData ULuaArrayHelper<FLostTomb_RoomLevel>
FLostTomb_GroupConfig = {}


---@class FLostTomb_WeatherData
---@field WeatherSequence UWeatherSequence
---@field BlendParameters FBlendWeatherParameters
---@field bCanOverrideSamePriority boolean
---@field Priority number
FLostTomb_WeatherData = {}


---@class FLostTomb_BGMData
FLostTomb_BGMData = {}


---@class FLostTomb_LightingData
---@field bUsePointLight boolean
---@field bIndirectLightingCache boolean
FLostTomb_LightingData = {}


---@class FLostTomb_ModeAudioConfig
FLostTomb_ModeAudioConfig = {}


---@class FLostTomb_MiniMapConfig
---@field MiniMapTexture ULuaArrayHelper<UTexture>
---@field MapCenter ULuaArrayHelper<FVector>
---@field MiniMapSize ULuaArrayHelper<number>
---@field MiniMapRoomUISize number
---@field MiniMapExtraTexture ULuaArrayHelper<UTexture>
FLostTomb_MiniMapConfig = {}


---@class ULostTomb_RoomConfig: UDataAsset
---@field WeatherData ULuaArrayHelper<FLostTomb_WeatherData>
---@field BgmData ULuaArrayHelper<FLostTomb_BGMData>
---@field LightingData ULuaArrayHelper<FLostTomb_LightingData>
---@field ModeAudioConfig FLostTomb_ModeAudioConfig
---@field NeedLoadLevel ULuaArrayHelper<string>
---@field IgnoreWarningLevel ULuaArrayHelper<string>
local ULostTomb_RoomConfig = {}
