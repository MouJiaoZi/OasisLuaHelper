---@meta

---@class FWeatherV1ToV2PlayerInfo
FWeatherV1ToV2PlayerInfo = {}


---@class USTWeatherV1ToV2Adaptor: UActorComponent
---@field V1ToV2Mapping ULuaMapHelper<EWeatherStatusType, UWeatherSequence>
---@field CommonBlendTime number
---@field PlayerInfos ULuaArrayHelper<FWeatherV1ToV2PlayerInfo>
local USTWeatherV1ToV2Adaptor = {}

---@param NewWeatherType EWeatherStatusType
---@param BlendTime number
function USTWeatherV1ToV2Adaptor:StartTransition(NewWeatherType, BlendTime) end

---@param PlayerKey number
---@param NewWeatherType EWeatherStatusType
---@param BlendTime number
function USTWeatherV1ToV2Adaptor:UpdatePlayerKeyWeather(PlayerKey, NewWeatherType, BlendTime) end

---@param InPlayer APlayerController
function USTWeatherV1ToV2Adaptor:OnPlayerPostLogin(InPlayer) end
