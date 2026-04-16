---@meta

---@class ELoopMoveMode
---@field ELoopMoveMode_None number @不移动
---@field ELoopMoveMode_NoLoop number @不循环
---@field ELoopMoveMode_Forward number @正向循环
---@field ELoopMoveMode_Back number @反向循环
ELoopMoveMode = {}


---@class FSegamentData
---@field TargetLocation FVector
---@field MoveSpeed number
FSegamentData = {}


---@class USmoothActorMoveComponent: UActorComponent
---@field MoveData ULuaArrayHelper<FSegamentData>
---@field IsSetRelativeLocation boolean
---@field bAutoMoveWhenStart boolean
---@field LoopMoveMode ELoopMoveMode
---@field bIsMoving boolean
local USmoothActorMoveComponent = {}

function USmoothActorMoveComponent:StartMove() end

function USmoothActorMoveComponent:StopMove() end
