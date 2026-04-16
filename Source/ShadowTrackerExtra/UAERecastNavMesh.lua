---@meta

---@class FOnUAENavMeshLoadSuccess : ULuaMulticastDelegate
FOnUAENavMeshLoadSuccess = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: AUAERecastNavMesh) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnUAENavMeshLoadSuccess:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 AUAERecastNavMesh
function FOnUAENavMeshLoadSuccess:Broadcast(Param1) end


---@class AUAERecastNavMesh: ARecastNavMesh
---@field NewNavDataPath string
---@field NewNavDataPathClient string
---@field bUGCNavData boolean
---@field LoadInPIE boolean
---@field LoadInDS boolean
---@field LoadInClient boolean
---@field LoadInEditor boolean
---@field bUGCDynNavData boolean
---@field MaxProcessedFindPathRequests number
local AUAERecastNavMesh = {}
