---@meta

---@class FLeftQueueShowInfo
---@field RecordItem FClientFatalDamageRecordData
---@field bCanExecuteShow boolean
---@field Index number
---@field AssetsReferences ULuaArrayHelper<FStringAssetReference>
FLeftQueueShowInfo = {}


---@class FLeftQueueReferenceInfo
---@field ReferenceList ULuaArrayHelper<UObject>
FLeftQueueReferenceInfo = {}


---@class ULeftQueueControlWidget: UUAEUserWidget, IKillTableInterface
---@field MaxShowItemCount number
---@field bGlobalObserverMode boolean
---@field CurWidgetItems ULuaArrayHelper<ULeftQueueItemWidget>
---@field CurShowInfos ULuaArrayHelper<FLeftQueueShowInfo>
---@field LoadedResMap ULuaMapHelper<number, FLeftQueueReferenceInfo>
---@field LoadAssetsListSucDelegate FAssetLoadListSuccessDelegateWithID
---@field DeadBoxTableName string
---@field AnchorTableName string
local ULeftQueueControlWidget = {}

---@param RecordInfo FClientFatalDamageRecordData
---@return boolean
function ULeftQueueControlWidget:CheckNeedLoadAvatarSkin(RecordInfo) end

---@param RecordInfo FClientFatalDamageRecordData
---@return number
function ULeftQueueControlWidget:GetWeaponAvatarNotDownloadSkinIDCPP(RecordInfo) end

---@param RecordInfo FClientFatalDamageRecordData
function ULeftQueueControlWidget:CheckExecuteInfos(RecordInfo) end

---@param AssetsPaths ULuaArrayHelper<FStringAssetReference>
---@param RecordData FClientFatalDamageRecordData
function ULeftQueueControlWidget:GetAssetsResPaths(AssetsPaths, RecordData) end

---@param AssetsPaths ULuaArrayHelper<FStringAssetReference>
---@param RecordData FClientFatalDamageRecordData
function ULeftQueueControlWidget:GetAssetsResPathsC(AssetsPaths, RecordData) end

---@param LoadedObjects ULuaArrayHelper<UObject>
---@param resID number
function ULeftQueueControlWidget:LoadAssetsSucCallBack(LoadedObjects, resID) end

---@param Index number
function ULeftQueueControlWidget:OnHandleExecuteInfosData(Index) end

function ULeftQueueControlWidget:CheckRefreshExecuteInfo() end

function ULeftQueueControlWidget:CleanInnerData() end

---@param ItemID number
---@param Found boolean
---@return string
function ULeftQueueControlWidget:GetKillWhiteIcon(ItemID, Found) end

---@param ResID number
---@param Found boolean
---@return string
function ULeftQueueControlWidget:GetAnchorPlatPath(ResID, Found) end
