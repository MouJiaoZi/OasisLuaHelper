---@meta

---@class FNavAvoidanceData
FNavAvoidanceData = {}


---@class UAvoidanceManager: UObject, FSelfRegisteringExec
---@field DefaultTimeToLive number @How long an avoidance UID must not be updated before the system will put it back in the pool. Actual delay is up to 150% of this value.
---@field LockTimeAfterAvoid number @How long to stay on course (barring collision) after making an avoidance move
---@field LockTimeAfterClean number @How long to stay on course (barring collision) after making an unobstructed move (should be > 0.0, but can be less than a full frame)
---@field DeltaTimeToPredict number @This is how far forward in time (seconds) we extend our velocity cones and thus our prediction
---@field ArtificialRadiusExpansion number @Multiply the radius of all STORED avoidance objects by this value to allow a little extra room for avoidance maneuvers.
---@field TestHeightDifference_DEPRECATED number @Deprecated - use HeightCheckMargin, generally a much smaller value.
---@field HeightCheckMargin number @Allowable height margin between obstacles and agents. This is over and above the difference in agent heights.
local UAvoidanceManager = {}

---Get the number of avoidance objects currently in the manager.
---@return number
function UAvoidanceManager:GetObjectCount() end

---Get appropriate UID for use when reporting to this function or requesting RVO assistance.
---@return number
function UAvoidanceManager:GetNewAvoidanceUID() end

---Register with the given avoidance manager.
---@param MovementComp UMovementComponent
---@param AvoidanceWeight number
---@return boolean
function UAvoidanceManager:RegisterMovementComponent(MovementComp, AvoidanceWeight) end

---Calculate avoidance velocity for component (avoids collisions with the supplied component)
---@param MovementComp UMovementComponent
---@return FVector
function UAvoidanceManager:GetAvoidanceVelocityForComponent(MovementComp) end
