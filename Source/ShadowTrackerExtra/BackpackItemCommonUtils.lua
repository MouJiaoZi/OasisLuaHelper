---@meta

---@class UBackpackItemCommonUtils: UBlueprintFunctionLibrary
local UBackpackItemCommonUtils = {}

---@param ReceiverHandle UItemHandleBase
---@param ProviderHandle UItemHandleBase
---@param bConsiderSocketOccupy boolean
---@return EBackpackItemCommonSocketTypeGlobal
function UBackpackItemCommonUtils:UtilsGetSocketSupportTargetAttachmentHandle(ReceiverHandle, ProviderHandle, bConsiderSocketOccupy) end

---@param ReceiverHandle UItemHandleBase
---@param ProviderHandle UItemHandleBase
---@param SpecificSocket EBackpackItemCommonSocketTypeGlobal
---@param bConsiderSocketOccupy boolean
---@return boolean
function UBackpackItemCommonUtils:UtilsCheckSpecificSocketSupportTargetAttachmentHandle(ReceiverHandle, ProviderHandle, SpecificSocket, bConsiderSocketOccupy) end

---@param ReceiverHandle UItemHandleBase
---@param ProviderHandle UItemHandleBase
---@param SpecificSocket EBackpackItemCommonSocketTypeGlobal
---@return boolean
function UBackpackItemCommonUtils:UtilsEquipTargetAttachmentHandle(ReceiverHandle, ProviderHandle, SpecificSocket) end

---@param ProviderHandle UItemHandleBase
---@return boolean
function UBackpackItemCommonUtils:UtilsUnEquipTargetAttachmentHandle(ProviderHandle) end

---@param ReceiverHandle UItemHandleBase
---@param TargetSocket EBackpackItemCommonSocketTypeGlobal
---@return boolean
function UBackpackItemCommonUtils:UtilsUnEquipTargetSocketAttachmentHandle(ReceiverHandle, TargetSocket) end

---@param ItemHandle UItemHandleBase
---@param TargetItemHandle UItemHandleBase
---@param UseReason EBattleItemUseReason
---@return boolean
function UBackpackItemCommonUtils:UtilsHandleUse(ItemHandle, TargetItemHandle, UseReason) end

---@param ItemHandle UItemHandleBase
---@param DisuseReason EBattleItemDisuseReason
function UBackpackItemCommonUtils:UtilsHandleDisuse(ItemHandle, DisuseReason) end

---@param ItemHandle UItemHandleBase
---@param DropReason EBattleItemDropReason
function UBackpackItemCommonUtils:UtilsHandleDrop(ItemHandle, DropReason) end
