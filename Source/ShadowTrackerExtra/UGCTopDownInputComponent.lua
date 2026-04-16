---@meta

---@class UUGCTopDownInputComponent: UUGCCustomInputComponent
local UUGCTopDownInputComponent = {}

---@param rate number
---@return boolean
function UUGCTopDownInputComponent:MoveForward(rate) end

---@param rate number
---@return boolean
function UUGCTopDownInputComponent:MoveRight(rate) end

---@param rate number
---@return boolean
function UUGCTopDownInputComponent:Turn(rate) end

---@param rate number
---@return boolean
function UUGCTopDownInputComponent:LookUp(rate) end

---@param Axis FVector2D
---@return boolean
function UUGCTopDownInputComponent:UGCMoveEvent(Axis) end

---@param Rot FVector2D
---@return boolean
function UUGCTopDownInputComponent:UGCLookEvent(Rot) end

---@param characterLocation FVector
---@param CauserLocation FVector
---@param FinalAng number
---@return number
function UUGCTopDownInputComponent:CalculateDamageAngle(characterLocation, CauserLocation, FinalAng) end
