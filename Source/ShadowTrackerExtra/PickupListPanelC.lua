---@meta

---@class FTombPickupPlayer
---@field TombBoxSortList ULuaArrayHelper<FBattleSearchBoxSortingInfo>
FTombPickupPlayer = {}


---@class FTombRowInvalidated : ULuaMulticastDelegate
FTombRowInvalidated = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Item: UUAEUserWidget) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FTombRowInvalidated:Add(Callback, Obj) end

---触发 Lua 广播
---@param Item UUAEUserWidget
function FTombRowInvalidated:Broadcast(Item) end


---@class FTombRowHandled : ULuaMulticastDelegate
FTombRowHandled = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Sender: UUAEUserWidget, TombBox: APlayerTombBox, PickupListItemRowBP: UUAEUserWidget) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FTombRowHandled:Add(Callback, Obj) end

---触发 Lua 广播
---@param Sender UUAEUserWidget
---@param TombBox APlayerTombBox
---@param PickupListItemRowBP UUAEUserWidget
function FTombRowHandled:Broadcast(Sender, TombBox, PickupListItemRowBP) end


---@class UPickUpTombItemC: UUAEUserWidget
local UPickUpTombItemC = {}

---@param Box APlayerTombBox
---@param Count number
function UPickUpTombItemC:UpdateTombBoxItem(Box, Count) end

---@param parentWidgetC UUserWidget
function UPickUpTombItemC:SetParentToBpC(parentWidgetC) end

---@param BoxColumn number
function UPickUpTombItemC:SetBoxColumn(BoxColumn) end


---@class UPickUpTombGridItemC: UUAEUserWidget
local UPickUpTombGridItemC = {}

---@param Info FBattleSearchBoxSortingInfo
---@param ParentWidgetObj UUAEUserWidget
function UPickUpTombGridItemC:SetItemData(Info, ParentWidgetObj) end


---@class UPickupListPanelC: UUAEUserWidget
---@field _PostUpdateListData FPostUpdateListData
---@field _CustomCheckShouldSkipShowBox FCustomCheckShouldSkipShowBox
---@field _CustomCheckAutoPickItem FCustomCheckAutoPickItem
---@field LastOperationSecondC number
---@field BrokenString string
---@field DoAfterPaintWhenFillTombBox boolean
---@field UsefulCountC number
---@field DeadBoxNumC number
---@field AutoShowTombBoxPanel boolean
---@field SortInfoListC ULuaArrayHelper<FBattleSearchItemSortingInfo>
---@field TombBoxListC ULuaArrayHelper<FTombPickupPlayer>
---@field BoxColumnC number
---@field bOpenProtectSortFeature boolean
---@field SizeBoxPanelItemHeight number
---@field SingleItemHeight number
---@field CloseNormalC boolean
---@field CloseNormalAutoC boolean
---@field DirtyC boolean
---@field UsefulLimitC number
---@field TickLimitRateC number
---@field DisableAutoPickupSwitcherC boolean
---@field ForbitAutoPickByModeC boolean
---@field AutoPickupSwitcherC boolean
---@field HideForAimC boolean
---@field IsTrainingModeC boolean
---@field RefreshByDirty boolean
---@field ForbitAutoPickMap ULuaSetHelper<string>
---@field PauseAutoPickItemC ULuaMapHelper<number, number>
---@field ListRowHeight number
---@field ListCacheNum number
---@field ListMaxHeight number
---@field TombRowInvalidated FTombRowInvalidated
---@field TombRowHandled FTombRowHandled
---@field NeedReportTimes number
---@field ForceHidePickupList boolean
---@field bIsPCNEWList boolean
---@field bIsShowAirDropBoxInOB boolean
local UPickupListPanelC = {}

---@param TombBoxResultList ULuaArrayHelper<FSearchedTombBoxAndWrapperListResult>
function UPickupListPanelC:PostUpdateListData(TombBoxResultList) end

---@param InBox APlayerTombBox
---@param pickup FSearchedPickUpItemResult
---@return boolean
function UPickupListPanelC:CustomCheckAutoPickItem(InBox, pickup) end

---@param InBox APlayerTombBox
---@return boolean
function UPickupListPanelC:CustomCheckShouldSkipShowBox(InBox) end

function UPickupListPanelC:UnBindCustomDelegates() end

---@param DefineID FItemDefineID
---@param optType EBattleItemOperationType
---@param Reason number
function UPickupListPanelC:ItemOperationC(DefineID, optType, Reason) end

function UPickupListPanelC:OnSortInfoList() end

function UPickupListPanelC:OnSortTombList() end

---@param ItemResult FSearchedPickUpItemResult
---@return boolean
function UPickupListPanelC:CheckProtectType(ItemResult) end

function UPickupListPanelC:UpdateListDataC() end

---@param result FSearchedPickUpItemResult
function UPickupListPanelC:AutoPickOneEvent(result) end

---@param ItemID number
---@param DelayTime number
---@param Modify boolean
function UPickupListPanelC:GetPauseAutoPickupDelay(ItemID, DelayTime, Modify) end

---@param LastDeadBoxNum number
function UPickupListPanelC:AutoOpenDeadBox(LastDeadBoxNum) end

function UPickupListPanelC:UpdateTombBoxCheck() end

---@param itemRow UUserWidget
---@param LogicID number
---@param index number
function UPickupListPanelC:UpdateTombList(itemRow, LogicID, index) end

function UPickupListPanelC:ClearCheckC() end

---@param ItemID number
---@param OptType EBattleItemOperationType
---@return boolean
function UPickupListPanelC:PlayPCItemOptSound(ItemID, OptType) end

---@param ItemNum number
---@param Remote boolean
---@param Aim boolean
function UPickupListPanelC:ReportUnVisible(ItemNum, Remote, Aim) end

---@param DefineID FItemDefineID
---@return boolean
function UPickupListPanelC:CheckItemIsPickUpByForbitComp(DefineID) end

---@return boolean
function UPickupListPanelC:CheckForbitCompFunctionIsEnabled() end

---@return boolean
function UPickupListPanelC:CanAutoPickLua() end

---@param SortNum number
function UPickupListPanelC:PCRefreshGroundListHeight(SortNum) end

function UPickupListPanelC:OnBeforePaint() end

---@return boolean
function UPickupListPanelC:IsSpecialItemSound() end

---@param PlayerController AUAEPlayerController
function UPickupListPanelC:OnPlayerControllerRespawnedDelegate(PlayerController) end

---@param bIsAvailable boolean
function UPickupListPanelC:OnHasPickupPropsAvailableChanged(bIsAvailable) end

---@param bIsAvailable boolean
function UPickupListPanelC:OnHasTombBoxesAvailableChanged(bIsAvailable) end

function UPickupListPanelC:StatisticAutoPick() end

---@param bYes boolean
function UPickupListPanelC:SetIsShowAirDropBoxInOB(bYes) end
