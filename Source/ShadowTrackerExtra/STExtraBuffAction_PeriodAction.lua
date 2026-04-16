---@meta

---@class FBAPeriodInstanceStruct
FBAPeriodInstanceStruct = {}


---周期调用容器 * @AI_Role: 这是一个组合器（Composite）。它可以包含另一个 UUTSkillAction，并周期的执行它。 * @AI_Usage: 1. 当用户的需求包含 "周期" 逻辑时，必须使用此类。 2. [递归规则] 在 "Action" 变量中，你需要继续填入具体的 UUTSkillAction 子类（例如 USTExtraBuffAction_TakeDamage, USTExtraBuffAction_AttrModify）甚至是另一个 USTExtraBuffAction_PeriodAction。 * @AI_Tags: 组合, Period, Periodic, Composite
---@class USTExtraBuffAction_PeriodAction: USTExtraBuffAction
---@field Interval number
---@field CurrentTickDeltaTime number
---@field MaxExecuteTimes number
local USTExtraBuffAction_PeriodAction = {}
