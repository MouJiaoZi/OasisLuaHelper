---@meta

---@class UGMDataSource_SyncGameInfo: UGMDataSource
---@field IDIPDynamicBlocks ULuaArrayHelper<FIDIPDynamicBlock>
---@field DynamicTriggerConfigs ULuaArrayHelper<FDynamicTriggerConfig>
---@field AIDataAssetClassPath string
---@field IDIP_LevelDirectorTriggerConfigs ULuaArrayHelper<FIDIP_LevelDirectorTriggerConfig>
---@field AsianGameTrackPathId number
---@field ItemClassPath string
---@field ItemTableName string
---@field ItemTypeParam string
---@field ItemSubTypeParam string
---@field VehicleClassPath string
---@field VehicleTableName string
---@field VehicleTypeParam string
---@field VehicleSubTypeParam string
---@field PickupBoxConfigClassPath string
---@field PickupBoxConfigDataTableName string
---@field WeatherName string
---@field CurrentTime number
---@field AirdropId number
---@field MapId number
---@field GameID number
---@field IDIPDynamicBlocks_Save ULuaArrayHelper<FIDIPDynamicBlock>
---@field IDIP_LevelDirectorTriggerConfigs_Save ULuaArrayHelper<FIDIP_LevelDirectorTriggerConfig>
---@field IDIP_ItemAttributeValue ULuaMapHelper<number, FIDIP_ItemAttributeValue>
local UGMDataSource_SyncGameInfo = {}

---@return boolean
function UGMDataSource_SyncGameInfo:IsAsianGameTrackPathIdValid() end

---@param GameModeName string
---@return string
function UGMDataSource_SyncGameInfo:SaveDSGameInfoToLocal(GameModeName) end
