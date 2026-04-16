---@meta

---Defines the controller hands for tracking.  Could be expanded, as needed, to facilitate non-handheld controllers
---@class EControllerHand
---@field Left number
---@field Right number
---@field AnyHand number
---@field Pad number
---@field ExternalCamera number
---@field Gun number
---@field Special_1 number
---@field Special_2 number
---@field Special_3 number
---@field Special_4 number
---@field Special_5 number
---@field Special_6 number
---@field Special_7 number
---@field Special_8 number
---@field Special_9 number
---@field Special_10 number
---@field Special_11 number
EControllerHand = {}


---@class ETouchIndex
---@field Touch1 number
---@field Touch2 number
---@field Touch3 number
---@field Touch4 number
---@field Touch5 number
---@field Touch6 number
---@field Touch7 number
---@field Touch8 number
---@field Touch9 number
---@field Touch10 number
---@field TouchNONE number @Mark Finger Released
---@field CursorPointerIndex number @This entry is special.  NUM_TOUCH_KEYS - 1, is used for the cursor so that it's represented as another finger index, but doesn't overlap with touch input indexes.
---@field MAX_TOUCHES number
ETouchIndex = {}


---@class EConsoleForGamepadLabels
---@field None number
---@field XBoxOne number
---@field PS4 number
EConsoleForGamepadLabels = {}


---Various states of touch inputs.
---@class ETouchType
---@field Began number
---@field Moved number
---@field Stationary number
---@field Ended number
---@field NumTypes number
ETouchType = {}


---@class FKey
---@field KeyName string
FKey = {}


---@class FGetKeyDisplayNameSignature : ULuaSingleDelegate
FGetKeyDisplayNameSignature = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FKey) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGetKeyDisplayNameSignature:Bind(Callback, Obj) end

---执行委托
---@param Param1 FKey
function FGetKeyDisplayNameSignature:Execute(Param1) end


---@class UInputCoreTypes: UObject
local UInputCoreTypes = {}
