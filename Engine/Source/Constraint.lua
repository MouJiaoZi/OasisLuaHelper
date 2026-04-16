---@meta

---Constraint Types
---@class EConstraintType
---@field Transform number @Transform Constraint
---@field Aim number @Aim Constraint
---@field MAX number @MAX - invalid
EConstraintType = {}


---Filter Option Per Axis This is used to filter per axis for constraint options
---@class FFilterOptionPerAxis
---@field bX boolean
---@field bY boolean
---@field bZ boolean
FFilterOptionPerAxis = {}


---A description of how to apply a simple transform constraint
---@class FConstraintDescription
---@field bTranslation boolean
---@field bRotation boolean
---@field bScale boolean
---@field bParent boolean
---@field TranslationAxes FFilterOptionPerAxis
---@field RotationAxes FFilterOptionPerAxis
---@field ScaleAxes FFilterOptionPerAxis
FConstraintDescription = {}


---This is the offset for constraint Saves individual component (translation, rotation, scale or parent) Used by Constraint for saving the offset, and recovering the offset
---@class FConstraintOffset
---@field Translation FVector
---@field Rotation FQuat
---@field Scale FVector
---@field Parent FTransform
FConstraintOffset = {}


---@class FTransformConstraint
---@field Operator FConstraintDescription
---@field SourceNode string
---@field TargetNode string
---@field Weight number
---@field bMaintainOffset boolean @When the constraint is first applied, maintain the offset from the target node
FTransformConstraint = {}


---A description of how to apply a simple transform constraint
---@class FConstraintDescriptionEx
---@field AxesFilterOption FFilterOptionPerAxis
FConstraintDescriptionEx = {}
