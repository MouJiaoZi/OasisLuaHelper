---@meta

---天气回放组件，用于录制"WeatherSequenceController"上的复制变量，wexuanhuang
---@class UWeatherSequenceReplayComponent: UActorComponent
---@field ReplicatedPlaybacksForReplay ULuaArrayHelper<FWeatherSequencePlayback>
local UWeatherSequenceReplayComponent = {}

---@param InReplicatedPlaybacksForReplay ULuaArrayHelper<FWeatherSequencePlayback>
function UWeatherSequenceReplayComponent:SetReplicatedPlaybacksForReplay(InReplicatedPlaybacksForReplay) end

function UWeatherSequenceReplayComponent:OnRep_ReplicatedPlaybacksForReplay() end
