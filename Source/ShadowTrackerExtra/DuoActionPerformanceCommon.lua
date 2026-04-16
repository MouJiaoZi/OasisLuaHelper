---@meta

---@class EDuoActionPerformanceLocation
---@field Position1 number @位置1
---@field Position2 number @位置2
EDuoActionPerformanceLocation = {}


---@class FDuoActionPerformanceCommonConfig
---@field bMM boolean
---@field bMF boolean
---@field bFF boolean
---@field bFM boolean
FDuoActionPerformanceCommonConfig = {}


---@class FDuoActionPerformanceBattleConfig
---@field DuoActionPerformanceActor ADuoActionPerformance
---@field DuoActionPerformanceLocation EDuoActionPerformanceLocation
---@field bIgnoreHandCollision boolean
---@field bIgnoreFootCollision boolean
---@field CheckRadius number
---@field CheckHeight number
---@field CheckPoints number
---@field CircleCount number
---@field TerrainRoughnessThreshold number
---@field MaxInviteDistance number
FDuoActionPerformanceBattleConfig = {}


---@class FDuoActionPerformanceLobbyConfig
---@field PositionEmoteHandleMap ULuaMapHelper<EDuoActionPerformanceLocation, UBackpackEmoteHandle>
---@field DuoActionPositionLevelSequence ULevelSequence
---@field DuoActionPositionIgnoreLevelSequence ULevelSequence
---@field LobbyMultiEmoteActorClass ALobbyMultiEmoteActor
---@field LobbyAnchorActorClass AActor
---@field TeammateActorClass AActor
---@field AnimationOffset FVector
FDuoActionPerformanceLobbyConfig = {}
