---@meta

---@class FHurtAnimWeightToPawnState
---@field PawnStatePossess EPawnState
---@field WeightValueInPawnstate_Neck number
---@field WeightValueInPawnstate_Clavicle number
---@field WeightValueInPawnstate_Thigh number
FHurtAnimWeightToPawnState = {}


---@class FHurtAnimWeightToPawnDynamicState
---@field PawnGameplayTagPossess FGameplayTag
---@field WeightValueInPawnDynamicstate_Neck number
---@field WeightValueInPawnDynamicstate_Clavicle number
---@field WeightValueInPawnDynamicstate_Thigh number
FHurtAnimWeightToPawnDynamicState = {}


---@class FHurtAnimWeightCurveConfig
---@field CurveWeight_Stand_Neck_SoftPtr UCurveFloat
---@field CurveWeight_Stand_Clavicle_SoftPtr UCurveFloat
---@field CurveWeight_Stand_Thigh_SoftPtr UCurveFloat
---@field CurveWeight_Crouch_Neck_SoftPtr UCurveFloat
---@field CurveWeight_Crouch_Clavicle_SoftPtr UCurveFloat
---@field CurveWeight_Crouch_Thigh_SoftPtr UCurveFloat
FHurtAnimWeightCurveConfig = {}


---@class FWeaponIDToHurtAnimWeightCurve
---@field WeaponGroupName string
---@field WeaponIDArray ULuaArrayHelper<number>
---@field WeaponWeightCurveConfig FHurtAnimWeightCurveConfig
FWeaponIDToHurtAnimWeightCurve = {}


---@class FAsyncLoadHurtWeightCurveDel : ULuaSingleDelegate
FAsyncLoadHurtWeightCurveDel = {}

---绑定回调函数
---@param Callback fun(Obj: any, LoadedSoftObjectPath: ULuaArrayHelper<FSoftObjectPath>) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAsyncLoadHurtWeightCurveDel:Bind(Callback, Obj) end

---执行委托
---@param LoadedSoftObjectPath ULuaArrayHelper<FSoftObjectPath>
function FAsyncLoadHurtWeightCurveDel:Execute(LoadedSoftObjectPath) end


---受击动画 不同武器共用同份资源时 不同部位在不同移动速度下支持配置不同表现权重
---@class UHurtAnimWeightDataAsset: UDataAsset
---@field HurtCurveToMultWeaponIDMap ULuaArrayHelper<FWeaponIDToHurtAnimWeightCurve>
---@field HurtWeightValueToPawnStates ULuaArrayHelper<FHurtAnimWeightToPawnState>
---@field HurtWeightValueToPawnDynamicStates ULuaArrayHelper<FHurtAnimWeightToPawnDynamicState>
local UHurtAnimWeightDataAsset = {}

---@param AsyncLoadCallBackEvent FAsyncLoadHurtWeightCurveDel
---@param LoadedSoftObjPath ULuaArrayHelper<FSoftObjectPath>
function UHurtAnimWeightDataAsset:OnAsyncHurtCurveLoaded(AsyncLoadCallBackEvent, LoadedSoftObjPath) end
