---@meta

---@class FChipAttachmentConfig
---@field SlotSocket FSlotSocket
---@field AttachmentName string
---@field SlotWeight number
FChipAttachmentConfig = {}


---@class UOccupationChipItemHandle: UOccupationHandleBase
---@field ChipAttachmentConfig FChipAttachmentConfig
---@field OccupationSkillLevel number
local UOccupationChipItemHandle = {}

---@param Target FBattleItemUseTarget
---@param hasTarget boolean
---@return FBattleItemUseTarget
function UOccupationChipItemHandle:FilterCardItemHandle(Target, hasTarget) end
