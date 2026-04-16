---@meta

---@class FSectionKeyProj
---@field Section string
---@field Key string
---@field value number
---@field result string
FSectionKeyProj = {}


---@class UGCMapInfoLib: UBlueprintFunctionLibrary
local UGCMapInfoLib = {}

---@return string
function UGCMapInfoLib:GetMapImagePath() end

---@param SectionKeyList ULuaArrayHelper<FSectionKeyProj>
function UGCMapInfoLib:GetProjInt(SectionKeyList) end

---@param SectionKeyList ULuaArrayHelper<FSectionKeyProj>
function UGCMapInfoLib:GetProjString(SectionKeyList) end

---@param InContentPath string
---@param SectionKeyList ULuaArrayHelper<FSectionKeyProj>
function UGCMapInfoLib:GetProjStringByContentPath(InContentPath, SectionKeyList) end

---@param InStartSearchPath string
---@param InDirectoryName string
---@param bRecursive boolean
function UGCMapInfoLib:FindDirectoriesByDirectoryName(InStartSearchPath, InDirectoryName, bRecursive) end

---@param InFilePath string
---@return boolean
function UGCMapInfoLib:IsFileExists(InFilePath) end

function UGCMapInfoLib:GetUGCProjectAssetFolderPaths() end

---@return string
function UGCMapInfoLib:GetUGCVideoSourcePath() end

---@param InSubWorldId string
---@param InMountId string
function UGCMapInfoLib:AddSubWorldInfo(InSubWorldId, InMountId) end

---@param InSubWorldId string
---@param InMountId string
function UGCMapInfoLib:RemoveSubWorldInfo(InSubWorldId, InMountId) end

function UGCMapInfoLib:GetSubWorlds() end

---@param InSubWorldId string
---@param OutMountId string
---@return boolean
function UGCMapInfoLib:GetSubWorldMountId(InSubWorldId, OutMountId) end

---@return number
function UGCMapInfoLib:GetPIEDSPort() end
