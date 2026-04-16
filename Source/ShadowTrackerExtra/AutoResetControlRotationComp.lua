---@meta

---@class UAutoResetControlRotationComp: UActorComponent
---@field LerpSpeed number
---@field AutoResetDelay number
---@field RotationOffset FRotator
---@field bCheckFaceRotation boolean
---@field bDisableFaceRotation boolean
local UAutoResetControlRotationComp = {}

---@param Pawn AActor
function UAutoResetControlRotationComp:HandlePawnGetOn(Pawn) end

---@param Pawn AActor
function UAutoResetControlRotationComp:HandlePawnGetOff(Pawn) end
