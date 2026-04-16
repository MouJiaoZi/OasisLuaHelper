---@meta

---@class UBackpackItemCommonAttachHandle: UBattleItemHandleBase, IBackpackItemCommonInterface
---@field WrapperTemplateNew APickUpWrapperActor
---@field AttachReceiverProxyTemplate UBackpackItemCommonAttachReceiverProxy
---@field AttachProviderProxyTemplate UBackpackItemCommonAttachProviderProxy
---@field RecvProdConfig FBackpackItemCommonRecvProdConfig
---@field RealRecvProdConfig FBackpackItemCommonRecvProdConfig
local UBackpackItemCommonAttachHandle = {}

---@return boolean
function UBackpackItemCommonAttachHandle:NeedTransAdditionalData() end

---@param PendingSocketType EBackpackItemCommonSocketTypeGlobal
---@param PendingSocketConfigItem FBackpackItemCommonSocketConfigItem
---@return boolean
function UBackpackItemCommonAttachHandle:AddDynamicItemCommonSocket(PendingSocketType, PendingSocketConfigItem) end
