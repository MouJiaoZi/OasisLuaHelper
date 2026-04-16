---@meta

---@class FMiniMapPlayerCacheInfo
---@field MapCenterToPlayer FVector2D
---@field PlayerCoord FVector2D
FMiniMapPlayerCacheInfo = {}


---@class UGameMiniMapBridge: UGameMiniMapBridgeBase
---@field PlayerLocCache FVector
---@field bHasFinishInitBindings boolean
local UGameMiniMapBridge = {}

---@param MapCenterRealTimeInfo FMiniMapRealTimeInfo
function UGameMiniMapBridge:UpdateMapCenterActorInfo(MapCenterRealTimeInfo) end

---@param PlayerController ASTExtraPlayerController
function UGameMiniMapBridge:OnMiniMapInitializedBlueprint(PlayerController) end

---@param InitInfo FWidgetItemInitInfo
function UGameMiniMapBridge:InitializeMapItemInfoPlayer(InitInfo) end

---@param MiniMapRealTimeInfo FMiniMapRealTimeInfo
function UGameMiniMapBridge:RefreshMapRealTimeInfoPlayer(MiniMapRealTimeInfo) end

---@param MiniMapRealTimeInfo FMiniMapRealTimeInfo
function UGameMiniMapBridge:RefreshMapRealTimeInfoLastVehicle(MiniMapRealTimeInfo) end

---@param MiniMapRealTimeInfo FMiniMapRealTimeInfo
function UGameMiniMapBridge:RefreshMapRealTimeInfoSpectatedPlayer(MiniMapRealTimeInfo) end

---@param MiniMapRealTimeInfo FMiniMapRealTimeInfo
function UGameMiniMapBridge:RefreshMapRealTimeInfoWhiteCircle(MiniMapRealTimeInfo) end

---@param MiniMapRealTimeInfo FMiniMapRealTimeInfo
function UGameMiniMapBridge:RefreshMapRealTimeInfoBlueCircle(MiniMapRealTimeInfo) end

---@param MiniMapRealTimeInfo FMiniMapRealTimeInfo
function UGameMiniMapBridge:RefreshMapRealTimeInfoAirLine(MiniMapRealTimeInfo) end

---@param MiniMapRealTimeInfo FMiniMapRealTimeInfo
function UGameMiniMapBridge:RefreshMapRealTimeInfoAirPlane(MiniMapRealTimeInfo) end

---@param MarkIndex number
function UGameMiniMapBridge:OnPlayerMarkerChanged(MarkIndex) end

---@return number
function UGameMiniMapBridge:GetPlayerIndex() end

function UGameMiniMapBridge:OnGameReconnection() end
