---@meta

---@class AUGCGamePartManager: AActor
---@field ActiveGameParts ULuaArrayHelper<string>
---@field QueuedGameParts ULuaMapHelper<string, UUGCGamePartConfig>
---@field LoadedGameParts ULuaMapHelper<string, UUGCGamePartConfig>
---@field GamePartGlobalActors ULuaMapHelper<string, AActor>
---@field ProcessedPCs ULuaSetHelper<APlayerController>
---@field GamePartDirectories ULuaArrayHelper<string>
local AUGCGamePartManager = {}

---@param Path FSoftObjectPath
---@param DA UUGCGameModeGeneralDataAsset
function AUGCGamePartManager:LoadGamePartsFromDA(Path, DA) end

---@param GamePartNames ULuaArrayHelper<string>
function AUGCGamePartManager:LoadGamePartFromNames(GamePartNames) end

---@return boolean
function AUGCGamePartManager:IsDALoaded() end

---@param GamePartName string
---@return boolean
function AUGCGamePartManager:IsGamePartQueued(GamePartName) end

---@param GamePartName string
---@return boolean
function AUGCGamePartManager:IsGamePartLoaded(GamePartName) end

---@param GamePartName string
---@return boolean
function AUGCGamePartManager:IsGamePartPending(GamePartName) end

function AUGCGamePartManager:GetLoadedGameParts() end

function AUGCGamePartManager:OnRep_ActiveGameParts() end
