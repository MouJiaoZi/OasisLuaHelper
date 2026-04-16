---@meta

---@class FOnSpeedValueChangeDelegate : ULuaSingleDelegate
FOnSpeedValueChangeDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSpeedValueChangeDelegate:Bind(Callback, Obj) end

---执行委托
function FOnSpeedValueChangeDelegate:Execute() end


---@class UParachutingWidget: UUAEUserWidget
---@field AirborneAltitude number
---@field AltitudeBarLength number
---@field ParachuteBarLength number
---@field AltitudeBarYPosition number
---@field HeightAndSpeedBoxXPosition number
---@field SpeedText string
---@field HeightAndSpeedBoxPosition FVector2D
---@field OnSpeedValueChangeDelegate FOnSpeedValueChangeDelegate
---@field bUseAccelerationUpdating boolean
---@field UpdateAccleratingThreshold number
---@field CalAcceleratingPeriod number
---@field bUseMultiFramePastUpdate boolean
---@field UpdateSpeedTextFrameThreshold number
local UParachutingWidget = {}
