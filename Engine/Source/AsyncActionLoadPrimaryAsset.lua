---@meta

---@class FOnPrimaryAssetLoaded : ULuaMulticastDelegate
FOnPrimaryAssetLoaded = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Loaded: UObject) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPrimaryAssetLoaded:Add(Callback, Obj) end

---触发 Lua 广播
---@param Loaded UObject
function FOnPrimaryAssetLoaded:Broadcast(Loaded) end


---@class FOnPrimaryAssetClassLoaded : ULuaMulticastDelegate
FOnPrimaryAssetClassLoaded = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Loaded: UObject) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPrimaryAssetClassLoaded:Add(Callback, Obj) end

---触发 Lua 广播
---@param Loaded UObject
function FOnPrimaryAssetClassLoaded:Broadcast(Loaded) end


---@class FOnPrimaryAssetListLoaded : ULuaMulticastDelegate
FOnPrimaryAssetListLoaded = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Loaded: ULuaArrayHelper<UObject>) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPrimaryAssetListLoaded:Add(Callback, Obj) end

---触发 Lua 广播
---@param Loaded ULuaArrayHelper<UObject>
function FOnPrimaryAssetListLoaded:Broadcast(Loaded) end


---@class FOnPrimaryAssetClassListLoaded : ULuaMulticastDelegate
FOnPrimaryAssetClassListLoaded = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Loaded: ULuaArrayHelper<UObject>) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPrimaryAssetClassListLoaded:Add(Callback, Obj) end

---触发 Lua 广播
---@param Loaded ULuaArrayHelper<UObject>
function FOnPrimaryAssetClassListLoaded:Broadcast(Loaded) end


---@class FOnPrimaryAssetBundlesChanged : ULuaSingleDelegate
FOnPrimaryAssetBundlesChanged = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPrimaryAssetBundlesChanged:Bind(Callback, Obj) end

---执行委托
function FOnPrimaryAssetBundlesChanged:Execute() end


---Base class of all asset manager load calls
---@class UAsyncActionLoadPrimaryAssetBase: UBlueprintAsyncActionBase
local UAsyncActionLoadPrimaryAssetBase = {}


---@class UAsyncActionLoadPrimaryAsset: UAsyncActionLoadPrimaryAssetBase
---@field Completed FOnPrimaryAssetLoaded
local UAsyncActionLoadPrimaryAsset = {}


---@class UAsyncActionLoadPrimaryAssetClass: UAsyncActionLoadPrimaryAssetBase
---@field Completed FOnPrimaryAssetClassLoaded
local UAsyncActionLoadPrimaryAssetClass = {}


---@class UAsyncActionLoadPrimaryAssetList: UAsyncActionLoadPrimaryAssetBase
---@field Completed FOnPrimaryAssetListLoaded
local UAsyncActionLoadPrimaryAssetList = {}


---@class UAsyncActionLoadPrimaryAssetClassList: UAsyncActionLoadPrimaryAssetBase
---@field Completed FOnPrimaryAssetClassListLoaded
local UAsyncActionLoadPrimaryAssetClassList = {}


---@class UAsyncActionChangePrimaryAssetBundles: UAsyncActionLoadPrimaryAssetBase
---@field Completed FOnPrimaryAssetBundlesChanged
local UAsyncActionChangePrimaryAssetBundles = {}
