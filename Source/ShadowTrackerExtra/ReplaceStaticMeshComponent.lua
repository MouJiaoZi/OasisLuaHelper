---@meta

---@class FReplaceStaticMeshConfig
---@field Id number
---@field ReplaceComponentTag string
---@field UseReplaceTransform boolean
---@field ReplaceTransformMap ULuaMapHelper<string, FTransform>
FReplaceStaticMeshConfig = {}


---@class FRepMeshData
---@field ConfigsIndex number
---@field IDIPMeshPath string
---@field bOnlyVisibleToObserver boolean
FRepMeshData = {}


---@class FOnReplaceSuccess : ULuaMulticastDelegate
FOnReplaceSuccess = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ConfigIndex: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnReplaceSuccess:Add(Callback, Obj) end

---触发 Lua 广播
---@param ConfigIndex number
function FOnReplaceSuccess:Broadcast(ConfigIndex) end


---@class UReplaceStaticMeshComponent: UActorComponent
---@field ReplaceStaticMeshConfigs ULuaArrayHelper<FReplaceStaticMeshConfig>
---@field OnReplaceSuccessEvent FOnReplaceSuccess
---@field Client_Is_Update_TexthureHttpURL boolean
---@field IDIPMeshData ULuaArrayHelper<FRepMeshData>
local UReplaceStaticMeshComponent = {}

function UReplaceStaticMeshComponent:ApplyIDIP() end

function UReplaceStaticMeshComponent:OnRep_IDIPMeshData() end

---@param SoftPath FSoftObjectPath
---@param ConfigIndex number
function UReplaceStaticMeshComponent:OnAsyncLoadMesh(SoftPath, ConfigIndex) end

---@param ReplaceStaticMesh UStaticMesh
---@param ConfigIndex number
---@return boolean
function UReplaceStaticMeshComponent:ReplaceMeshByConfigIndex(ReplaceStaticMesh, ConfigIndex) end

---@param ConfigIndex number
function UReplaceStaticMeshComponent:ReplaceTransformByConfigIndex(ConfigIndex) end

function UReplaceStaticMeshComponent:Call_Update_TexthureHttpURL() end
