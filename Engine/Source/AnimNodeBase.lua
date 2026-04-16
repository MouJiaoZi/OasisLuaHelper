---@meta

---@class ENodeChangeState
---@field None number
---@field BlendListNodeEnter number
---@field BlendListNodeLeave number
---@field ReinitNode number
ENodeChangeState = {}


---The display mode of editable values on an animation node.
---@class EPinHidingMode
---@field NeverAsPin number @Never show this property as a pin, it is only editable in the details panel (default for everything but FPoseLink properties).
---@field PinHiddenByDefault number @Hide this property by default, but allow the user to expose it as a pin via the details panel.
---@field PinShownByDefault number @Show this property as a pin by default, but allow the user to hide it via the details panel.
---@field AlwaysAsPin number @Always show this property as a pin; it never makes sense to edit it in the details panel (default for FPoseLink properties).
EPinHidingMode = {}


---@class EPostCopyOperation
---@field None number
---@field LogicalNegateBool number
EPostCopyOperation = {}


---@class ECopyType
---@field MemCopy number
---@field BoolProperty number
---@field StructProperty number
---@field ObjectProperty number
ECopyType = {}


---A pose link to another node
---@class FPoseLinkBase
---@field LinkID number @Serialized link ID, used to build the non-serialized pointer map.
FPoseLinkBase = {}


---A local-space pose link to another node
---@class FPoseLink
FPoseLink = {}


---A component-space pose link to another node
---@class FComponentSpacePoseLink
FComponentSpacePoseLink = {}


---@class FExposedValueCopyRecord
---@field SourcePropertyName string
---@field SourceSubPropertyName string
---@field SourceArrayIndex number
---@field DestArrayIndex number
---@field Size number
---@field bInstanceIsTarget boolean
---@field bFastPathExtend boolean
---@field PostCopyOperation EPostCopyOperation
---@field CopyType ECopyType
---@field SourceSubStructPropertyNameArray ULuaArrayHelper<string>
---@field CachedSourceStructSubPropertyArray ULuaArrayHelper<UProperty>
---@field RootExposedNodeJsonStr string
---@field RootExposedNodeStackData ULuaArrayHelper<number>
---@field bExposedOperationValid boolean
FExposedValueCopyRecord = {}


---@class FExposedValueHandler
---@field BoundFunction string
---@field CopyRecords ULuaArrayHelper<FExposedValueCopyRecord>
FExposedValueHandler = {}


---This is the base of all runtime animation nodes To create a new animation node: Create a struct derived from FAnimNode_Base - this is your runtime node Create a class derived from UAnimGraphNode_Base, containing an instance of your runtime node as a member - this is your visual/editor-only node
---@class FAnimNode_Base
---@field NodeUID number
---@field EvaluateGraphExposedInputs FExposedValueHandler
---@field bEnableAsyncInitNode boolean
---@field NodeTag string
FAnimNode_Base = {}
