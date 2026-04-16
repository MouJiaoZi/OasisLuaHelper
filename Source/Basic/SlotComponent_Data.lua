---@meta

---@class ESlotInstallResult
---@field Success number @安装成功
---@field ReplaceSuccess number @替换成功
---@field ReplaceFailed number @替换失败
---@field SlotWeightFailed number @插槽权重失败
---@field NotContainFailed number @此物品没有加到支持列表失败
---@field InvalidTransactionFailed number @无效插Transaction
ESlotInstallResult = {}


---@class FSlotSocket
---@field SlotSocketName string
FSlotSocket = {}


---@class FSlotUpdate
---@field SlotSocketName string
FSlotUpdate = {}
