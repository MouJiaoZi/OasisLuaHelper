---@meta

---Control Constraint Type
---@class EControlConstraint
---@field Orientation number @Rotation constraint.
---@field Translation number @Translation constraint.
---@field MAX number @Max Number.
EControlConstraint = {}


---Constraint Transform Type. - currently unused
---@class EConstraintTransform
---@field Absolute number @Absolute value.
---@field Relative number @Apply relative transform from ref pose.
EConstraintTransform = {}


---Rig Controller for bone transform *
---@class FNode
---@field Name string @Name of the original node. We don't allow to change this. This is used for identity.*
---@field ParentName string @We save Parent Node but if the parent node is removed, it will reset to root
---@field Transform FTransform @Absolute transform of the node. Hoping to use this data in the future to render
---@field DisplayName string @This is Display Name where it will be used to display in Retarget Manager. This name has to be unique.
---@field bAdvanced boolean
FNode = {}


---@class FRigTransformConstraint
---@field TranformType EConstraintTransform @What transform type *
---@field ParentSpace string @Parent space that are define *
---@field Weight number @Weight of the influence - for future
FRigTransformConstraint = {}


---This defines what constraint it is defined
---@class FTransformBaseConstraint
---@field TransformConstraints ULuaArrayHelper<FRigTransformConstraint> @What transform type *
FTransformBaseConstraint = {}


---This is a mapping table between bone in a particular skeletal mesh and bone of this skeleton set.
---@class FTransformBase
---@field Node string
FTransformBase = {}


---@class FGetParentIndex : ULuaSingleDelegate
FGetParentIndex = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: string) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGetParentIndex:Bind(Callback, Obj) end

---执行委托
---@param Param1 string
function FGetParentIndex:Execute(Param1) end


---URig : that has rigging data for skeleton - used for retargeting - support to share different animations
---@class URig: UObject
---@field TransformBases ULuaArrayHelper<FTransformBase> @Skeleton bone tree - each contains name and parent index*
---@field Nodes ULuaArrayHelper<FNode> @Skeleton bone tree - each contains name and parent index*
local URig = {}
