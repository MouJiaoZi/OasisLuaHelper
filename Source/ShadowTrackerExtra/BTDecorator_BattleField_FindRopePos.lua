---@meta

---@class FHardPointRopeLocParams
---@field EnterHPLoc ULuaArrayHelper<FVector>
---@field LeaveHPLoc ULuaArrayHelper<FVector>
FHardPointRopeLocParams = {}


---AI使用绳索（大战场）
---@class UBTDecorator_BattleField_FindRopePos: UBTDecorator
---@field OutTargetPosition any
---@field InCurOccupyActor any
---@field OutEnterHPLoc any
---@field OutLeaveHPLoc any
---@field OccupyRopeSartEndPos ULuaMapHelper<number, FHardPointRopeLocParams>
local UBTDecorator_BattleField_FindRopePos = {}
