---@meta

---@class FAvatarResIdInfo
---@field Type EAvatarResIdType
---@field resId number
FAvatarResIdInfo = {}


---@class FAvatarResIdClusterScore
---@field ClusterUniqueId string
---@field Score number
FAvatarResIdClusterScore = {}


---@class FPlayerResIdClusterScoreList
---@field PlayerUID string
---@field ClusterScoreList ULuaMapHelper<string, FAvatarResIdClusterScore>
FPlayerResIdClusterScoreList = {}


---@class FAvatarResIdCluster
---@field ClusterUniqueId string
---@field PlayerUId string
---@field resIds ULuaArrayHelper<FAvatarResIdInfo>
FAvatarResIdCluster = {}


---@class FAvatarPakResIds
---@field Ids ULuaArrayHelper<FAvatarResIdInfo>
FAvatarPakResIds = {}


---@class FPlayerPakResIds
---@field PlayerUId string
---@field CharacterResIds FAvatarPakResIds
---@field WeaponResIds FAvatarPakResIds
---@field VehicleResIds FAvatarPakResIds
FPlayerPakResIds = {}


---@class FAvatarPakDownloadInfo
---@field reqId number
---@field resItemIds ULuaArrayHelper<FAvatarResIdInfo>
FAvatarPakDownloadInfo = {}


---@class FAvatarPakDownloadInfoResponseDetail
---@field UID string
---@field ResponsedClusters ULuaArrayHelper<string>
---@field PendingResponseClusters ULuaArrayHelper<string>
FAvatarPakDownloadInfoResponseDetail = {}


---@class FOnAvatarPakDownloadMgrStopWorkDelegate : ULuaSingleDelegate
FOnAvatarPakDownloadMgrStopWorkDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAvatarPakDownloadMgrStopWorkDelegate:Bind(Callback, Obj) end

---执行委托
function FOnAvatarPakDownloadMgrStopWorkDelegate:Execute() end


---@class FOnCheckValidResId : ULuaMulticastDelegate
FOnCheckValidResId = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: FAvatarResIdInfo) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCheckValidResId:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 FAvatarResIdInfo
function FOnCheckValidResId:Broadcast(Param1) end


---@class UAvatarCheckResDownloadMgr: UAvatarManagementModBase
---@field AvatarPakAdvanceDownloadCache ULuaMapHelper<string, FPlayerPakResIds>
---@field AvatarPakResIdClusters ULuaMapHelper<string, FAvatarResIdCluster>
---@field PlayerResClustersScoreList ULuaMapHelper<string, FPlayerResIdClusterScoreList>
---@field PlayerResClustersResponseDetail ULuaMapHelper<string, FAvatarPakDownloadInfoResponseDetail>
---@field SingleResponseMaxIdNum number
---@field SingleResponseMaxPlayerNum number
---@field SingleFrameMaxPakDownloadCheckMaxNum number
---@field pendingCheckIds ULuaArrayHelper<FAvatarResIdInfo>
---@field PakDownloadInfoCache ULuaMapHelper<number, boolean>
local UAvatarCheckResDownloadMgr = {}

---@param PlayerUId string
---@param SuitSkinData FSuitSkinData
function UAvatarCheckResDownloadMgr:CollectPlayerInfo(PlayerUId, SuitSkinData) end

---@param PlayerUId string
---@param SuitSkinData FSuitSkinData
function UAvatarCheckResDownloadMgr:CollectPlayerResIds(PlayerUId, SuitSkinData) end

---@param PlayerUId string
function UAvatarCheckResDownloadMgr:ClearPlayerCacheInDS(PlayerUId) end

---@param NewPC APlayerController
function UAvatarCheckResDownloadMgr:OnPlayerControllerCreate(NewPC) end

---@param UID string
---@return boolean
function UAvatarCheckResDownloadMgr:CheckCanResponseNextBatchResIds(UID) end

---@param Controller APlayerController
---@param UID string
---@param IdFilter ULuaArrayHelper<FAvatarResIdInfo>
---@param Ids ULuaArrayHelper<FAvatarResIdInfo>
---@return boolean
function UAvatarCheckResDownloadMgr:ExportNextBatchNeedCheckResIds(Controller, UID, IdFilter, Ids) end

---@param Controller APlayerController
---@param cluster FAvatarResIdCluster
---@return number
function UAvatarCheckResDownloadMgr:GetResClusterScore(Controller, cluster) end

---@param Controller APlayerController
---@param cluster FAvatarResIdCluster
---@return number
function UAvatarCheckResDownloadMgr:CalculateResClusterScore(Controller, cluster) end

function UAvatarCheckResDownloadMgr:PushTestData() end

function UAvatarCheckResDownloadMgr:NativePushTestData() end

---@return boolean
function UAvatarCheckResDownloadMgr:IsClient() end

---@return boolean
function UAvatarCheckResDownloadMgr:IsServer() end

---@param Ids ULuaArrayHelper<FAvatarResIdInfo>
function UAvatarCheckResDownloadMgr:AppendNeedPreCheckResPakIds(Ids) end

---@param info FAvatarResIdInfo
function UAvatarCheckResDownloadMgr:CheckResIsPakDownload(info) end

---@param Id number
---@param bDownload boolean
function UAvatarCheckResDownloadMgr:SetPakDownloadInfoCache(Id, bDownload) end

---@param Id number
---@param bDownload boolean
function UAvatarCheckResDownloadMgr:SetPakDownloadInfoGlobalCache(Id, bDownload) end

---@return boolean
function UAvatarCheckResDownloadMgr:NeedSeedNextRequest() end

---@param resId number
---@param bFind boolean
---@return boolean
function UAvatarCheckResDownloadMgr:GetPakIsDownloadInCache(resId, bFind) end

---@param infos ULuaArrayHelper<FAvatarResIdInfo>
function UAvatarCheckResDownloadMgr:CheckResIsPakDownloadAsync(infos) end

function UAvatarCheckResDownloadMgr:ClearPendingAsyncCheckPakList() end

---@param bSuccess boolean
---@param AsyncProcessID number
---@param ResId number
function UAvatarCheckResDownloadMgr:OnSinglePakAsyncCheckCompleted(bSuccess, AsyncProcessID, ResId) end

function UAvatarCheckResDownloadMgr:OnAllPakCheckCompleted() end
