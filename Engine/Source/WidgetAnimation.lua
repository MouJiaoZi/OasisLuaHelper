---@meta

---@class FOnWidgetAnimationPlaybackStatusChanged : ULuaSingleDelegate
FOnWidgetAnimationPlaybackStatusChanged = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnWidgetAnimationPlaybackStatusChanged:Bind(Callback, Obj) end

---执行委托
function FOnWidgetAnimationPlaybackStatusChanged:Execute() end


---@class FWidgetAnimationDynamicEvent : ULuaSingleDelegate
FWidgetAnimationDynamicEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FWidgetAnimationDynamicEvent:Bind(Callback, Obj) end

---执行委托
function FWidgetAnimationDynamicEvent:Execute() end


---@class FWidgetAnimationDynamicEvents : ULuaSingleDelegate
FWidgetAnimationDynamicEvents = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FWidgetAnimationDynamicEvents:Bind(Callback, Obj) end

---执行委托
function FWidgetAnimationDynamicEvents:Execute() end


---@class UWidgetAnimation: UMovieSceneSequence
---@field OnAnimationStarted FOnWidgetAnimationPlaybackStatusChanged @Fires when the widget animation starts playing. compatible for lua, to be deleted
---@field OnAnimationFinished FOnWidgetAnimationPlaybackStatusChanged @Fires when the widget animation is finished. compatible for lua, to be deleted
---@field AnimationBindings ULuaArrayHelper<FWidgetAnimationBinding>
local UWidgetAnimation = {}

---Get the start time of this animation.
---@return number
function UWidgetAnimation:GetStartTime() end

---Get the end time of this animation.
---@return number
function UWidgetAnimation:GetEndTime() end

---@param Widget UUserWidget
---@param Delegate FWidgetAnimationDynamicEvent
function UWidgetAnimation:BindToAnimationStarted(Widget, Delegate) end

---@param Widget UUserWidget
---@param Delegate FWidgetAnimationDynamicEvent
function UWidgetAnimation:UnbindFromAnimationStarted(Widget, Delegate) end

---@param Widget UUserWidget
function UWidgetAnimation:UnbindAllFromAnimationStarted(Widget) end

---@param Widget UUserWidget
---@param Delegate FWidgetAnimationDynamicEvent
function UWidgetAnimation:BindToAnimationFinished(Widget, Delegate) end

---@param Widget UUserWidget
---@param Delegate FWidgetAnimationDynamicEvent
function UWidgetAnimation:UnbindFromAnimationFinished(Widget, Delegate) end

---@param Widget UUserWidget
function UWidgetAnimation:UnbindAllFromAnimationFinished(Widget) end
