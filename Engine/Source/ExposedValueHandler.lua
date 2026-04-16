---@meta

---@class EExposedType
---@field None number @None
---@field Bool number @Bool
---@field Float number @Float
---@field Byte number @Byte
---@field Enum number @Enum
---@field Int number @Int
---@field Int64 number @Int64
---@field Uint64 number @Uint64
EExposedType = {}


---@class EExposedCompareType
---@field None number @None
---@field EqualEqual number @EqualEqual
---@field NotEqual number @NotEqual
---@field Greater number @Greater
---@field GreaterEqual number @GreaterEqual
---@field Less number @Less
---@field LessEqual number @LessEqual
EExposedCompareType = {}


---@class FExposedNode
---@field ExposedType EExposedType
FExposedNode = {}


---@class FExposedNode_Operand
---@field DirectValue string
---@field SourcePropertyPath ULuaArrayHelper<string>
FExposedNode_Operand = {}


---@class FExposedNode_Operator
---@field InputNodeNum number
FExposedNode_Operator = {}
