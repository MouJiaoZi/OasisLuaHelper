---@meta

---@class EBackpackItemCommonAttachTypeGlobal
---@field EBackpackItemCommonAttachTypeGlobal_0 number
---@field EBackpackItemCommonAttachTypeGlobal_1 number
---@field EBackpackItemCommonAttachTypeGlobal_2 number
---@field EBackpackItemCommonAttachTypeGlobal_3 number
---@field EBackpackItemCommonAttachTypeGlobal_4 number
---@field EBackpackItemCommonAttachTypeGlobal_5 number
---@field EBackpackItemCommonAttachTypeGlobal_6 number
---@field EBackpackItemCommonAttachTypeGlobal_7 number
---@field EBackpackItemCommonAttachTypeGlobal_8 number
---@field EBackpackItemCommonAttachTypeGlobal_9 number
---@field EBackpackItemCommonAttachTypeGlobal_MAX number
EBackpackItemCommonAttachTypeGlobal = {}


---@class EBackpackItemCommonSocketTypeGlobal
---@field EBackpackItemCommonSocketTypeGlobal_1 number
---@field EBackpackItemCommonSocketTypeGlobal_2 number
---@field EBackpackItemCommonSocketTypeGlobal_3 number
---@field EBackpackItemCommonSocketTypeGlobal_4 number
---@field EBackpackItemCommonSocketTypeGlobal_5 number
---@field EBackpackItemCommonSocketTypeGlobal_6 number
---@field EBackpackItemCommonSocketTypeGlobal_7 number
---@field EBackpackItemCommonSocketTypeGlobal_8 number
---@field EBackpackItemCommonSocketTypeGlobal_9 number
---@field EBackpackItemCommonSocketTypeGlobal_MAX number
EBackpackItemCommonSocketTypeGlobal = {}


---@class FBackpackItemCommonSocketConfigItem
---@field SupportAttachmentTypeList ULuaArrayHelper<EBackpackItemCommonAttachTypeGlobal>
---@field SupportAnyAttachmentType boolean
---@field SupportAttachmentIDList ULuaArrayHelper<number>
---@field SupportAnyAttachmentIDType boolean
FBackpackItemCommonSocketConfigItem = {}


---@class FBackpackItemCommonRecvProdConfig_Recv
---@field SocketConfigMap ULuaMapHelper<EBackpackItemCommonSocketTypeGlobal, FBackpackItemCommonSocketConfigItem>
---@field bDropAllAttachmentsOnDrop boolean
FBackpackItemCommonRecvProdConfig_Recv = {}


---@class FBackpackItemCommonRecvProdConfig_Prod
---@field AttachTypeGlobal EBackpackItemCommonAttachTypeGlobal
---@field AttrModifyList ULuaArrayHelper<FAttrModifyItem>
FBackpackItemCommonRecvProdConfig_Prod = {}


---@class FBackpackItemCommonRecvProdConfig
---@field ReceiverConfig FBackpackItemCommonRecvProdConfig_Recv
---@field ProviderConfig FBackpackItemCommonRecvProdConfig_Prod
FBackpackItemCommonRecvProdConfig = {}
