---@meta

---@class EAngularDriveMode
---@field SLERP number @Spherical lerp between the current orientation/velocity and the target orientation/velocity. NOTE: This will NOT work if any angular constraints are set to Locked.
---@field TwistAndSwing number @Path is decomposed into twist (roll constraint) and swing (cone constraint). Doesn't follow shortest arc and may experience gimbal lock. Does work with locked angular constraints.
EAngularDriveMode = {}


---@class FConstraintDrive
---@field Stiffness number @The spring strength of the drive. Force proportional to the position error.
---@field Damping number @The damping strength of the drive. Force proportional to the velocity error.
---@field MaxForce number @The force limit of the drive.
---@field bEnablePositionDrive number @Enables/Disables position drive (orientation if using angular drive)
---@field bEnableVelocityDrive number @Enables/Disables velocity drive (angular velocity if using angular drive)
FConstraintDrive = {}


---Linear Drive
---@class FLinearDriveConstraint
---@field PositionTarget FVector @Target position the linear drive.
---@field VelocityTarget FVector @Target velocity the linear drive.
---@field XDrive FConstraintDrive
---@field YDrive FConstraintDrive
---@field ZDrive FConstraintDrive
---@field bEnablePositionDrive number
FLinearDriveConstraint = {}


---Angular Drive
---@class FAngularDriveConstraint
---@field TwistDrive FConstraintDrive @Controls the twist (roll) constraint drive between current orientation/velocity and target orientation/velocity. This is available as long as the twist limit is set to free or limited.
---@field SwingDrive FConstraintDrive @Controls the cone constraint drive between current orientation/velocity and target orientation/velocity. This is available as long as there is at least one swing limit set to free or limited.
---@field SlerpDrive FConstraintDrive @Controls the SLERP (spherical lerp) drive between current orientation/velocity and target orientation/velocity. NOTE: This is only available when all three angular limits are either free or limited. Locking any angular limit will turn off the drive implicitly.
---@field OrientationTarget FRotator @Target orientation relative to the the body reference frame.
---@field AngularVelocityTarget FVector @Target angular velocity relative to the body reference frame.
---@field AngularDriveMode EAngularDriveMode @Whether motors use SLERP (spherical lerp) or decompose into a Swing motor (cone constraints) and Twist motor (roll constraints). NOTE: SLERP will NOT work if any of the angular constraints are locked.
FAngularDriveConstraint = {}
