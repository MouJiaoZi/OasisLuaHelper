---@meta

---@class UUGCSideScrollingInputComponent: UUGCCustomInputComponent
local UUGCSideScrollingInputComponent = {}

---@param rate number
---@return boolean
function UUGCSideScrollingInputComponent:MoveForward(rate) end

---@param rate number
---@return boolean
function UUGCSideScrollingInputComponent:MoveRight(rate) end

---@param rate number
---@return boolean
function UUGCSideScrollingInputComponent:Turn(rate) end

---@param rate number
---@return boolean
function UUGCSideScrollingInputComponent:LookUp(rate) end

---@param Axis FVector2D
---@return boolean
function UUGCSideScrollingInputComponent:UGCMoveEvent(Axis) end

---@param Rot FVector2D
---@return boolean
function UUGCSideScrollingInputComponent:UGCLookEvent(Rot) end

---@param characterLocation FVector
---@param CauserLocation FVector
---@param FinalAng number
---@return number
function UUGCSideScrollingInputComponent:CalculateDamageAngle(characterLocation, CauserLocation, FinalAng) end

---@param ProjSpeed number
function UUGCSideScrollingInputComponent:ServerSetProjectileSpeedFactor(ProjSpeed) end
