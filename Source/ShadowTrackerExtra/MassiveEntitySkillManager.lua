---@meta

---技能基类
---@class UMassiveEntitySkillManager: UActorComponent, IDamageableInterface
---@field SkillActions ULuaArrayHelper<UMassiveEntitySkillAction>
---@field SkillCD number
---@field SkillTag FGameplayTag
local UMassiveEntitySkillManager = {}

---@param Pawn APawn
function UMassiveEntitySkillManager:Init(Pawn) end

function UMassiveEntitySkillManager:Reset() end
