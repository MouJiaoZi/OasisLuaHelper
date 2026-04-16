---@meta

---@class FCustomMovementSequenceParams
---@field bEnableSlide boolean
---@field bKeepFloor boolean
---@field MoveModeOnExit EMovementMode
---@field bShouldSkipReplicateMovement boolean
FCustomMovementSequenceParams = {}


---基于技能Sequence的移动模式
---@class UCustomMovementSequence: UCustomMovementBase
---@field ServerSequenceTrustThreshold number
---@field SimulateAllowableSeqPositionError number
---@field SimulateAllowableDistanceError number
local UCustomMovementSequence = {}

---@param deltaTime number
---@param Iterations number
function UCustomMovementSequence:PhysCustom(deltaTime, Iterations) end

---@param SequenceStartPosition number
---@param SequenceEndPosition number
---@param DeltaTransform FTransform
---@param IsFinish boolean
---@return number
function UCustomMovementSequence:GenerateTestData(SequenceStartPosition, SequenceEndPosition, DeltaTransform, IsFinish) end
