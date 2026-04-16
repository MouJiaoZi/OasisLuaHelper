---@meta

---@class UUAESkillAction_ModifySkillParamater: USTExtraBuffAction
---@field bOnlyOnAuthor boolean
---@field SkillParamterModifier FSkillParamaterModifier
---@field bDoReset boolean
---@field bUndo boolean
local UUAESkillAction_ModifySkillParamater = {}

function UUAESkillAction_ModifySkillParamater:ResetOnBuffRemoveLayer() end
