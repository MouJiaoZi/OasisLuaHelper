---@meta

---@class FMeleeAttackInitComboStruct
FMeleeAttackInitComboStruct = {}


---@class UUAESkillAction_MeleeAttackInitCombo: UUAESkillAction
---@field bMoveStopMontageOnPostCombo boolean
---@field bPoseChangeStopMontageOnPostCombo boolean
---@field EndPhaseID number
---@field NextComboPhaseID number
---@field ComboLongPressTimeThreshold number
---@field OptionalDamageStrategyClass UMeleeAttackDamageStrategyBase
---@field ChargePhaseID number
---@field ChargeLongPressTimeThreshold number
---@field NextComboJumpConditions ULuaArrayHelper<UUAESkillCondition>
local UUAESkillAction_MeleeAttackInitCombo = {}
