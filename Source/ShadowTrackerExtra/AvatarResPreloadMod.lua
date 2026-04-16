---@meta

---@class FOnPreloadResComplete : ULuaSingleDelegate
FOnPreloadResComplete = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FSoftObjectPath, Param2: UObject) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPreloadResComplete:Bind(Callback, Obj) end

---执行委托
---@param Param1 FSoftObjectPath
---@param Param2 UObject
function FOnPreloadResComplete:Execute(Param1, Param2) end


---@class FAssetPreloadSuccessDelegate : ULuaSingleDelegate
FAssetPreloadSuccessDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, LoadObject: UObject) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAssetPreloadSuccessDelegate:Bind(Callback, Obj) end

---执行委托
---@param LoadObject UObject
function FAssetPreloadSuccessDelegate:Execute(LoadObject) end


---@class UAvatarResPreloadMod: UAvatarManagementModBase
---@field preLoadResMap ULuaMapHelper<FSoftObjectPath, UObject>
---@field preLoadItemHandleRes ULuaMapHelper<number, UItemHandleBase>
---@field preLoadAnimInstanceRes ULuaMapHelper<FSoftObjectPath, UAnimInstance>
---@field preLoadStaticMeshRes ULuaMapHelper<FSoftObjectPath, UStaticMesh>
---@field preLoadSkeletalMeshRes ULuaMapHelper<FSoftObjectPath, USkeletalMesh>
---@field OnBattleItemHandleListLoaded FCreateBattleItemHandleAsyncListDelegate
---@field PendingPreLoadItemHandleList ULuaArrayHelper<FItemDefineID>
---@field OneRequestPreLoadResMaxNum number
local UAvatarResPreloadMod = {}

---@param ItemHandleList ULuaArrayHelper<UBattleItemHandleBase>
---@param AsyncLoadID number
function UAvatarResPreloadMod:OnBattleItemHandleListLoadedCallBack(ItemHandleList, AsyncLoadID) end

---@param outRes ULuaArrayHelper<FSoftObjectPath>
---@param ItemHandleCDO UItemHandleBase
function UAvatarResPreloadMod:CollectAllNeedPreLoadAnimInstanceAsset(outRes, ItemHandleCDO) end

---@param AsyncLoadList ULuaArrayHelper<FItemDefineID>
function UAvatarResPreloadMod:LoadItemHandleAssetAsync(AsyncLoadList) end

---@param AninInstanceObjectSoftPaths ULuaArrayHelper<FSoftObjectPath>
function UAvatarResPreloadMod:LoadAnimInstanceAssetAsync(AninInstanceObjectSoftPaths) end
