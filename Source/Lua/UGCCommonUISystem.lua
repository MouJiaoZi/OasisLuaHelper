---@meta

---UI通用响应库
---@class UGCCommonUISystem
UGCCommonUISystem = {}

---拖拽成功添加监听
---生效范围：客户端
---@param InFunc function @回调函数
---@param Context table @函数上下文
function UGCCommonUISystem.AddDragSuccess(InFunc, Context) end

---拖拽成功移除监听
---生效范围：客户端
---@param InFunc function @回调函数
---@param Context table @函数上下文
function UGCCommonUISystem.RemoveDragSuccess(InFunc, Context) end