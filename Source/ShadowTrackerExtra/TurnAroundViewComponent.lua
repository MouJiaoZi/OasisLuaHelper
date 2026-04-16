---@meta

---@class FFocusTargetItem
---@field Actor AActor
---@field Position FVector
---@field IsStartTurnTarget boolean
---@field TurnTargetVelocity number
---@field LastActorRotation FRotator
---@field CurveName string
FFocusTargetItem = {}


---@class FTurnAroundFinishDelegate : ULuaSingleDelegate
FTurnAroundFinishDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FTurnAroundFinishDelegate:Bind(Callback, Obj) end

---执行委托
function FTurnAroundFinishDelegate:Execute() end


---@class UTurnAroundViewComponent: UOnlyActorComponent
---@field FocusTurnData FFocusTargetItem
---@field bTurnOnlyOnServer boolean
local UTurnAroundViewComponent = {}

---@return string
function UTurnAroundViewComponent:GetToString() end
