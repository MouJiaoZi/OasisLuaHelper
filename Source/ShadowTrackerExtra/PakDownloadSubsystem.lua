---@meta

---Pak类型枚举
---@class EPakResourceType
---@field Default number
---@field UGCM number
---@field Common number
EPakResourceType = {}


---@class EODPakCheckResult
---@field Success number
---@field Missing number
---@field SizeMismatch number
EODPakCheckResult = {}


---子下载Pak信息结构
---@class FSubDownloadPakReference
---@field PakType EPakResourceType
---@field PakID number
FSubDownloadPakReference = {}


---Common类型Pak信息结构
---@class FCommonPakInfo
---@field PakSize number
---@field OldPakName string
---@field NewPakName string
FCommonPakInfo = {}


---Default/UGCM类型Pak信息结构
---@class FDefaultPakInfo
---@field PakSize number
---@field AvatarDownloadPriority number
---@field RelatedAvatars ULuaArrayHelper<number>
---@field SubDownloadAvatars ULuaArrayHelper<FSubDownloadPakReference>
---@field OldPakName string
---@field NewPakName string
FDefaultPakInfo = {}


---@class FDefaultPakMap
---@field Map ULuaMapHelper<number, FDefaultPakInfo>
FDefaultPakMap = {}


---@class FItemToPakIDMap
---@field Map ULuaMapHelper<number, number>
FItemToPakIDMap = {}


---@class FCommonPakMap
---@field Map ULuaMapHelper<number, FCommonPakInfo>
FCommonPakMap = {}


---资源下载索引数据类
---@class UPakDownloadSubsystem: UGameInstanceSubsystem
---@field PakInfoMap ULuaMapHelper<EPakResourceType, FDefaultPakMap>
---@field ItemIndexInfoMap ULuaMapHelper<EPakResourceType, FItemToPakIDMap>
---@field CommonPakMap FCommonPakMap
---@field ODPakPath string
local UPakDownloadSubsystem = {}

---@param IndexID number
---@param PakType EPakResourceType
---@return string
function UPakDownloadSubsystem:Static_GetPakName(IndexID, PakType) end

---@param IndexID number
---@param PakType EPakResourceType
---@return boolean
function UPakDownloadSubsystem:Static_IsResSplit(IndexID, PakType) end

---@param IndexID number
---@param PakType EPakResourceType
---@return boolean
function UPakDownloadSubsystem:Static_IsResReady(IndexID, PakType) end

---@param IndexID number
---@param PakType EPakResourceType
---@return number
function UPakDownloadSubsystem:IndexIDToPakID(IndexID, PakType) end

---@param IndexID number
---@param PakType EPakResourceType
---@param bOldPakName boolean
---@return string
function UPakDownloadSubsystem:GetPakName(IndexID, PakType, bOldPakName) end

---@param PakID number
---@param PakType EPakResourceType
---@param bOldPakName boolean
---@return string
function UPakDownloadSubsystem:GetPakNameByPakID(PakID, PakType, bOldPakName) end

---@param IndexOrPakID number
---@param PakType EPakResourceType
---@param bUsePakID boolean
---@return boolean
function UPakDownloadSubsystem:IsResSplit(IndexOrPakID, PakType, bUsePakID) end

---@param IndexOrPakID number
---@param PakType EPakResourceType
---@param bUsePakID boolean
---@return boolean
function UPakDownloadSubsystem:IsResReady(IndexOrPakID, PakType, bUsePakID) end

---@param PakName string
---@return string
function UPakDownloadSubsystem:GetFullODPakPath(PakName) end

---@param InPakInfo ULuaMapHelper<EPakResourceType, FDefaultPakMap>
---@param InItemIndexInfo ULuaMapHelper<EPakResourceType, FItemToPakIDMap>
---@param InCommonPakMap FCommonPakMap
---@return boolean
function UPakDownloadSubsystem:LoadPakInfoFromLua(InPakInfo, InItemIndexInfo, InCommonPakMap) end

---@param PakType EPakResourceType
---@return boolean
function UPakDownloadSubsystem:AddPakType(PakType) end

---@param PakID number
---@param PakType EPakResourceType
---@param InPakInfo FDefaultPakInfo
---@param bOverride boolean
---@return boolean
function UPakDownloadSubsystem:AddPakInfo(PakID, PakType, InPakInfo, bOverride) end

---@param PakType EPakResourceType
---@param InPakInfos ULuaMapHelper<number, FDefaultPakInfo>
---@param bOverride boolean
---@return boolean
function UPakDownloadSubsystem:AddPakInfos(PakType, InPakInfos, bOverride) end

---@param PakID number
---@param InPakInfo FCommonPakInfo
---@return boolean
function UPakDownloadSubsystem:AddCommonPakInfo(PakID, InPakInfo) end

---@param InPakInfo ULuaMapHelper<number, FCommonPakInfo>
---@return boolean
function UPakDownloadSubsystem:AddCommonPakInfos(InPakInfo) end

---@param IndexID number
---@param PakType EPakResourceType
---@param bOnlyPakID boolean
---@return boolean
function UPakDownloadSubsystem:RemovePakInfo(IndexID, PakType, bOnlyPakID) end

---@param PakType EPakResourceType
---@return boolean
function UPakDownloadSubsystem:RemovePakInfos(PakType) end

---@param bIncludeCommon boolean
---@return boolean
function UPakDownloadSubsystem:EmptyPakInfo(bIncludeCommon) end

---@param PakID number
---@return boolean
function UPakDownloadSubsystem:RemoveCommonPakInfo(PakID) end

---@return boolean
function UPakDownloadSubsystem:EmptyCommonPakInfo() end

---@param IndexID number
---@param PakType EPakResourceType
---@param bOnlyPakID boolean
---@return number
function UPakDownloadSubsystem:GetPakSize(IndexID, PakType, bOnlyPakID) end

---@param IndexID number
---@param PakType EPakResourceType
---@param bOnlyPakID boolean
---@return number
function UPakDownloadSubsystem:GetDownloadPriority(IndexID, PakType, bOnlyPakID) end

---@param IndexID number
---@param PakType EPakResourceType
---@param bOnlyPakID boolean
function UPakDownloadSubsystem:GetRelatedAvatars(IndexID, PakType, bOnlyPakID) end

---@param IndexID number
---@param PakType EPakResourceType
---@param bOnlyPakID boolean
function UPakDownloadSubsystem:GetSubDownloadAvatars(IndexID, PakType, bOnlyPakID) end

---@param bIncludeCommon boolean
---@return number
function UPakDownloadSubsystem:GetTotalPakCount(bIncludeCommon) end

---@param PakType EPakResourceType
---@return number
function UPakDownloadSubsystem:GetPakCountByType(PakType) end

---@param PakType EPakResourceType
function UPakDownloadSubsystem:GetAllPakIDsByType(PakType) end

---@param IndexID number
---@param PakType EPakResourceType
---@param bOnlyPakID boolean
---@return boolean
function UPakDownloadSubsystem:HasPakInfo(IndexID, PakType, bOnlyPakID) end

function UPakDownloadSubsystem:DumpPakInfoToLog() end

---@return boolean
function UPakDownloadSubsystem:UseLegacyAvatarInfo() end

---@param bUseLegacy boolean
function UPakDownloadSubsystem:SetUseLegacyAvatarInfo(bUseLegacy) end

---@param bUseLegacy boolean
function UPakDownloadSubsystem:SetUseLegacySetup(bUseLegacy) end

---@return boolean
function UPakDownloadSubsystem:UseLegacySetup() end
