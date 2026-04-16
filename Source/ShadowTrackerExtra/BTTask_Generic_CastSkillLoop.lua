---@meta

---@class FCustomBlackboardProperty_FloatAttribute
---@field bUseAttribute boolean
---@field FloatValue FCustomBlackboardProperty_Float
---@field FloatAttributeValueContainer FGameAttributeContainer
FCustomBlackboardProperty_FloatAttribute = {}


---@class FCustomBlackboardProperty_IntAttribute
---@field bUseAttribute boolean
---@field IntValue FCustomBlackboardProperty_Int
---@field IntAttributeValueContainer FGameAttributeContainer
FCustomBlackboardProperty_IntAttribute = {}


---@class UBTTask_Generic_CastSkillLoop: UBTTaskNode
---@field SlotGameplayTag FGameplayTag
---@field SkillTarget FBlackboardKeySelector
---@field EachTimeInterval FCustomBlackboardProperty_FloatAttribute
---@field RoundInterval FCustomBlackboardProperty_FloatAttribute
---@field TimesPerRound FCustomBlackboardProperty_IntAttribute
---@field RoundCount FCustomBlackboardProperty_IntAttribute
---@field bCanCastWithoutTarget boolean
local UBTTask_Generic_CastSkillLoop = {}
