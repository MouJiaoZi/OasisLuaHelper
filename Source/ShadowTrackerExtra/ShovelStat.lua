---@meta

---采样数据
---@class FShovelStat
FShovelStat = {}


---滑铲整体数据信息 单次上报的基础数据结构
---@class FShovelInfo
FShovelInfo = {}


---@class FSendShovelData : ULuaSingleDelegate
FSendShovelData = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FShovelInfo) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSendShovelData:Bind(Callback, Obj) end

---执行委托
---@param Param1 FShovelInfo
function FSendShovelData:Execute(Param1) end
