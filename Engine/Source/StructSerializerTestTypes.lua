---@meta

---Test structure for numeric properties.
---@class FStructSerializerNumericTestStruct
---@field Int8 number
---@field Int16 number
---@field Int32 number
---@field Int64 number
---@field UInt8 number
---@field UInt16 number
---@field UInt32 number
---@field UInt64 number
---@field Float number
---@field Double number
FStructSerializerNumericTestStruct = {}


---Test structure for boolean properties.
---@class FStructSerializerBooleanTestStruct
---@field BoolFalse boolean
---@field BoolTrue boolean
---@field Bitfield number
FStructSerializerBooleanTestStruct = {}


---Test structure for UObject properties.
---@class FStructSerializerObjectTestStruct
---@field Class UObject
FStructSerializerObjectTestStruct = {}


---Test structure for properties of various built-in types.
---@class FStructSerializerBuiltinTestStruct
---@field Guid FGuid
---@field Name string
---@field String string
---@field Rotator FRotator
---@field Text string
---@field Vector FVector
FStructSerializerBuiltinTestStruct = {}


---Test structure for array properties.
---@class FStructSerializerArrayTestStruct
---@field Int32Array ULuaArrayHelper<number>
---@field VectorArray ULuaArrayHelper<FVector>
FStructSerializerArrayTestStruct = {}


---Test structure for map properties.
---@class FStructSerializerMapTestStruct
---@field IntToStr ULuaMapHelper<number, string>
---@field StrToStr ULuaMapHelper<string, string>
---@field StrToVec ULuaMapHelper<string, FVector>
FStructSerializerMapTestStruct = {}


---Test structure for all supported types.
---@class FStructSerializerTestStruct
---@field Numerics FStructSerializerNumericTestStruct
---@field Booleans FStructSerializerBooleanTestStruct
---@field Objects FStructSerializerObjectTestStruct
---@field Builtins FStructSerializerBuiltinTestStruct
---@field Arrays FStructSerializerArrayTestStruct
---@field Maps FStructSerializerMapTestStruct
FStructSerializerTestStruct = {}
