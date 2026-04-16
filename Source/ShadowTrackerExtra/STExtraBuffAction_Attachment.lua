---@meta

---@class FFXDurationConfig
---@field FXActiveDuration number
---@field FXDeActiveDuration number
FFXDurationConfig = {}


---@class FFXDurationData
---@field FXActiveDuration number
---@field CurFXActiveDuration number
---@field FXDeActiveDuration number
---@field CurFXDeActiveDuration number
FFXDurationData = {}


---@class FBAAttachmentInstanceStruct
FBAAttachmentInstanceStruct = {}


---@class FUTBuffAttachment
---@field SocketName string
---@field bShowOnlyFirstPersonView boolean
---@field bRemoveTagAttachment boolean
---@field RemoveAttachmentTag string
---@field AttachmentTag string
FUTBuffAttachment = {}


---@class USTExtraBuffAction_Attachment: USTExtraBuffAction
---@field bDestroyBeforeAttach boolean
---@field Attachments ULuaArrayHelper<FUTBuffAttachment>
---@field FXDurationConfigList ULuaArrayHelper<FFXDurationConfig>
local USTExtraBuffAction_Attachment = {}
