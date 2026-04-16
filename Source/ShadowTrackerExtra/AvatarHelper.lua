---@meta

---@class FAsyncIsPakDownloadedDelegateWithExtraParams : ULuaSingleDelegate
FAsyncIsPakDownloadedDelegateWithExtraParams = {}

---绑定回调函数
---@param Callback fun(Obj: any, bDownload: boolean, ResID: number, ExtraParams: UUAEBlackboard) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAsyncIsPakDownloadedDelegateWithExtraParams:Bind(Callback, Obj) end

---执行委托
---@param bDownload boolean
---@param ResID number
---@param ExtraParams UUAEBlackboard
function FAsyncIsPakDownloadedDelegateWithExtraParams:Execute(bDownload, ResID, ExtraParams) end


---@class FAsyncIsPakDownloadedDelegate : ULuaSingleDelegate
FAsyncIsPakDownloadedDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: boolean, Param2: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAsyncIsPakDownloadedDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 boolean
---@param Param2 number
function FAsyncIsPakDownloadedDelegate:Execute(Param1, Param2) end


---@class UAvatarPoolObject: UObject
---@field MaxNum number
---@field LowLevelMaxNum number
---@field MidLevelMaxNum number
---@field HighLevelMaxNum number
---@field AvatarObjArr ULuaArrayHelper<UObject>
local UAvatarPoolObject = {}


---@class UAvatarHelper: UObject
local UAvatarHelper = {}

---@param ResID number
---@return boolean
function UAvatarHelper:IsPakFileExists(ResID) end

---@param ResID number
---@return string
function UAvatarHelper:GetResPakFilePath(ResID) end

---@param PakName string
---@return string
function UAvatarHelper:GetResPakFilePathByName(PakName) end

---@param InFilePath string
---@return boolean
function UAvatarHelper:IsFileExists(InFilePath) end

---@param InFilePath string
---@return string
function UAvatarHelper:GetFileMD5Hash(InFilePath) end

function UAvatarHelper:OpenPakDownloadFastCache() end

---@param ResID number
---@return boolean
function UAvatarHelper:IsPakDownloaded(ResID) end

---@param ResID number
---@param ExtraParams UUAEBlackboard
---@param OnAsyncIsPakDownloadedDelegateWithExtraParams FAsyncIsPakDownloadedDelegateWithExtraParams
function UAvatarHelper:AsyncIsPakDownloadedWithExtraParams(ResID, ExtraParams, OnAsyncIsPakDownloadedDelegateWithExtraParams) end

---@param bSuccess boolean
---@param AsyncProcessID number
---@param ResID number
---@param ExtraParams UUAEBlackboard
---@param OnAsyncIsPakDownloadedDelegateWithExtraParams FAsyncIsPakDownloadedDelegateWithExtraParams
function UAvatarHelper:OnAsyncIsPakDownloadedCompletedWithExtraParams(bSuccess, AsyncProcessID, ResID, ExtraParams, OnAsyncIsPakDownloadedDelegateWithExtraParams) end

---@param ResID number
---@param InbDownload boolean
function UAvatarHelper:UpdateBattlePakDownloadCache(ResID, InbDownload) end

---@param ResID number
---@param InbDownload boolean
function UAvatarHelper:UpdateBattlePakDownloadCacheIfNoContain(ResID, InbDownload) end

---@param ResID number
---@return boolean
function UAvatarHelper:GlobalBattlePakDownloadCacheContain(ResID) end

function UAvatarHelper:ClearBattlePakDownloadCache() end

---@param ResID number
---@return boolean
function UAvatarHelper:CheckPakValidationForOBReplay(ResID) end

---@param ResID number
---@return boolean
function UAvatarHelper:IsAvatarSplitIntoPak(ResID) end

---@param ResID number
---@return string
function UAvatarHelper:GetAvatarPakName(ResID) end

---@param ResID number
---@return boolean
function UAvatarHelper:IsAvatarPakExist(ResID) end

---@param ResID number
---@return number
function UAvatarHelper:GetAvatarPakSize(ResID) end

---@param ReservedIDs string
---@return number
function UAvatarHelper:GetReservedAvatarResIDIfPakNotReady(ReservedIDs) end

---@return boolean
function UAvatarHelper:IsSuperLowQuality() end

---@param BaseChar ASTExtraBaseCharacter
---@param IncludingMaster boolean
---@param bEnable boolean
---@param OutlineColor FLinearColor
function UAvatarHelper:SetOutlineOcclusionHighlightByCharacter(BaseChar, IncludingMaster, bEnable, OutlineColor) end

---@param SkMeshComp USkeletalMeshComponent
---@param LODIndex number
---@param IsBatch boolean
function UAvatarHelper:BatchAvatar(SkMeshComp, LODIndex, IsBatch) end

---@param InPath FSoftObjectPath
---@param InAvatarObject UObject
function UAvatarHelper:UpdateAvatarResourceGlobalCache(InPath, InAvatarObject) end

function UAvatarHelper:DumpAvatarResourceGlobalCache() end
