---@meta

---@class UDeathReplayMiniMapBridge: UGameMiniMapBridgeBase
local UDeathReplayMiniMapBridge = {}

---@param MapCenterRealTimeInfo FMiniMapRealTimeInfo
function UDeathReplayMiniMapBridge:UpdateMapCenterActorInfo(MapCenterRealTimeInfo) end

---@param InitInfo FWidgetItemInitInfo
function UDeathReplayMiniMapBridge:InitializeMapItemInfoPlayer(InitInfo) end

---@param MiniMapRealTimeInfo FMiniMapRealTimeInfo
function UDeathReplayMiniMapBridge:RefreshMapRealTimeInfoPlayer(MiniMapRealTimeInfo) end

---@param MiniMapRealTimeInfo FMiniMapRealTimeInfo
function UDeathReplayMiniMapBridge:RefreshMapRealTimeInfoWhiteCircle(MiniMapRealTimeInfo) end

---@param MiniMapRealTimeInfo FMiniMapRealTimeInfo
function UDeathReplayMiniMapBridge:RefreshMapRealTimeInfoBlueCircle(MiniMapRealTimeInfo) end

---@param MiniMapRealTimeInfo FMiniMapRealTimeInfo
function UDeathReplayMiniMapBridge:RefreshMapRealTimeInfoVictimPlayer(MiniMapRealTimeInfo) end
