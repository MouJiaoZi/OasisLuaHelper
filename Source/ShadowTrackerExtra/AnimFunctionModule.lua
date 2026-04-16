---@meta

---@class EUpdateAnimAssetEvent
---@field Event_None number
---@field Event_UpdateAll number
---@field Event_PoseChange number
---@field Event_SwitchWeapon number
---@field Event_SwitchPerspective number
---@field Event_PawnStateChange number
---@field Event_Turn number
EUpdateAnimAssetEvent = {}


---@class FAnimOptUpdateLevel
---@field LODThreshold number
---@field Distance number
---@field UpdateRate number
FAnimOptUpdateLevel = {}


---@class FAnimFunctionModule
---@field bIsPendingKill boolean
---@field Enable boolean
---@field EnableUpdate boolean
---@field EnableAsyncUpdate boolean
---@field EnableOverrideNeedUpdate boolean
---@field UpdatePriorty number
---@field UIDTag string
---@field OnlyCopy boolean
---@field OnlyCopy_TargetUIDTag string
---@field CopyFromAnimInsClass UAnimInstanceBase
---@field OptimizedUpdateLevelSetting ULuaArrayHelper<FAnimOptUpdateLevel>
---@field OptimizedUpdateConditions ULuaArrayHelper<UAFMUpdateConditionBase>
---@field OwnerAnimInstance UAnimInstanceBase
---@field LastCachedNeedUpdate number
---@field CheckRefSuccess boolean
---@field CachedNeedAsyncUpdate boolean
---@field CachedNeedUpdate boolean
---@field NeedUpdateAfterBP boolean
---@field bWriteable boolean
---@field CachedNeedOptimizedUpdate boolean
---@field SkipOptimizedUpdateRemainTime number
FAnimFunctionModule = {}


---@class FAnimFunctionModule_Container
FAnimFunctionModule_Container = {}


---@class UAnimFunctionModule_ObjInstance: UObject
---@field Enable boolean
---@field EnableUpdate boolean
---@field EnableAsyncUpdate boolean
---@field EnableOverrideNeedUpdate boolean
---@field UIDTag string
---@field UpdatePriorty number
---@field OnlyCopy boolean
---@field OnlyCopy_TargetUIDTag string
---@field CopyFromAnimInsClass UAnimInstanceBase
---@field CachedNeedUpdate boolean
local UAnimFunctionModule_ObjInstance = {}


---@class UAnimFunctionModule_ObjInstanceBP: UAnimFunctionModule_ObjInstance
local UAnimFunctionModule_ObjInstanceBP = {}

---@param AnimInstance UAnimInstanceBase
function UAnimFunctionModule_ObjInstanceBP:InitModuleBP(AnimInstance) end

---@param AnimInstance UAnimInstanceBase
function UAnimFunctionModule_ObjInstanceBP:UnInitModuleBP(AnimInstance) end

---@param InEnable boolean
function UAnimFunctionModule_ObjInstanceBP:SetEnableBP(InEnable) end

---@param AnimInstance UAnimInstanceBase
function UAnimFunctionModule_ObjInstanceBP:InitParamBP(AnimInstance) end

---@param AnimInstance UAnimInstanceBase
function UAnimFunctionModule_ObjInstanceBP:UnInitParamBP(AnimInstance) end

---@param AnimInstance UAnimInstanceBase
---@return boolean
function UAnimFunctionModule_ObjInstanceBP:NeedUpdateBP(AnimInstance) end

---@param AnimInstance UAnimInstanceBase
---@param DeltaSeconds number
function UAnimFunctionModule_ObjInstanceBP:PreUpdateAnimationBP(AnimInstance, DeltaSeconds) end

---@param AnimInstance UAnimInstanceBase
---@param UpdateEventFlag number
---@param bForce boolean
function UAnimFunctionModule_ObjInstanceBP:UpdateAnimationAssetBP(AnimInstance, UpdateEventFlag, bForce) end

