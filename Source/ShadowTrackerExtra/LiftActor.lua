---@meta

---@class ALiftActor: AUAERegionActor, IDynamicMovementBaseInterface, ILiftControlInterface
---@field MoveDir FVector
local ALiftActor = {}

---@param NewMoveDir FVector
function ALiftActor:SetMoveDir(NewMoveDir) end

function ALiftActor:StartMove() end

function ALiftActor:StopMove() end
