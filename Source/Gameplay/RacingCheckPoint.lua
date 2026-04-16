---@meta

---@class FCheckPointArea
---@field CheckPointBoxExtent FVector
FCheckPointArea = {}


---@class FPlayerCheckPointRecordUpdate : ULuaSingleDelegate
FPlayerCheckPointRecordUpdate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: ULuaArrayHelper<TSharedPtr<FPlayerCheckPointRecordData>>, Param2: ARacingCheckPoint) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPlayerCheckPointRecordUpdate:Bind(Callback, Obj) end

---执行委托
---@param Param1 ULuaArrayHelper<TSharedPtr<FPlayerCheckPointRecordData>>
---@param Param2 ARacingCheckPoint
function FPlayerCheckPointRecordUpdate:Execute(Param1, Param2) end


---@class ARacingCheckPoint: AActor
---@field ObserveControllers ULuaMapHelper<number, AController>
---@field TrackTag string
---@field CheckPointArea FCheckPointArea
---@field NextCheckPoints ULuaArrayHelper<ARacingCheckPoint>
local ARacingCheckPoint = {}
