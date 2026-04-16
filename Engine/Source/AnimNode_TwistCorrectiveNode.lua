---@meta

---Reference Bone Frame
---@class FReferenceBoneFrame
---@field Bone FBoneReference
---@field Axis FAxis
FReferenceBoneFrame = {}


---This is the node that apply corrective morphtarget for twist Good example is that if you twist your neck too far right or left, you're going to see odd stretch shape of neck, This node can detect the angle and apply morphtarget curve This isn't the twist control node for bone twist
---@class FAnimNode_TwistCorrectiveNode
---@field BaseFrame FReferenceBoneFrame @Base Frame of the reference for the twist node
---@field TwistFrame FReferenceBoneFrame
---@field TwistPlaneNormalAxis FAxis @Normal of the Plane that we'd like to calculate angle calculation from in BaseFrame. Please note we're looking for Normal Axis
---@field RangeMax number
---@field RemappedMin number
---@field RemappedMax number
---@field Curve FAnimCurveParam
FAnimNode_TwistCorrectiveNode = {}
