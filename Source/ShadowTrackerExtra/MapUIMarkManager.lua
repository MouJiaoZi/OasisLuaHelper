---@meta

---@class EUIMarkState
---@field EUMS_None number
---@field EUMS_Show number
---@field EUMS_Hide number
EUIMarkState = {}


---@class FSingleMarkInfo
---@field MarkState EUIMarkState
FSingleMarkInfo = {}


---@class FMarkPathSetting
---@field UIBPSrcID number
---@field UIBPSoftPtr UMapUIMarkBaseWidget
---@field UIDescription string
---@field bConsiderMapVisible boolean
---@field MapMarkSwitchConfig FMapMarkSwitchConfig
FMarkPathSetting = {}


---@class FMarkUIBPSettings
FMarkUIBPSettings = {}


---@class FUIBPAsyncParams
FUIBPAsyncParams = {}


---@class FRegionMapPath
---@field bUse2DPostion boolean
---@field WorldPostion FVector
---@field MapWorld2DPostion FVector2D
---@field RegionImage FStringAssetReference
FRegionMapPath = {}


---@class FRegionMapPathConfig
---@field RegionMapPathConfig ULuaMapHelper<string, FRegionMapPath>
FRegionMapPathConfig = {}


---@class FMarkCachedTeamList
---@field TeamList ULuaArrayHelper<ASTExtraPlayerState>
FMarkCachedTeamList = {}


---@class UMapUIMarkManager: UActorComponent
---@field PreSpectatorWeakPlayerState ASTExtraPlayerState
---@field CachedPlayerStateTeamMap ULuaMapHelper<number, FMarkCachedTeamList>
---@field MarkPathSettingArray ULuaArrayHelper<FMarkPathSetting>
---@field CompositeSwitchDesc ULuaMapHelper<number, string>
---@field UpdateNumPerBatch number
---@field BatchUIBPSrcIDArray ULuaArrayHelper<number>
---@field HideSwitchModeArray ULuaArrayHelper<string>
---@field CurMarkInstList ULuaArrayHelper<number>
---@field OnAlertItemListUpdateDelegate FOnAlertItemListUpdateDelegate
---@field TickRate_Internal number
---@field TickRate_Callback number
---@field IsShowingActivityTypeMarkMap ULuaMapHelper<number, boolean>
---@field CreatedIDAccordingToMark ULuaArrayHelper<number> @存一下那些依赖Mark创建的IDs PS :只记录OnUIMarkItemCreated绑定之前的，绑定之后的，触发创建时，会判断是否重复
---@field OnUIMarkItemCreated FOnUIMarkItemCreated
---@field OnUIMarkCompositeItemCreated FOnUIMarkCompositeItemCreated
---@field bEnableModifyRemoveMarkLogic boolean
---@field StateChangeMarkList ULuaArrayHelper<UMapUIMarkBaseWidget>
---@field StateChangeParamMap ULuaMapHelper<string, string>
---@field MarkAsyncLoadPriority number
---@field RandomRegionSettingArray ULuaArrayHelper<FRegionMapPathConfig>
local UMapUIMarkManager = {}

function UMapUIMarkManager:OnSpectatorChangeUpdateMark() end

---@param bOpen boolean
function UMapUIMarkManager:OnFreeViewChanged(bOpen) end

---@param InPlayerState ASTExtraPlayerState
function UMapUIMarkManager:GetTeammatePlayerState(InPlayerState) end

---@param inCallBackParams FUIBPAsyncParams
function UMapUIMarkManager:OnUIBPLoadCallBack(inCallBackParams) end

---@param bIsShow boolean
function UMapUIMarkManager:SetIsShowingActivityItem(bIsShow) end

---@param bIsShow boolean
---@param MarkSourceID number
---@param CategoryID number
function UMapUIMarkManager:SetIsShowingActivityTypeItem(bIsShow, MarkSourceID, CategoryID) end

---@param MarkData FMarkSyncData
---@return FMarkUIBPSettings
function UMapUIMarkManager:GetUIBPSetting(MarkData) end

---@param StateFunctionName string
---@param StrParam string
function UMapUIMarkManager:NotifyStateChangeMark(StateFunctionName, StrParam) end

---@param MarkUI UMapUIMarkBaseWidget
function UMapUIMarkManager:UpdateMarkAllState(MarkUI) end

---@param MarkData FMarkSyncData
---@param MapPtr UMapWidgetBase
---@return boolean
function UMapUIMarkManager:DecodeSplineDataAndAdd(MarkData, MapPtr) end

---@param InPathStr string
---@param InstanceID number
---@param MapPtr UMapWidgetBase
function UMapUIMarkManager:OnAsyncLoadSpline(InPathStr, InstanceID, MapPtr) end
