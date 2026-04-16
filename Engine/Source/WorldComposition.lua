---@meta

---@class FWorldTileExtraInfo
---@field ExpectedQualityInfo FExpectedQuality
FWorldTileExtraInfo = {}


---@class FLODStealConfig
---@field StealerTileShortName string
---@field TargetTileShortName string
FLODStealConfig = {}


---WorldComposition represents world structure: - Holds list of all level packages participating in this world and theirs base parameters (bounding boxes, offset from origin) - Holds list of streaming level objects to stream in and out based on distance from current view point - Handles properly levels repositioning during level loading and saving
---@class UWorldComposition: UObject
---@field Package2WorldTileExtraInfo ULuaMapHelper<string, FWorldTileExtraInfo>
---@field LODStealConfigs ULuaArrayHelper<FLODStealConfig>
---@field TilesStreaming ULuaArrayHelper<ULevelStreaming>
---@field TilesStreamingTimeThreshold number
---@field bLoadAllTilesDuringCinematic boolean
---@field bRebaseOriginIn3DSpace boolean
---@field RebaseOriginDistance number
---@field TileBoundsVerifyScale number
---@field bFlushPool boolean
---@field ServerExcludedLevels ULuaArrayHelper<string>
---@field ClientExcludedLevels ULuaArrayHelper<string>
---@field UGCPIEMapBlackList ULuaArrayHelper<string>
---@field UGCWhiteListSubLevelPaths ULuaArrayHelper<string>
---@field DeviceExcludedLevels ULuaArrayHelper<string>
---@field DynamicSubLevelPaths ULuaArrayHelper<string>
---@field BlackLevelPaths ULuaArrayHelper<string>
---@field SpecifiedBuildingLevels ULuaArrayHelper<string>
---@field ClientLoadRadiusFactor number
local UWorldComposition = {}

---@return boolean
function UWorldComposition:CheckBisNeedSavedLevelToFileInServer() end
