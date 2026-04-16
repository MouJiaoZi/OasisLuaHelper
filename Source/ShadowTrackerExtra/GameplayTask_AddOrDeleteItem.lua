---@meta

---@class UGameplayTask_AddOrDeleteItem: UUAEGameplayTask
---@field SucceedAddOrDelete FOnBigworldItemDelegateSucceed
---@field FailedAddOrDelete FOnBigWorldItemDelegateFailed
local UGameplayTask_AddOrDeleteItem = {}

---@param ReqID number
---@param ErrorCode number
---@param DefineID FItemDefineID
function UGameplayTask_AddOrDeleteItem:OnAddBigWorldItem(ReqID, ErrorCode, DefineID) end

---@param ReqID number
---@param ErrorCode number
function UGameplayTask_AddOrDeleteItem:OnDeleteBigworldItem(ReqID, ErrorCode) end
