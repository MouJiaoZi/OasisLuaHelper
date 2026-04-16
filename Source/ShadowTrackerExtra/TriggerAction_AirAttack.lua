---@meta

---@class FMakeAirAttackCfg
---@field ActorTemplate AActor
---@field SpawnOffsetDistance number
FMakeAirAttackCfg = {}


---在pawn身边空袭
---@class UTriggerAction_AirAttack: UTriggerAction
---@field Cfg FMakeAirAttackCfg
---@field PawnLocation FVector
local UTriggerAction_AirAttack = {}
