---@meta

---Enum used by DataValidation plugin to see if an asset has been validated for correctness
---@class EDataValidationResult
---@field Invalid number @Asset has failed validation
---@field Valid number @Asset has passed validation
---@field NotValidated number @Asset has not yet been validated
EDataValidationResult = {}


---@class EDataValidationUsecase
---@field None number @No usecase specified
---@field Manual number @Triggered on user's demand
---@field Commandlet number @A commandlet invoked the validation
---@field Dirty number @Triggered when asset is modified (first time dirty)
---@field Opened number @Triggered when asset is opened in editor
---@field Save number @Saving a package triggered the validation
---@field PreSubmit number @Submit dialog triggered the validation
---@field Script number @Triggered by blueprint or c++
EDataValidationUsecase = {}


---@class FAsyncLoadingFailedDelegate : ULuaSingleDelegate
FAsyncLoadingFailedDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: string, Param2: EAsyncLoadingFailedReason) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAsyncLoadingFailedDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 string
---@param Param2 EAsyncLoadingFailedReason
function FAsyncLoadingFailedDelegate:Execute(Param1, Param2) end


---Delegate called on completion of async package loading
---@class FLoadPackageAsyncDelegate : ULuaSingleDelegate
FLoadPackageAsyncDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: string, Param2: UPackage, Param3: EAsyncLoadingResult) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLoadPackageAsyncDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 string
---@param Param2 UPackage
---@param Param3 EAsyncLoadingResult
function FLoadPackageAsyncDelegate:Execute(Param1, Param2, Param3) end


---Delegate types for source control package saving checks and adding package to default changelist
---@class FCheckForAutoAddDelegate : ULuaSingleDelegate
FCheckForAutoAddDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: UPackage, Param2: string) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCheckForAutoAddDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 UPackage
---@param Param2 string
function FCheckForAutoAddDelegate:Execute(Param1, Param2) end


---@class FAddPackageToDefaultChangelistDelegate : ULuaSingleDelegate
FAddPackageToDefaultChangelistDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: TCHAR) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAddPackageToDefaultChangelistDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 TCHAR
function FAddPackageToDefaultChangelistDelegate:Execute(Param1) end
