---@meta

---Container for properties of a physics constraint that can be easily swapped at runtime. This is useful for switching different setups when going from ragdoll to standup for example
---@class FConstraintProfileProperties
---@field ProjectionLinearTolerance number @Linear tolerance value in world units. If the distance error exceeds this tolerence limit, the body will be projected.
---@field ProjectionAngularTolerance number @Angular tolerance value in world units. If the distance error exceeds this tolerence limit, the body will be projected.
---@field LinearBreakThreshold number @Force needed to break the distance constraint.
---@field AngularBreakThreshold number @Torque needed to break the joint.
---@field LinearLimit FLinearConstraint
---@field ConeLimit FConeConstraint
---@field TwistLimit FTwistConstraint
---@field LinearDrive FLinearDriveConstraint
---@field AngularDrive FAngularDriveConstraint
---@field bDisableCollision number
---@field bParentDominates number
---@field bEnableProjection number @If distance error between bodies exceeds 0.1 units, or rotation error exceeds 10 degrees, body will be projected to fix this. For example a chain spinning too fast will have its elements appear detached due to velocity, this will project all bodies so they still appear attached to each other.
---@field bAngularBreakable number @Whether it is possible to break the joint with angular force.
---@field bLinearBreakable number @Whether it is possible to break the joint with linear force.
FConstraintProfileProperties = {}


---Container for a physics representation of an object.
---@class FConstraintInstance
---@field JointName string @Name of bone that this joint is associated with.
---@field ConstraintBone1 string @Name of first bone (body) that this constraint is connecting. This will be the 'child' bone in a PhysicsAsset.
---@field ConstraintBone2 string @Name of second bone (body) that this constraint is connecting. This will be the 'parent' bone in a PhysicsAset.
---@field Pos1 FVector @Location of constraint in Body1 reference frame.
---@field PriAxis1 FVector @Primary (twist) axis in Body1 reference frame.
---@field SecAxis1 FVector @Seconday axis in Body1 reference frame. Orthogonal to PriAxis1.
---@field Pos2 FVector @Location of constraint in Body2 reference frame.
---@field PriAxis2 FVector @Primary (twist) axis in Body2 reference frame.
---@field SecAxis2 FVector @Seconday axis in Body2 reference frame. Orthogonal to PriAxis2.
---@field AngularRotationOffset FRotator @Specifies the angular offset between the two frames of reference. By default limit goes from (-Angle, +Angle) This allows you to bias the limit for swing1 swing2 and twist.
---@field bScaleLinearLimits number @If true, linear limits scale using the absolute min of the 3d scale of the owning component
---@field ProfileInstance FConstraintProfileProperties
FConstraintInstance = {}
