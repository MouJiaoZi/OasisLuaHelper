---@meta

---@class EStrategicApplyState
---@field Fight number
---@field Lobby number
---@field All number
EStrategicApplyState = {}


---@class EStrategicRunSide
---@field Client number
---@field Server number
---@field All number
EStrategicRunSide = {}


---@class UAssetRefStrategicManager: UObject, FTickableGameObject
---@field CurrentGameModeID number
---@field OnPreloadContentForURLDelegate FOnPreloadContentForURL
---@field OnCheckCacheObjectDelegate FOnCheckCacheObject
---@field OnAvatarAsyncLoadFinishedDelegate FOnAvatarAsyncLoadFinished
---@field InitStrategicClass ULuaArrayHelper<UAssetRefStrategicBase>
---@field LobbyMapName string
---@field Strategics ULuaArrayHelper<UAssetRefStrategicBase>
---@field TickableStrategics ULuaArrayHelper<UAssetRefStrategicBase>
local UAssetRefStrategicManager = {}
