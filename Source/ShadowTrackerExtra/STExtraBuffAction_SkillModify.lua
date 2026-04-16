---@meta

---@class FSkillModifyTarget
---@field TargetType string
---@field TargetIndex number
FSkillModifyTarget = {}


---@class USTExtraBuffAction_SkillModify: UUAESkillActionBP
---@field AuthorityOnly boolean
---@field SkillName string
---@field SkillTarget FSkillModifyTarget
---@field IsSkillGroup boolean
---@field ModifierOp EAttrOperator
---@field ModifierValue number
---@field AutoRemove boolean
---@field bUseDebugRole boolean
---@field DebugRole ENetRole
local USTExtraBuffAction_SkillModify = {}

function USTExtraBuffAction_SkillModify:RemoveModifiers() end
