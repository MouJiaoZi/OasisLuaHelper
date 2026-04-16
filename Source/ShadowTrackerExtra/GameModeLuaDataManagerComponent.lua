---@meta

---ͨôLuaЭݶԽݴLuaȡݡfeishen, 20210727
---@class UGameModeLuaDataManagerComponent: UGameModeBaseComponent, ILuaInterface
---@field IDIPPlaneClassPath string
---@field IDIPRandomPlaneClassPaths ULuaMapHelper<number, string>
local UGameModeLuaDataManagerComponent = {}

---@return string
function UGameModeLuaDataManagerComponent:GetLuaModule() end

---@return string
function UGameModeLuaDataManagerComponent:LuaGetIDIPPlaneClassPath() end

---@return string
function UGameModeLuaDataManagerComponent:GetIDIPPlaneClassPath() end

---@param Path string
function UGameModeLuaDataManagerComponent:SetIDIPPlaneClassPath(Path) end

function UGameModeLuaDataManagerComponent:GetIDIPRandomPlaneClassPaths() end

---@param RandomPathMap ULuaMapHelper<number, string>
function UGameModeLuaDataManagerComponent:SetIDIPRandomPlaneClassPaths(RandomPathMap) end

---@return boolean
function UGameModeLuaDataManagerComponent:CheckEnableUseRandomPlanePath() end

---@return boolean
function UGameModeLuaDataManagerComponent:CheckEnableUseItemVehicleOffset() end

---@param SpotDefaultTag string
---@param SpotGenerateLoc FVector
---@return FVector
function UGameModeLuaDataManagerComponent:GetItemVehicleSpawnOffset(SpotDefaultTag, SpotGenerateLoc) end