---@param AnimInstance UAnimInstanceBase
---@param DeltaSeconds number
function UAnimFunctionModule_ObjInstanceBP:UpdateAnimParamBP(AnimInstance, DeltaSeconds) end

---@param AnimInstance UAnimInstanceBase
---@param DeltaSeconds number
function UAnimFunctionModule_ObjInstanceBP:PostUpdateAnimationBP(AnimInstance, DeltaSeconds) end

---@param AnimInstance UAnimInstanceBase
function UAnimFunctionModule_ObjInstanceBP:OnRecycledBP(AnimInstance) end


---代理包装器类 - 用于包装现有的 UAnimFunctionModule_ObjInstance 实例 提供所有虚方法的蓝图可重写版本，默认调用被包装实例的原始实现
---@class UAnimFunctionModule_ObjInstanceOverrider: UAnimFunctionModule_ObjInstance
local UAnimFunctionModule_ObjInstanceOverrider = {}

---@param AnimInstance UAnimInstanceBase
function UAnimFunctionModule_ObjInstanceOverrider:InitModuleBP(AnimInstance) end

---@param AnimInstance UAnimInstanceBase
function UAnimFunctionModule_ObjInstanceOverrider:UnInitModuleBP(AnimInstance) end

---@param InEnable boolean
function UAnimFunctionModule_ObjInstanceOverrider:SetEnableBP(InEnable) end

---@param AnimInstance UAnimInstanceBase
function UAnimFunctionModule_ObjInstanceOverrider:InitParamBP(AnimInstance) end

---@param AnimInstance UAnimInstanceBase
function UAnimFunctionModule_ObjInstanceOverrider:UnInitParamBP(AnimInstance) end

---@param AnimInstance UAnimInstanceBase
---@return boolean
function UAnimFunctionModule_ObjInstanceOverrider:NeedUpdateBP(AnimInstance) end

---@param AnimInstance UAnimInstanceBase
---@return boolean
function UAnimFunctionModule_ObjInstanceOverrider:CheckFunctionModuleRefBP(AnimInstance) end

---@param AnimInstance UAnimInstanceBase
---@param DeltaSeconds number
function UAnimFunctionModule_ObjInstanceOverrider:PreUpdateAnimParamBP(AnimInstance, DeltaSeconds) end

---@param AnimInstance UAnimInstanceBase
---@param DeltaSeconds number
function UAnimFunctionModule_ObjInstanceOverrider:UpdateAnimParamBP(AnimInstance, DeltaSeconds) end

---@param AnimInstance UAnimInstanceBase
---@param DeltaSeconds number
function UAnimFunctionModule_ObjInstanceOverrider:PostUpdateAnimParamBP(AnimInstance, DeltaSeconds) end

---@param AnimInstance UAnimInstanceBase
---@param DeltaSeconds number
function UAnimFunctionModule_ObjInstanceOverrider:PreUpdateAnimationBP(AnimInstance, DeltaSeconds) end

---@param AnimInstance UAnimInstanceBase
---@param UpdateEventFlag number
---@param bForce boolean
function UAnimFunctionModule_ObjInstanceOverrider:UpdateAnimationAssetBP(AnimInstance, UpdateEventFlag, bForce) end

---@param AnimInstance UAnimInstanceBase
---@param DeltaSeconds number
function UAnimFunctionModule_ObjInstanceOverrider:PostUpdateAnimationBP(AnimInstance, DeltaSeconds) end

---@param AnimInstance UAnimInstanceBase
function UAnimFunctionModule_ObjInstanceOverrider:OnRecycledBP(AnimInstance) end

---@param AnimInstance UAnimInstanceBase
function UAnimFunctionModule_ObjInstanceOverrider:BeforeFirstUpdateAnimParamBP(AnimInstance) end

---@param AnimInstance UAnimInstanceBase
function UAnimFunctionModule_ObjInstanceOverrider:AfterFirstUpdateAnimParamBP(AnimInstance) end

---@param AnimInstance UAnimInstanceBase
function UAnimFunctionModule_ObjInstanceOverrider:AfterLastUpdateAnimParamBP(AnimInstance) end
