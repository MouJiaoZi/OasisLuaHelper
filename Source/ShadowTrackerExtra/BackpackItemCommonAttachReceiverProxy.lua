---@meta

---@class UBackpackItemCommonAttachReceiverProxy: UBackpackItemCommonAttachProxy
---@field SocketOccupyDataMap ULuaMapHelper<EBackpackItemCommonSocketTypeGlobal, UBackpackItemCommonAttachProviderProxy>
local UBackpackItemCommonAttachReceiverProxy = {}

---@param ProviderProxy UBackpackItemCommonAttachProviderProxy
---@param bConsiderSocketOccupy boolean
---@return EBackpackItemCommonSocketTypeGlobal
function UBackpackItemCommonAttachReceiverProxy:GetSocketSupportTargetAttachmentHandle(ProviderProxy, bConsiderSocketOccupy) end

---@param ProviderProxy UBackpackItemCommonAttachProviderProxy
---@param SpecificSocket EBackpackItemCommonSocketTypeGlobal
---@param bConsiderSocketOccupy boolean
---@return boolean
function UBackpackItemCommonAttachReceiverProxy:CheckSpecificSocketSupportTargetAttachmentHandle(ProviderProxy, SpecificSocket, bConsiderSocketOccupy) end

---@param ProviderProxy UBackpackItemCommonAttachProviderProxy
---@param SpecificSocket EBackpackItemCommonSocketTypeGlobal
---@return boolean
function UBackpackItemCommonAttachReceiverProxy:EquipTargetAttachmentHandle(ProviderProxy, SpecificSocket) end

---@param ProviderProxy UBackpackItemCommonAttachProviderProxy
---@return boolean
function UBackpackItemCommonAttachReceiverProxy:UnEquipTargetAttachmentHandle(ProviderProxy) end

---@param TargetSocket EBackpackItemCommonSocketTypeGlobal
---@return boolean
function UBackpackItemCommonAttachReceiverProxy:UnEquipTargetSocketAttachmentHandle(TargetSocket) end

function UBackpackItemCommonAttachReceiverProxy:UnEquipAllAttachmentHandle() end
