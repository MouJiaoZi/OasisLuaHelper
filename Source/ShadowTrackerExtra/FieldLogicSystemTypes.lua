---@meta

---场的值类型
---@class EFieldLogicType
---@field EField_None number
---@field EField_Int32 number
---@field EField_Float number
---@field EField_FVector number
EFieldLogicType = {}


---场的类型，每个具体的逻辑场类是一个类型
---@class EFieldLogicSerializationType
---@field FieldNode_Null number
---@field FieldNode_FVector number
---@field FieldNode_FSpotVector number
EFieldLogicSerializationType = {}


---场的作用类型，场应用到什么上
---@class EFieldLogicApplyType
---@field Field_None number
---@field Field_LinearVelocity number @Linear Velocity
---@field Field_PhysicsType_Max number
EFieldLogicApplyType = {}


---场的值的衰减类型
---@class EFielddLogicFalloffType
---@field Field_FallOff_None number @None
---@field Field_Falloff_Linear number @Linear
---@field Field_Falloff_Inverse number @Inverse
---@field Field_Falloff_Squared number @Squared
---@field Field_Falloff_Logarithmic number @Logarithmic
---@field Field_Falloff_Max number
EFielddLogicFalloffType = {}
