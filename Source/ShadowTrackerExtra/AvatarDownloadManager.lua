---@meta

---@class FAvatarDownloadParam
---@field AvatarDownloadSourceType EAvatarDownloadSourceType
---@field AvatarDownloadActorType EAvatarDownloadActorType
FAvatarDownloadParam = {}


---@class FGetDownloadListDelegate : ULuaSingleDelegate
FGetDownloadListDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGetDownloadListDelegate:Bind(Callback, Obj) end

---执行委托
function FGetDownloadListDelegate:Execute() end


---@class UAvatarDownloadManager: UObject, ILuaInterface
---@field PriorityFinishedMap ULuaMapHelper<EAvatarDownloadSourceType, boolean>
---@field DownloadingTasksNum number
---@field bIsDownloading boolean
---@field bIsDownloadingForGallery boolean
---@field NeedDownloadList ULuaArrayHelper<number>
---@field LastNeedDownloadList ULuaArrayHelper<number>
---@field GameModeIDBlackList ULuaArrayHelper<number>
---@field FinalDownloadList ULuaArrayHelper<number>
---@field FinalDownloadListForGallery ULuaArrayHelper<number>
---@field MaxDownloadNum number
---@field MaxDownloadNumForGallery number
---@field NeedDownloadListDebug ULuaArrayHelper<number>
---@field DownloadTLogID number
---@field bOnlyWIFICanDownload boolean
---@field bOnlyInBirthIslandCanDownload boolean
---@field bCannotDownloadInPlane boolean
---@field bOpenGameModeIDBlackList boolean
---@field SystemFreeSpaceCanDownload number
---@field TLogString string
---@field bForceDownload boolean
---@field AlreadyDownloadedCharacter ULuaMapHelper<number, boolean>
---@field ClientModeIDWhiteList ULuaArrayHelper<number>
---@field GameModeIDWhiteList ULuaArrayHelper<number>
---@field CurrentGalleryAvatarType EGalleryAvatarType
---@field bDosendTLogBeforeDownload boolean
---@field OnGetDownloadListDelegate FGetDownloadListDelegate
---@field DownloadTypeToDelegate ULuaMapHelper<EAvatarDownloadSourceType, FGetDownloadListDelegate>
---@field TypeDowning ULuaMapHelper<EAvatarDownloadActorType, boolean>
local UAvatarDownloadManager = {}

---@param InAvatarComponent UAvatarComponent
---@param InAvatarDownloadSourceType EAvatarDownloadSourceType
---@param InAvatarDownloadActorType EAvatarDownloadActorType
function UAvatarDownloadManager:StartDownload(InAvatarComponent, InAvatarDownloadSourceType, InAvatarDownloadActorType) end

---@param InAvatarComponent UAvatarComponent
function UAvatarDownloadManager:StopDownload(InAvatarComponent) end

---@param InAvatarComponent UAvatarComponent
function UAvatarDownloadManager:SuspensionDownload(InAvatarComponent) end

---@param InAvatarComponent UAvatarComponent
---@param InAvatarDownloadActorType EAvatarDownloadActorType
---@return boolean
function UAvatarDownloadManager:CanRegisterLuaEvent(InAvatarComponent, InAvatarDownloadActorType) end

---@param InAvatarDownloadParamForCallback FAvatarDownloadParamForCallback
function UAvatarDownloadManager:PostLuaEvent(InAvatarDownloadParamForCallback) end

---@return string
function UAvatarDownloadManager:GetLuaModule() end

---@param InObject UObject
function UAvatarDownloadManager:RegisterLuaEvent(InObject) end

---@param InObject UObject
function UAvatarDownloadManager:UnRegisterLuaEvent(InObject) end

---@param InAvatarComponent UAvatarComponent
---@return boolean
function UAvatarDownloadManager:IsCurGameModeSupported(InAvatarComponent) end

