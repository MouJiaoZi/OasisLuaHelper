---@meta

---@class ELinearConstraintMotion
---@field LCM_Free number @No constraint against this axis.
---@field LCM_Limited number @Limited freedom along this axis.
---@field LCM_Locked number @Fully constraint against this axis.
---@field LCM_MAX number
ELinearConstraintMotion = {}


---@class FConstraintBaseParams
---@field Stiffness number @Stiffness of the soft constraint. Only used when Soft Constraint is on.
---@field Damping number @Damping of the soft constraint. Only used when Soft Constraint is on.
---@field Restitution number @Controls the amount of bounce when the constraint is violated. A restitution value of 1 will bounce back with the same velocity the limit was hit. A value of 0 will stop dead.
---@field ContactDistance number @Determines how close to the limit we have to get before turning the joint on. Larger value will be more expensive, but will do a better job not violating constraints. A smaller value will be more efficient, but easier to violate.
---@field bSoftConstraint number @Whether we want to use a soft constraint (spring).
FConstraintBaseParams = {}


---Distance constraint
---@class FLinearConstraint
---@field Limit number @The distance allowed between between the two joint reference frames. Distance applies on all axes enabled (one axis means line, two axes implies circle, three axes implies sphere)
---@field XMotion ELinearConstraintMotion @Indicates the linear constraint applied along the X-axis. Free implies no constraint at all. Locked implies no movement along X is allowed. Limited implies the distance in the joint along all active axes must be less than the Distance provided.
---@field YMotion ELinearConstraintMotion @Indicates the linear constraint applied along the Y-axis. Free implies no constraint at all. Locked implies no movement along Y is allowed. Limited implies the distance in the joint along all active axes must be less than the Distance provided.
---@field ZMotion ELinearConstraintMotion @Indicates the linear constraint applied along theZX-axis. Free implies no constraint at all. Locked implies no movement along Z is allowed. Limited implies the distance in the joint along all active axes must be less than the Distance provided.
FLinearConstraint = {}


---Cone constraint
---@class FConeConstraint
---@field Swing1LimitDegrees number @Angle of movement along the XY plane. This defines the first symmetric angle of the cone.
---@field Swing2LimitDegrees number @Angle of movement along the XZ plane. This defines the second symmetric angle of the cone.
---@field Swing1Motion EAngularConstraintMotion @Indicates whether the Swing1 limit is used.
---@field Swing2Motion EAngularConstraintMotion @Indicates whether the Swing2 limit is used.
FConeConstraint = {}


---Angular roll constraint
---@class FTwistConstraint
---@field TwistLimitDegrees number @Symmetric angle of roll along the X-axis.
---@field TwistMotion EAngularConstraintMotion @Indicates whether the Swing1 limit is used.
FTwistConstraint = {}
