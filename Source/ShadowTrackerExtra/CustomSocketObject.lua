---@meta

---@class FChildPendingActiveObject
---@field ChildWidgetClass UUAEUserWidget
---@field Anchor FAnchorData
---@field bAutoSize boolean
---@field ZOrder number
---@field MountName string
---@field MountOuterName string
FChildPendingActiveObject = {}


---@class FCustomSockDelegate : ULuaSingleDelegate
FCustomSockDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCustomSockDelegate:Bind(Callback, Obj) end

---执行委托
function FCustomSockDelegate:Execute() end


---@class UCustomSocketObject: UObject
local UCustomSocketObject = {}

---@param PC AUAEPlayerController
---@param DelegateToCall FCustomSockDelegate
function UCustomSocketObject:ActivateSocket(PC, DelegateToCall) end

---@param PC AUAEPlayerController
function UCustomSocketObject:OnLoadFinished(PC) end

function UCustomSocketObject:MountWidget() end
