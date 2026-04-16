---@meta

---@class ECharaHorseAnimListType
---@field ECharaHorseAnimListType_TPP number
---@field ECharaHorseAnimListType_Grenade number
---@field ECharaHorseAnimListType_Max number @无
ECharaHorseAnimListType = {}


---@class ECharacterVehicleHorseAnimType
---@field ECharVehHorseAnim_Movement number @正常移动(UBlendSpace2D)
---@field ECharVehHorseAnim_MovementHurt number @受伤移动(UBlendSpace2D)
---@field ECharVehHorseAnim_MovementSwim number @游泳移动(UBlendSpace2D)
---@field ECharVehHorseAnim_TurnStart number @转向开始
---@field ECharVehHorseAnim_Turn number @原地转向
---@field ECharVehHorseAnim_TurnEnd number @转向结束
---@field ECharVehHorseAnim_JumpStart number @跳跃开始
---@field ECharVehHorseAnim_JumpFalling number @跳跃坠落
---@field ECharVehHorseAnim_JumpEnd number @坠落结束
---@field ECharVehHorseAnim_JumpLoop number @坠落循环
---@field ECharVehHorseAnim_BrakeLow number @低速刹车(UAnimMontage)
---@field ECharVehHorseAnim_BrakeHigh number @高速刹车(UAnimMontage)
---@field ECharVehHorseAnim_HoldWeaponBase number @持枪基础(UAnimSequence)
---@field ECharVehHorseAnim_AimBase number @瞄准基础(UAimOffsetBlendSpace)
---@field ECharVehHorseAnim_Aim number @乘坐瞄准(UBlendSpace2D)
---@field ECharVehHorseAnim_AimLimit number @受限瞄准(UBlendSpace2D)
---@field ECharVehHorseAnim_MovementAdditive number @移动叠加动画(UBlendSpace2D)
---@field ECharVehHorseAnim_FireAdditive number @过渡开火动画(UAnimSequence)
---@field ECharVehHorseAnim_Max number
ECharacterVehicleHorseAnimType = {}


---@class ECharacterHorseAnimGrenadeType
---@field ECharHorseGrenadeAnim_HighThrowAim number @高抛瞄准(UAimOffsetBlendSpace)
---@field ECharHorseGrenadeAnim_LowThrowAim number @低抛瞄准(UAimOffsetBlendSpace)
---@field ECharHorseGrenadeAnim_HighThrowAimLimit number @高抛限制瞄准(UAimOffsetBlendSpace)
---@field ECharHorseGrenadeAnim_LowThrowAimLimit number @低抛限制瞄准(UAimOffsetBlendSpace)
---@field ECharHorseGrenadeAnim_HighThrowStart number @高抛拔雷(UBlendSpace1D)
---@field ECharHorseGrenadeAnim_HighThrowEnd number @高抛扔雷(UBlendSpace1D)
---@field ECharHorseGrenadeAnim_LowThrowStart number @低抛拔雷(UBlendSpace1D)
---@field ECharHorseGrenadeAnim_LowThrowEnd number @低抛扔雷(UBlendSpace1D)
---@field ECharHorseGrenadeAnim_Max number
ECharacterHorseAnimGrenadeType = {}


---@class FVehHorseCharAnimData
---@field VehAnimType ECharacterVehicleHorseAnimType
FVehHorseCharAnimData = {}


---@class FVehHorseCharGrenadeAnimData
---@field VehGrenadeAnimType ECharacterHorseAnimGrenadeType
FVehHorseCharGrenadeAnimData = {}


---@class FHorseReplaceAnimData
---@field ReplacedAnimType ECharacterAnimType
---@field ReplacedPoseType ECharacterPoseType
FHorseReplaceAnimData = {}


---@class FHorseReplaceWeaponAnimData
---@field ReplacedWeaponAnimType ECharWeaponAnimType
---@field ReplacedPoseType ECharacterPoseType
FHorseReplaceWeaponAnimData = {}


---@class FHorseReplaceAnimDataList
---@field OwnerComp UUAEChaVehHorseAnimListComponent
---@field HorseReplaceDataList ULuaArrayHelper<FHorseReplaceAnimData>
---@field HorseReplaceWeaponDataList ULuaArrayHelper<FHorseReplaceWeaponAnimData>
FHorseReplaceAnimDataList = {}


---@class FHorseWeaponAnimTypeConfig
---@field HorseSubAnimCustomList ULuaArrayHelper<FAnimMapData>
---@field HorseSubAnimCustomList_FPP ULuaArrayHelper<FAnimMapData>
---@field HorseSubAnimCustomList_NewFPP ULuaArrayHelper<FAnimMapData>
---@field bNeedScopeSubAnim boolean
FHorseWeaponAnimTypeConfig = {}


---@class FHorseAnimRefreshDelegate : ULuaSingleDelegate
FHorseAnimRefreshDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FHorseAnimRefreshDelegate:Bind(Callback, Obj) end

---执行委托
function FHorseAnimRefreshDelegate:Execute() end


---@class UUAEChaVehHorseAnimListComponent: UUAECharAnimListCompBase
---@field HorseCharAnimDataList ULuaArrayHelper<FVehHorseCharAnimData>
---@field HorseCharAnimGrenadeDataList ULuaArrayHelper<FVehHorseCharGrenadeAnimData>
---@field HorseReplaceData FHorseReplaceAnimDataList
---@field HorseReplaceSubAnimData FHorseWeaponAnimTypeConfig
---@field HorseReplaceSubAnimConfigStack ULuaArrayHelper<FHorseWeaponAnimTypeConfig>
---@field bIsGrenadeAnimList boolean
---@field DriverCompTagName string
---@field DefaultHorseWeaponAnimTag string
---@field bEnableDefaultYawLimit boolean @角度限制 1.武器默认手持的时候就会有个角度限制 2.司机在后座有人的时候会额外有个角度限制的配置（优先级高于情况1 配置范围应小于或等于情况1）
---@field DefaultViewYawLimit FVector2D
---@field DefaultViewYawLimitDataListStack ULuaArrayHelper<FVector2D>
---@field bEnableYawLimitWithPassenger boolean
---@field DriverViewYawLimit FVector2D
---@field DriverViewYawLimitDataListStack ULuaArrayHelper<FVector2D>
---@field OwnerWeaponAnimInstance UAnimInstance @武器自身动画蓝图配置 马上使用新的武器动画蓝图（其实只有资源不同）
---@field OnHorseWeaponAnimInstance UAnimInstance
---@field HorseReplaceDataListStack ULuaArrayHelper<FHorseReplaceAnimDataList>
---@field HorseAnimListEditMap ULuaMapHelper<number, FAnimListMapValueData>
---@field OnHorseAnimRefreshDelegate FHorseAnimRefreshDelegate
local UUAEChaVehHorseAnimListComponent = {}

function UUAEChaVehHorseAnimListComponent:InitDefaultData() end

---@param ChildComponent UUAEAnimListComponentBase
---@param Layer number
function UUAEChaVehHorseAnimListComponent:AddChildComponent(ChildComponent, Layer) end

---@param ChildComponent UUAEAnimListComponentBase
function UUAEChaVehHorseAnimListComponent:RemoveChildComponent(ChildComponent) end
