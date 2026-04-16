---@meta

---@class UCommonPCLogicObject: UObject
local UCommonPCLogicObject = {}

---@param PlayerController ASTExtraPlayerController
---@param UISlotType EPESkillUISlotMapping
---@param SkillUIWidget UUAEUserWidget
---@param bAttachOrDetach boolean
---@return boolean
function UCommonPCLogicObject:HandleSkillUIToMainUI(PlayerController, UISlotType, SkillUIWidget, bAttachOrDetach) end
