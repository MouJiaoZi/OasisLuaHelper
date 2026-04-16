---@meta

---@class ELeftQueueItemStatus
---@field ELQIS_Idle number @Idle
---@field ELQIS_PlayingInit number @Playing
---@field ELQIS_PlayingSwitching number @Switching
ELeftQueueItemStatus = {}


---@class FLeftQueueNotifyRefreshInfosDelegate : ULuaMulticastDelegate
FLeftQueueNotifyRefreshInfosDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Index: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLeftQueueNotifyRefreshInfosDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Index number
function FLeftQueueNotifyRefreshInfosDelegate:Broadcast(Index) end


---@class ULeftQueueItemWidget: UUAEUserWidget
---@field LeftQueueNotifyRefreshInfosHandler FLeftQueueNotifyRefreshInfosDelegate
---@field CurStatus ELeftQueueItemStatus
---@field bCompletePlayedMinAnimTime boolean
---@field bGlobalObserverMode boolean
local ULeftQueueItemWidget = {}

function ULeftQueueItemWidget:HandleFinishedInitAnim() end

function ULeftQueueItemWidget:HandleFinishedInitMinTimeAnim() end

function ULeftQueueItemWidget:HandleFinishedSwitchingAnim() end

---@param RecordData FClientFatalDamageRecordData
function ULeftQueueItemWidget:SetQueueItemData(RecordData) end

function ULeftQueueItemWidget:ExecuteStatusInBlueprint() end

function ULeftQueueItemWidget:ExecuteStatusInBlueprintC() end

function ULeftQueueItemWidget:ExecuteObserverModeStatusInBlueprint() end
