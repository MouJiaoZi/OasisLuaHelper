---@meta

---@class FGMCommandLine
---@field CommandName string
---@field CommandString string
FGMCommandLine = {}


---@class FGMCommandGroup
---@field GroupName string
---@field GMCommands ULuaArrayHelper<FGMCommandLine>
FGMCommandGroup = {}


---@class FGMCommandContainer
---@field GMCommands ULuaArrayHelper<FGMCommandLine>
---@field GMCommandGroups ULuaArrayHelper<FGMCommandGroup>
FGMCommandContainer = {}


---@class FPakDetails
---@field PakName string
---@field PakDate string
---@field PakSize string
---@field bExist boolean
FPakDetails = {}


---@class UGMReplicationHelper: UObject
local UGMReplicationHelper = {}

---@param GMCommandContainers ULuaArrayHelper<FGMCommandContainer>
function UGMReplicationHelper:SaveCommand(GMCommandContainers) end

---@param GMCommandContainers ULuaArrayHelper<FGMCommandContainer>
function UGMReplicationHelper:LoadCommand(GMCommandContainers) end

---@param PlayerName string
---@param Delegate FOnCOSHttpRequestCompleteBPDelegate
function UGMReplicationHelper:UploadCommand(PlayerName, Delegate) end

---@param PlayerName string
---@param Delegate FOnCOSHttpRequestCompleteBPDelegate
function UGMReplicationHelper:DownloadCommand(PlayerName, Delegate) end

---@param LocalPath string
---@param RemotePath string
---@param Delegate FOnCOSHttpRequestCompleteBPDelegate
function UGMReplicationHelper:UploadPakFile(LocalPath, RemotePath, Delegate) end

---@param LocalPath string
---@param RemotePath string
---@param Delegate FOnCOSHttpRequestCompleteBPDelegate
function UGMReplicationHelper:DownloadPakFile(LocalPath, RemotePath, Delegate) end

---@param RemotePath string
---@param LocalPath string
---@param Delegate FOnCOSHttpRequestCompleteBPDelegate
function UGMReplicationHelper:DownloadFileList(RemotePath, LocalPath, Delegate) end

---@param XmlPath string
function UGMReplicationHelper:ReadPakDetails(XmlPath) end

function UGMReplicationHelper:SelectLocalPakFiles() end

---@param FilePath string
---@return boolean
function UGMReplicationHelper:FileExists(FilePath) end

---@return boolean
function UGMReplicationHelper:IsFileUpdate() end
