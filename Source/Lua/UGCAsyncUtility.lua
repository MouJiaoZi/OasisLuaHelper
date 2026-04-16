---@meta

---异步工具类
---@class UGCAsyncUtility
UGCAsyncUtility = {}

---@class UGCAsyncSequenceParamTable
---@field LoadPath string @加载路径
---@field Callback function @lua普通函数或lambda函数, 加载完成的资源会作为参数传给CallBack函数 (注意带函数定义带冒号和不带的区别)
---@field Callback_self UObject @这是为了兼容CallBack函数定义带冒号和不带冒号两种情况。如果带冒号(table:func()型,CallBack_self传入table);如果不带冒号,CallBack_self传入nil
local UGCAsyncSequenceParamTable = {}

---创建一个新的 PromiseFuture 实例
--- - 创建实例: 使用 PromiseFuture.New() 创建新的 PromiseFuture 实例。
--- - 设置回调: 使用 Then 和 Else 方法设置成功和失败的回调函数。
--- - 执行逻辑: 使用 Set 方法定义 PromiseFuture 的执行逻辑，可以在其中使用 Yield 暂停执行。
--- - 前置条件: 可以将其他 PromiseFuture 实例作为前置条件，确保在执行当前 PromiseFuture 之前，所有前置条件都已完成。
--- - 自动恢复: 可以设置自动恢复功能，监控对象的状态并在需要时自动恢复执行。
---@param Prerequisite UGCPromiseFuture @可选的前置条件 PromiseFuture 实例
---@param ... any @其他可选的前置条件
---@return UGCPromiseFuture @新创建的 PromiseFuture 实例
function UGCAsyncUtility.CreatePromiseFuture(Prerequisite, ...) end

---新建一个保序列表，并返回ListHandle用于操作
---@return UGCAsyncSequenceHandle @返回的ListHandle
function UGCAsyncUtility.NewSequenceList() end

---往List里添加变量和函数。激活后时序逻辑为：轮询变量是否为空或者函数是否返回true，当变量不为空的时候，执行对应的函数，所以每次Insert一组变量和函数，就相当于添加一个时序逻辑。
---@param ListHandle UGCAsyncSequenceHandle @保序列表的索引
---@param ParamIndex number @参数插入保序列表的位置，如果是0，则是插入到列表的尾部
---@param InConditionFunction any @可执行的Function或变量
---@param InConditionTable table @轮询变量或函数所在的Table
---@param InFunction function @ 当条件为true时执行的函数
---@param InFunctionTable table @当条件为true时执行函数的Table
---@param ... any @可变参数，当条件为true时执行的函数参数
function UGCAsyncUtility.InsertItemIntoSequenceList(ListHandle, ParamIndex, InConditionFunction, InConditionTable, InFunction, InFunctionTable, ...) end

---激活保序列表
---@param ListHandle UGCAsyncSequenceHandle @保序列表的索引
---@param Interval number @自动恢复的间隔，单位为秒
---@param Timeout number @自动恢复的超时时间，单位为秒
function UGCAsyncUtility.ActivateSequenceList(ListHandle, Interval, Timeout) end

---支持并行初始化的通用有序异步加载器
---@param AsyncFun function @需要调用的异步函数（格式：func(LoadPath, CallBack, CallBack_Self)）
---@param ParamTables UGCAsyncSequenceParamTable[] @参数表数组
---@param OnCompleteCallback function @最终回调(loadedObjects)
---@return table @loadedObjects
function UGCAsyncUtility.AsyncLoadSomething(AsyncFun, ParamTables, OnCompleteCallback) end