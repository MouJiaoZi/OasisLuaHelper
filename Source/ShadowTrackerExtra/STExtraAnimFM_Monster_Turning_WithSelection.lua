---@meta

---@class ETWSTurnState
---@field ETWSTS_RIGHT number
---@field ETWSTS_LEFT number
---@field ETWSTS_NONE number
ETWSTurnState = {}


---@class FSTExtraAnimFM_Monster_Turning_WithSelection
---@field AnimTurnLeftMap ULuaMapHelper<EPawnState, UAnimMontage>
---@field AnimTurnRightMap ULuaMapHelper<EPawnState, UAnimMontage>
---@field bClearAllStateWhenChangeDirection boolean
---@field bFindFirstMatch boolean
---@field bDonotPlayIfNoneFound boolean
---@field StopMontageBlend number
FSTExtraAnimFM_Monster_Turning_WithSelection = {}
