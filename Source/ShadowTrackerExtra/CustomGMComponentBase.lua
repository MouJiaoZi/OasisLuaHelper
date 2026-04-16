---@meta

---GM组件的基类，用于GM功能的通用管理 挂载在PlayerController上，提供DS和客户端之间的数据同步和RPC通信
---@class UCustomGMComponentBase: UActorComponent
---@field CachedOwnerPC ASTExtraPlayerController @缓存的PC引用
local UCustomGMComponentBase = {}

---判断是否在DS上
---@return boolean
function UCustomGMComponentBase:IsOnServer() end

---判断是否是本地客户端
---@return boolean
function UCustomGMComponentBase:IsLocalClient() end
