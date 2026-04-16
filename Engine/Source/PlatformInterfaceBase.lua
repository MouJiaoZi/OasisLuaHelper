---@meta

---An enum for the types of data used in a PlatformInterfaceData struct.
---@class EPlatformInterfaceDataType
---@field PIDT_None number @No data type specified.
---@field PIDT_Int number
---@field PIDT_Float number
---@field PIDT_String number
---@field PIDT_Object number
---@field PIDT_Custom number @A custom type where more than one value may be filled out.
---@field PIDT_MAX number
EPlatformInterfaceDataType = {}


---Struct that encompasses the most common types of data. This is the data payload of PlatformInterfaceDelegateResult.
---@class FPlatformInterfaceData
---@field DataName string @An optional tag for this data
---@field Type EPlatformInterfaceDataType @Specifies which value is valid for this structure
---@field IntValue number @Various typed result values
---@field FloatValue number
---@field StringValue string
FPlatformInterfaceData = {}


---Generic structure for returning most any kind of data from C++ to delegate functions
---@class FPlatformInterfaceDelegateResult
---@field bSuccessful boolean @This is always usable, no matter the type
---@field Data any @The result actual data
FPlatformInterfaceDelegateResult = {}


---Helper struct, since UnrealScript doesn't allow arrays of arrays, but arrays of structs of arrays are okay.
---@class FDelegateArray
---@field Delegates ULuaArrayHelper<FPlatformInterfaceDelegate>
FDelegateArray = {}


---Generic platform interface delegate signature
---@class FPlatformInterfaceDelegate : ULuaSingleDelegate
FPlatformInterfaceDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Result: FPlatformInterfaceDelegateResult) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPlatformInterfaceDelegate:Bind(Callback, Obj) end

---执行委托
---@param Result FPlatformInterfaceDelegateResult
function FPlatformInterfaceDelegate:Execute(Result) end


---@class UPlatformInterfaceBase: UObject
---@field AllDelegates ULuaArrayHelper<FDelegateArray> @Array of delegate arrays. Only add and remove via helper functions, and call via the helper delegate call function
local UPlatformInterfaceBase = {}
