---@meta

---@class FKillerTrackingEndDelegate : ULuaSingleDelegate
FKillerTrackingEndDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FKillerTrackingEndDelegate:Bind(Callback, Obj) end

---执行委托
function FKillerTrackingEndDelegate:Execute() end


---@class AKillerTracker: AActor
---@field MinMovingSpeed number
---@field MaxMovingTime number
---@field ObservingTime number
---@field TrackingDelay number
---@field ExpectedMinObservingDistance number
---@field CameraAdjustSpeed number
---@field bNeedReturnImmediately boolean
---@field bShowKillerOutline boolean
local AKillerTracker = {}

---@param PlayerController AUAEPlayerController
function AKillerTracker:CancelTrackingEnd(PlayerController) end
