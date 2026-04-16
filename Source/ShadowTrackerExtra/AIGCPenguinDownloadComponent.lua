---@meta

---@class UAIGCPenguinDownloadComponent: UActorComponent
---@field PAKIndexPath string
---@field bAutomaticDownload boolean
---@field bEnableErrorReport boolean
local UAIGCPenguinDownloadComponent = {}

---检索指定目录下的PAK文件
---@param SearchDir string
---@param OutPakFiles ULuaArrayHelper<string>
function UAIGCPenguinDownloadComponent:FindAllPakFiles(SearchDir, OutPakFiles) end

---检索指定目录下的PAK文件
---@param SearchDir string
---@param OutPakFiles ULuaArrayHelper<string>
function UAIGCPenguinDownloadComponent:FindAllTmpFiles(SearchDir, OutPakFiles) end

---保存PAK索引文件
---@param DataMap ULuaMapHelper<number, number>
function UAIGCPenguinDownloadComponent:SaveMapToFile(DataMap) end

---读取PAK索引文件
---@param OutDataMap ULuaMapHelper<number, number>
function UAIGCPenguinDownloadComponent:LoadMapFromFile(OutDataMap) end

---获取Saved文件夹路径
---@return string
function UAIGCPenguinDownloadComponent:GetPlatformSavedDir() end

---@param FilePath string
---@return boolean
function UAIGCPenguinDownloadComponent:EnsureDirectoryExists(FilePath) end

function UAIGCPenguinDownloadComponent:SetErrorReportVar() end
