---@meta

---@class ERegionSizeIndex
---@field Small number
---@field Medium number
---@field Large number
---@field SuperLarge number
---@field Max number
ERegionSizeIndex = {}


---@class EOverlapObjectType
---@field Default number
---@field Static number
---@field Dynamic number
---@field Player number
---@field Vehicle number
EOverlapObjectType = {}


---@class EOverlapObjectCheckType
---@field NotValid number
---@field Point number
---@field Box number
---@field Sphere number
EOverlapObjectCheckType = {}


---@class FRegionID
FRegionID = {}


---@class FRegionChangeData
FRegionChangeData = {}


---@class FWorldRegionManager
---@field ObjectToRegionID_NonStatic ULuaMapHelper<UObject, FRegionID>
---@field CacheNonStaticObjectOldRegion ULuaMapHelper<UObject, FRegionID>
---@field OverlapObjectToRegionID_Dynamic ULuaMapHelper<UObject, FRegionID>
---@field OverlapObjectToRegionID_Player ULuaMapHelper<UObject, FRegionID>
---@field OverlapObjectToRegionID_Vehicle ULuaMapHelper<UObject, FRegionID>
FWorldRegionManager = {}


---@class FNonStaticRegionObjectMovedEvent : ULuaMulticastDelegate
FNonStaticRegionObjectMovedEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: UObject, Param2: FRegionID, Param3: FRegionID) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNonStaticRegionObjectMovedEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 UObject
---@param Param2 FRegionID
---@param Param3 FRegionID
function FNonStaticRegionObjectMovedEvent:Broadcast(Param1, Param2, Param3) end


---@class FActivedRegionChangedEvent : ULuaMulticastDelegate
FActivedRegionChangedEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: FRegionChangeData) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FActivedRegionChangedEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 FRegionChangeData
function FActivedRegionChangedEvent:Broadcast(Param1) end
