---@meta

---@class FSubAnimConfig_FC
---@field SubAnimSlotName string
---@field SubAnimInstance UAnimInstance
FSubAnimConfig_FC = {}


---@class UFC_SubAnimSetOnBegin: UFeatureCustomModuleBP
---@field SubAnimConfigs ULuaArrayHelper<FSubAnimConfig_FC>
local UFC_SubAnimSetOnBegin = {}

function UFC_SubAnimSetOnBegin:CheckAndReplaceSubAnim() end

---@param ChangeCharacter ASTExtraBaseCharacter
function UFC_SubAnimSetOnBegin:OnAnimInstanceChange(ChangeCharacter) end
