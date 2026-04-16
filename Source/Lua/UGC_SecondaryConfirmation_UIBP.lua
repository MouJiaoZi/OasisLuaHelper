---@meta

---二次确认面板
---@class UGC_SecondaryConfirmation_UIBP
local UGC_SecondaryConfirmation_UIBP = {}

---生效范围：客户端
---二次确认面板操作通知，触发后会清空绑定的回调
---@param Value boolean @true为确认，false为取消
UGC_SecondaryConfirmation_UIBP.ConfirmationOperationDelegate = nil