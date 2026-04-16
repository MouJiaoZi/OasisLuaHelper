---@meta

---@class UGameMiniMapBridgeBase: UCommMiniMapBridge
---@field StandardPointActorRef AMiniMapStandardPoint
local UGameMiniMapBridgeBase = {}

---@param OwnerController ASTExtraPlayerController
---@return number
function UGameMiniMapBridgeBase:GetMiniMapAdaptionSizeBlueprint(OwnerController) end

function UGameMiniMapBridgeBase:OnMiniMapResizeBlueprint() end

---@param MiniMapStandardPoint FMiniMapStandardPointInfo
---@return boolean
function UGameMiniMapBridgeBase:GetMapStandardPointBlueprint(MiniMapStandardPoint) end

---@param LevelName string
---@return number
function UGameMiniMapBridgeBase:GetMiniMapStandardScaleBlueprint(LevelName) end

---@param LevelName string
---@return number
function UGameMiniMapBridgeBase:GetMiniMapMaxScaleBlueprint(LevelName) end

---@return boolean
function UGameMiniMapBridgeBase:HasStandardPointInitialized() end
