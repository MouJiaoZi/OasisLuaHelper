---@meta

---@class EBTNodeResult
---@field Succeeded number
---@field Failed number
---@field Aborted number
---@field InProgress number
EBTNodeResult = {}


---@class EBTFlowAbortMode
---@field None number @Nothing
---@field LowerPriority number @Lower Priority
---@field Self number @Self
---@field Both number @Both
EBTFlowAbortMode = {}


---helper struct for defining types of allowed blackboard entries (e.g. only entries holding points and objects derived form actor class)
---@class FBlackboardKeySelector
---@field AllowedTypes ULuaArrayHelper<UBlackboardKeyType> @array of allowed types with additional properties (e.g. uobject's base class) EditAnywhere is required for FBlackboardSelectorDetails::CacheBlackboardData()
---@field SelectedKeyName string @name of selected key
---@field SelectedKeyType UBlackboardKeyType @class of selected key
---@field SelectedKeyID number @ID of selected key
---@field bNoneIsAllowedValue number
FBlackboardKeySelector = {}


---@class FOnBlackboardChange : ULuaSingleDelegate
FOnBlackboardChange = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: UBlackboardComponent, Param2: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnBlackboardChange:Bind(Callback, Obj) end

---执行委托
---@param Param1 UBlackboardComponent
---@param Param2 number
function FOnBlackboardChange:Execute(Param1, Param2) end


---@class FOnBlackboardChangeNotification : ULuaSingleDelegate
FOnBlackboardChangeNotification = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: UBlackboardComponent, Param2: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnBlackboardChangeNotification:Bind(Callback, Obj) end

---执行委托
---@param Param1 UBlackboardComponent
---@param Param2 number
function FOnBlackboardChangeNotification:Execute(Param1, Param2) end


---@class UBehaviorTreeTypes: UObject
local UBehaviorTreeTypes = {}
