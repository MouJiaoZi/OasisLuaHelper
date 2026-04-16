---@meta

---Controls the movement behaviour
---@class EInterpToBehaviourType
---@field OneShot number @Move to destination and stop
---@field OneShot_Reverse number @Move to destination, return and stop
---@field Loop_Reset number @Reset back to start when reaching the end
---@field PingPong number @Repeatedly lerp from start to end and back
EInterpToBehaviourType = {}


---@class FInterpControlPoint
---@field PositionControlPoint FVector
---@field bPositionIsRelative boolean
FInterpControlPoint = {}


---Move the root component between a series of points over a given time *
---@class UInterpToMovementComponent: UMovementComponent
---@field Duration number
---@field bPauseOnImpact number @If true, will pause movement on impact. If false it will behave as if the end of the movement range was reached based on the BehaviourType.
---@field BehaviourType EInterpToBehaviourType
---@field bForceSubStepping number @If true, forces sub-stepping to break up movement into discrete smaller steps to improve accuracy of the trajectory. Objects that move in a straight line typically do *not* need to set this, as movement always uses continuous collision detection (sweeps) so collision is not missed. Sub-stepping is automatically enabled when under the effects of gravity or when homing towards a target.
---@field OnInterpToReverse FOnInterpToReverseDelegate @Called when InterpTo impacts something and reverse is enabled.
---@field OnInterpToStop FOnInterpToStopDelegate @Called when InterpTo has come to a stop.
---@field OnWaitBeginDelegate FOnInterpToWaitBeginDelegate @Called when InterpTo has come to a stop but will resume when possible.
---@field OnWaitEndDelegate FOnInterpToWaitEndDelegate @Called when InterpTo has resumed following a stop.
---@field OnResetDelegate FOnInterpToResetDelegate @Called when InterpTo reached the end and reset back to start .
---@field MaxSimulationTimeStep number @Max time delta for each discrete simulation step. Lowering this value can address issues with fast-moving objects or complex collision scenarios, at the cost of performance. WARNING: if (MaxSimulationTimeStep * MaxSimulationIterations) is too low for the min framerate, the last simulation step may exceed MaxSimulationTimeStep to complete the simulation.
---@field MaxSimulationIterations number @Max number of iterations used for each discrete simulation step. Increasing this value can address issues with fast-moving objects or complex collision scenarios, at the cost of performance. WARNING: if (MaxSimulationTimeStep * MaxSimulationIterations) is too low for the min framerate, the last simulation step may exceed MaxSimulationTimeStep to complete the simulation.
---@field ControlPoints ULuaArrayHelper<FInterpControlPoint>
local UInterpToMovementComponent = {}

---Clears the reference to UpdatedComponent, fires stop event, and stops ticking.
---@param HitResult FHitResult
function UInterpToMovementComponent:StopSimulating(HitResult) end

---@param InitialDirection number
function UInterpToMovementComponent:RestartMovement(InitialDirection) end

function UInterpToMovementComponent:FinaliseControlPoints() end
