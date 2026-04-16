---@meta

---@class EDrawDebugTrace
---@field None number
---@field ForOneFrame number
---@field ForDuration number
---@field Persistent number
EDrawDebugTrace = {}


---Enum used to indicate desired behavior for MoveComponentTo latent function.
---@class EMoveComponentAction
---@field Move number @Move to target over specified time.
---@field Stop number @If currently moving, stop.
---@field Return number @If currently moving, return to where you started, over the time elapsed so far.
EMoveComponentAction = {}


---@class EQuitPreference
---@field Quit number @Exit the game completely.
---@field Background number @Move the application to the background.
EQuitPreference = {}


---@class FGenericStruct
---@field Data number
FGenericStruct = {}


---@class FOnAssetLoaded : ULuaSingleDelegate
FOnAssetLoaded = {}

---绑定回调函数
---@param Callback fun(Obj: any, Loaded: UObject) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAssetLoaded:Bind(Callback, Obj) end

---执行委托
---@param Loaded UObject
function FOnAssetLoaded:Execute(Loaded) end


---@class FOnAssetClassLoaded : ULuaSingleDelegate
FOnAssetClassLoaded = {}

---绑定回调函数
---@param Callback fun(Obj: any, Loaded: UObject) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAssetClassLoaded:Bind(Callback, Obj) end

---执行委托
---@param Loaded UObject
function FOnAssetClassLoaded:Execute(Loaded) end


---@class UKismetSystemLibrary: UBlueprintFunctionLibrary
local UKismetSystemLibrary = {}

---Prints a stack trace to the log, so you can see how a blueprint got to this node
function UKismetSystemLibrary:StackTrace() end