---@param InAvatarComponent UAvatarComponent
---@return boolean
function UAvatarDownloadManager:CheckInteractiveActorCanDownload(InAvatarComponent) end

---@param InAvatarComponent UAvatarComponent
---@return boolean
function UAvatarDownloadManager:CheckInteractiveActorCanDownloadCallback(InAvatarComponent) end

---@param InAvatarComponent UAvatarComponent
---@return boolean
function UAvatarDownloadManager:CheckNeedDownloadListChange(InAvatarComponent) end

function UAvatarDownloadManager:InitConfig() end

---@param InAvatarComponent UAvatarComponent
---@param InAvatarDownloadSourceType EAvatarDownloadSourceType
---@param InAvatarDownloadActorType EAvatarDownloadActorType
---@return boolean
function UAvatarDownloadManager:CheckCanDownload(InAvatarComponent, InAvatarDownloadSourceType, InAvatarDownloadActorType) end

---@param InAvatarComponent UAvatarComponent
---@return boolean
function UAvatarDownloadManager:IsDownloading(InAvatarComponent) end

---@param InAvatarComponent UAvatarComponent
---@param InIsDownloading boolean
function UAvatarDownloadManager:SetIsDownloading(InAvatarComponent, InIsDownloading) end

---@param InAvatarDownloadType EAvatarDownloadSourceType
---@return boolean
function UAvatarDownloadManager:IsCurrentPriorityFinished(InAvatarDownloadType) end

---@param InAvatarDownloadType EAvatarDownloadSourceType
---@param bFinished boolean
function UAvatarDownloadManager:SetCurrentPriorityFinished(InAvatarDownloadType, bFinished) end

---@param InAvatarDownloadType EAvatarDownloadSourceType
---@param InAvatarComponent UAvatarComponent
---@return boolean
function UAvatarDownloadManager:CheckCurrentPriorityCanDownload(InAvatarDownloadType, InAvatarComponent) end

function UAvatarDownloadManager:LogPriorityFinishedMap() end

---@param InAvatarComponent UAvatarComponent
---@param InAvatarDownloadSourceType EAvatarDownloadSourceType
---@param InAvatarDownloadActorType EAvatarDownloadActorType
function UAvatarDownloadManager:CollectDownloadList(InAvatarComponent, InAvatarDownloadSourceType, InAvatarDownloadActorType) end

---@param InAvatarComponent UAvatarComponent
---@param InData ULuaArrayHelper<number>
---@return boolean
function UAvatarDownloadManager:CheckIsValidData(InAvatarComponent, InData) end

---@return number
function UAvatarDownloadManager:GetSystemFreeSpace() end

---@return boolean
function UAvatarDownloadManager:CheckHasActiveWifi() end

---@param InAvatarComponent UAvatarComponent
---@return boolean
function UAvatarDownloadManager:CheckDownloadingTasksNum(InAvatarComponent) end

---@param InSwitchValue number
---@return boolean
function UAvatarDownloadManager:CheckConfigItem(InSwitchValue) end

---@param InAvatarComponent UAvatarComponent
---@param InAvatarDownloadParamForCallback FAvatarDownloadParamForCallback
function UAvatarDownloadManager:AvatarSourceDownloadFinished(InAvatarComponent, InAvatarDownloadParamForCallback) end

---@param InAvatarComponent UAvatarComponent
---@param InAvatarDownloadSourceType EAvatarDownloadSourceType
---@param bBeforeDownload boolean
function UAvatarDownloadManager:SendTLog(InAvatarComponent, InAvatarDownloadSourceType, bBeforeDownload) end

---@param InAvatarComponent UAvatarComponent
function UAvatarDownloadManager:DoSendTLog(InAvatarComponent) end

---@return boolean
function UAvatarDownloadManager:CheckPriorityFinishedMap() end

---@param bIsGallery boolean
function UAvatarDownloadManager:ResetPriorityFinishedMap(bIsGallery) end

