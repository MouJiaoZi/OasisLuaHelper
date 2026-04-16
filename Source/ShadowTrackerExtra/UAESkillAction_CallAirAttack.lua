---@meta

---@class FAirAttackConfig
---@field AttackLastingTime number
---@field AttackAreaRadius number
---@field TotalBombs number
---@field BombsRadius number
---@field BombActorTemplate AAirAttackBombActor
FAirAttackConfig = {}


---@class FAirAttackInstanceData
FAirAttackInstanceData = {}


---@class UUAESkillAction_CallAirAttack: UUAESkillAction
---@field FlightHeight number
---@field SeaLevelHeight number
---@field AirAttackConfig FAirAttackConfig
local UUAESkillAction_CallAirAttack = {}
