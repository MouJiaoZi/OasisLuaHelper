---@meta

---@class EBTChildIndex
---@field FirstNode number
---@field TaskNode number
EBTChildIndex = {}


---@class EBTDecoratorLogic
---@field Invalid number
---@field Test number @Test decorator conditions.
---@field And number @logic op: AND
---@field Or number @logic op: OR
---@field Not number @logic op: NOT
EBTDecoratorLogic = {}


---@class FBTDecoratorLogic
---@field Operation EBTDecoratorLogic
---@field Number number
FBTDecoratorLogic = {}


---@class FBTCompositeChild
---@field Decorators ULuaArrayHelper<UBTDecorator> @execution decorators
---@field DecoratorOps ULuaArrayHelper<FBTDecoratorLogic> @logic operations for decorators
FBTCompositeChild = {}


---@class FGetNextChildDelegate : ULuaSingleDelegate
FGetNextChildDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FBehaviorTreeSearchData, Param2: number, Param3: EBTNodeResult) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGetNextChildDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 FBehaviorTreeSearchData
---@param Param2 number
---@param Param3 EBTNodeResult
function FGetNextChildDelegate:Execute(Param1, Param2, Param3) end


---@class UBTCompositeNode: UBTNode
---@field Children ULuaArrayHelper<FBTCompositeChild> @child nodes
---@field Services ULuaArrayHelper<UBTService> @service nodes
local UBTCompositeNode = {}