---@param InAvatarComponent UAvatarComponent
function UAvatarDownloadManager:FilterNeedDownloadList(InAvatarComponent) end

---@param NewForceDownload boolean
function UAvatarDownloadManager:SetForceDownload(NewForceDownload) end

---@param InAvatarComponent UAvatarComponent
---@param InAvatarDownloadSourceType EAvatarDownloadSourceType
---@param InAvatarDownloadActorType EAvatarDownloadActorType
---@return FAvatarDownloadParam
function UAvatarDownloadManager:GetNextTeammate(InAvatarComponent, InAvatarDownloadSourceType, InAvatarDownloadActorType) end

---@param InAvatarComponent UAvatarComponent
---@param InAvatarDownloadSourceType EAvatarDownloadSourceType
---@param InAvatarDownloadActorType EAvatarDownloadActorType
---@return FAvatarDownloadParam
function UAvatarDownloadManager:GetNextEnemy(InAvatarComponent, InAvatarDownloadSourceType, InAvatarDownloadActorType) end

---@param InAvatarComponent UAvatarComponent
---@param InAvatarDownloadSourceType EAvatarDownloadSourceType
---@param InAvatarDownloadActorType EAvatarDownloadActorType
---@return FAvatarDownloadParam
function UAvatarDownloadManager:GetNeedDownloadOtherResources(InAvatarComponent, InAvatarDownloadSourceType, InAvatarDownloadActorType) end

---@param InAvatarComponent UAvatarComponent
---@param InAvatarDownloadSourceType EAvatarDownloadSourceType
---@param InAvatarDownloadActorType EAvatarDownloadActorType
---@return FAvatarDownloadParam
function UAvatarDownloadManager:GetNextCharacterNeedDownloadResources(InAvatarComponent, InAvatarDownloadSourceType, InAvatarDownloadActorType) end

---@param InAvatarComponent UAvatarComponent
---@param InAvatarDownloadSourceType EAvatarDownloadSourceType
---@param InAvatarDownloadActorType EAvatarDownloadActorType
---@return FAvatarDownloadParam
function UAvatarDownloadManager:GetNextVehicleNeedDownloadResources(InAvatarComponent, InAvatarDownloadSourceType, InAvatarDownloadActorType) end

---@param InAvatarComponent UAvatarComponent
---@param InAvatarDownloadSourceType EAvatarDownloadSourceType
function UAvatarDownloadManager:RefreshCharacter(InAvatarComponent, InAvatarDownloadSourceType) end

---@param InAvatarComponent UAvatarComponent
---@return boolean
function UAvatarDownloadManager:CheckIsDisplayActor(InAvatarComponent) end

---@param InAvatarComponent UAvatarComponent
---@param InAvatarDownloadSourceType EAvatarDownloadSourceType
---@param InAvatarDownloadActorType EAvatarDownloadActorType
---@param InCurrentGalleryAvatarType EGalleryAvatarType
---@param bFirstCall boolean
---@return FAvatarDownloadParam
function UAvatarDownloadManager:GetNextNeedDownloadResources(InAvatarComponent, InAvatarDownloadSourceType, InAvatarDownloadActorType, InCurrentGalleryAvatarType, bFirstCall) end

---@param InCurrentGalleryAvatarType EGalleryAvatarType
function UAvatarDownloadManager:SetCurrentGalleryAvatarType(InCurrentGalleryAvatarType) end

---@param InAvatarDownloadSourceType EAvatarDownloadSourceType
---@param InOnGetDownloadListDelegate FGetDownloadListDelegate
function UAvatarDownloadManager:RegisterDownloadTypeAndDelegate(InAvatarDownloadSourceType, InOnGetDownloadListDelegate) end

---@param InAvatarComponent UAvatarComponent
---@param ResID number
---@return number
function UAvatarDownloadManager:GetBPIDByResID(InAvatarComponent, ResID) end
