---@meta

---@class FLevelLoadAndUnloadLevelConfig
---@field DisableLoadLevelVisable boolean
---@field LoadLevelList ULuaArrayHelper<string>
---@field DisableUnLoadLevelVisable boolean
---@field UnLoadLevelList ULuaArrayHelper<string>
FLevelLoadAndUnloadLevelConfig = {}


---@class ULevelLoadAndUnloadComponent: UActorComponent
---@field ConfigLevelList ULuaArrayHelper<FLevelLoadAndUnloadLevelConfig>
---@field CurrentLevelIndex number
---@field LastLevelIndex number
---@field LevelID ULuaArrayHelper<string>
local ULevelLoadAndUnloadComponent = {}

function ULevelLoadAndUnloadComponent:OnRep_CurrentLevelIndex() end

---@param LevelName string
function ULevelLoadAndUnloadComponent:LoadStreamLevel(LevelName) end

---@param LevelName string
function ULevelLoadAndUnloadComponent:UnloadStreamLevel(LevelName) end

---@param Linkage number
function ULevelLoadAndUnloadComponent:OnLoadStreamLevelCompleted(Linkage) end

---@param Linkage number
function ULevelLoadAndUnloadComponent:OnUnLoadStreamLevelCompleted(Linkage) end

---@param Index number
function ULevelLoadAndUnloadComponent:SetCurrentLevelIndex(Index) end

function ULevelLoadAndUnloadComponent:TickOBReplay() end
