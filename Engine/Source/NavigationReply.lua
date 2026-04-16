---@meta

---@class EUINavigationRule
---@field Escape number @Allow the movement to continue in that direction, seeking the next navigable widget automatically.
---@field Explicit number @Move to a specific widget.
---@field Wrap number @Wrap movement inside this container, causing the movement to cycle around from the opposite side, if the navigation attempt would have escaped.
---@field Stop number @Stops movement in this direction
---@field Custom number @Custom navigation handled by user code.
---@field Invalid number @Invalid Rule
EUINavigationRule = {}


---@class FNavigationDelegate : ULuaSingleDelegate
FNavigationDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: EUINavigation) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNavigationDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 EUINavigation
function FNavigationDelegate:Execute(Param1) end
