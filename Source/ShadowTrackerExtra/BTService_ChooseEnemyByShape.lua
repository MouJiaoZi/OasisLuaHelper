---@meta

---@class FShapeRangeParam
---@field CircleR number
---@field SectorR number
---@field SectorDegree number
FShapeRangeParam = {}


---@class FWeaponTypeToRangeWithPawnState
---@field WeaponType EWeaponTypeNew
---@field StateRange ULuaMapHelper<EPawnState, FShapeRangeParam>
FWeaponTypeToRangeWithPawnState = {}


---@class UBTService_ChooseEnemyByShape: UBTService_ChooseEnemyByShapeBase
---@field WeaponTypeToRangeWithPawnStates ULuaArrayHelper<FWeaponTypeToRangeWithPawnState>
---@field bUseVisibilityTrace boolean
---@field bJudgeDistWhenValidateCurrentEnemy boolean
local UBTService_ChooseEnemyByShape = {}
