---@meta

---@class ECharacterAnimType
---@field ECharAnim_Move number @移动(UBlendSpace2D)
---@field ECharAnim_Aim number @瞄准(UAimOffsetBlendSpace)
---@field ECharAnim_ToStand number @到站(UAnimSequence)
---@field ECharAnim_ToCrouch number @到蹲(UAnimSequence)
---@field ECharAnim_ToProne number @到趴(UAnimSequence)
---@field ECharAnim_PickM number @拾取中(UAnimMontage)
---@field ECharAnim_PickL number @拾取低(UAnimMontage)
---@field ECharAnim_Equip_Primary number @装备右肩(UAnimMontage)
---@field ECharAnim_Equip_Secondary number @装备左肩(UAnimMontage)
---@field ECharAnim_Equip_Pistol number @装备手枪(UAnimMontage)
---@field ECharAnim_Equip_Melee number @装备近战(UAnimMontage)
---@field ECharAnim_Equip_Thrown number @装备投掷(UAnimMontage)
---@field ECharAnim_Hurt number @受击(UBlendSpace2D)
---@field ECharAnim_Hurt_New number @新版受击(UBlendSpace2D)
---@field ECharAnim_Reload number @武器换弹(UAnimMontage)
---@field ECharAnim_TacticsReload number @战术换弹(UAnimMontage)
---@field ECharAnim_ReloadType1 number @特殊换弹1(UAnimMontage)
---@field ECharAnim_Fire_Single number @武器开火单(UAnimMontage)
---@field ECharAnim_Fire_Burst number @武器开火连(UAnimMontage)
---@field ECharAnim_Fire_Auto number @武器开火自(UAnimMontage)
---@field ECharAnim_Accumulate number @武器蓄力(UAnimSequence)
---@field ECharAnim_PostFire number @武器开火结束(UAnimMontage)
---@field ECharAnim_Turn_L number @转身左(UAnimSequence)
---@field ECharAnim_Turn_R number @转身右(UAnimSequence)
---@field ECharAnim_PullingPlug number @拉栓(UAnimMontage)
---@field ECharAnim_PutDownWeapon number @收枪(UBlendSpace2D)
---@field ECharAnim_WeaponIdle number @呼吸待机(UAnimSequence)
---@field ECharAnim_VehWeaponIdle number @载具武器Idle(UAnimSequence)
---@field ECharAnim_VehWeaponIdle_Down number @载具武器Idle向下(UAnimSequence)
---@field ECharAnim_VehWeaponAim number @载具武器Aim(UAnimSequence)
---@field ECharAnim_VehWeaponReload number @载具武器换弹(UAnimSequence)
---@field ECharAnim_Peek number @侧身【模拟端】(UBlendSpace1D)
---@field ECharAnim_PeekScope number @侧身【主端与观战】(UBlendSpace1D)
---@field ECharAnim_PeekLeftAim number @左侧身瞄准(UAimOffsetBlendSpace)
---@field ECharAnim_PeekRightAim number @右侧身瞄准(UAimOffsetBlendSpace)
---@field ECharAnim_ForegripAnim number @握把(UBlendSpace1D)
---@field ECharAnim_MoveScopeSlow number @开镜稳定(UAnimSequence)
---@field ECharAnim_Fire_Scope number @武器开火开镜(UAnimMontage)
---@field ECharAnim_HideBone_Scope number @【废弃】武器开镜屏蔽骨骼(UAnimSequenceAdditive)
---@field ECharAnim_SprintToProne number @疾跑到趴(UAnimSequence)
---@field ECharAnim_OpenDoor number @开门(UAnimMontage)
---@field ECharAnim_ShovelLoop number @滑铲(UAnimSequence)
---@field ECharAnim_EnterShovel number @滑铲进入(UAnimSequence)
---@field ECharAnim_LeaveShovel number @滑铲离开(UAnimSequence)
---@field ECharAnim_MovementUpBodyOverride number @移动上半身覆盖(UBlendSpace1D)
---@field ECharAnim_DropWeapon number @丢弃武器动画(UAnimMontage)
---@field ECharAnim_Dead number @死亡(正常)(UAnimMontage)
---@field ECharAnim_Dead_Swim number @死亡(游泳)(UAnimMontage)
---@field ECharAnim_Dead_Impact_Fly number @死亡(浮空)(UAnimMontage)
---@field ECharAnim_Dead_Impact_End number @死亡(浮空-落地)(UAnimMontage)
---@field ECharAnim_Swim_Up number @游泳（水上）(UBlendSpace2D)
---@field ECharAnim_Swim_Down number @游泳（水下）(UBlendSpace2D)
---@field ECharAnim_Dying_Move number @倒地移动(UBlendSpace2D)
---@field ECharAnim_Dying_Enter number @倒地进入(UAnimSequence)
---@field ECharAnim_Dying_Exit number @倒地退出(UAnimSequence)
---@field ECharAnim_Dying_Rescue number @倒地救援(UAnimMontage)
---@field ECharAnim_UnEquip_Override number @取消装备覆盖(UAnimMontage)
---@field ECharAnim_Equip_Shield_Moving number @移动中装备盾牌(UAnimMontage)
---@field ECharAnim_UnEquip_Shield_Moving number @移动中取消装备盾牌(UAnimMontage)
---@field ECharAnim_WeaponInspect number @武器检视(UAnimMontage)
---@field ECharAnim_Dead_Rand1 number @死亡(正常)-随机1(UAnimMontage)
---@field ECharAnim_Dead_Rand2 number @死亡(正常)-随机2(UAnimMontage)
---@field ECharAnim_Dead_Forward number @死亡(正常)-向前倒(UAnimMontage)
---@field ECharAnim_Dead_Backward number @死亡(正常)-向后倒(UAnimMontage)
---@field ECharAnim_Dead_Leftward number @死亡(正常)-向左倒(UAnimMontage)
---@field ECharAnim_Dead_Rightward number @死亡(正常)-向右倒(UAnimMontage)
---@field ECharAnim_Fire_Special number @武器开火-特殊(UAnimMontage)
---@field ECharAnim_Additive_MoveTarget number @叠加-移动的目标姿势(UAnimSequence)
---@field ECharAnim_Additive_MoveRef number @叠加-移动的参考姿势(UAnimSequence)
---@field ECharAnim_Fire_Volley number @武器开火-齐发(UAnimMontage)
---@field ECharAnim_LoopFire number @武器Loop开火(UAnimMontage)
---@field ECharAnim_LoopFire_Scope number @武器Loop开火开镜(UAnimMontage)
---@field ECharAnim_DyingFaceRotBlend number @倒地原地转身(UBlendSpace)
---@field ECharAnim_DyingHurt number @倒地受击(UBlendSpace)
---@field ECharAnim_Dying_EnterNew number @倒地进入(新)(UBlendSpace)
---@field ECharAnim_Dying_EnterNew_Move number @倒地进入(移动)(UBlendSpace)
---@field ECharAnim_Dying_EnterNew_Jump number @倒地进入(跳跃)(UBlendSpace)
---@field ECharAnim_Kick number @踢击可破坏箱(UAnimMontage)
---@field ECharAnim_SprintDoorOpen number @冲刺撞门开门(UAnimMontage)
---@field ECharAnim_Max number @无
ECharacterAnimType = {}


---@class EDynamicLoadingAnimType
---@field EDynamicLoadingAnim_StandbyIdle_1 number @待机动画1
---@field EDynamicLoadingAnim_StandbyIdle_2 number @待机动画2
---@field EDynamicLoadingAnim_ColdStandbyIdle_1 number @雪地待机动画1
---@field EDynamicLoadingAnim_ColdStandbyIdle_2 number @雪地待机动画2
---@field EDynamicLoadingAnim_Max number @无
EDynamicLoadingAnimType = {}


---@class ECharacterAdditionalWeaponSwitchAnimType
---@field ECharAdditionalWeaponSwitchAnim_Equip_SwitchBoth number @同时切出进入双持
---@field ECharAdditionalWeaponSwitchAnim_Equip_SwitchMain number @切出主武器进入双持
---@field ECharAdditionalWeaponSwitchAnim_Equip_SwitchAdditional number @切出副武器进入双持
---@field ECharAdditionalWeaponSwitchAnim_UnEquip_SwitchBoth number @双持同时切回
---@field ECharAdditionalWeaponSwitchAnim_UnEquip_SwitchMain number @双持切回主武器
---@field ECharAdditionalWeaponSwitchAnim_UnEquip_SwitchAdditional number @双持切回副武器
---@field ECharAdditionalWeaponSwitchAnim_Equip_SwitchBoth_Moving number @移动中同时切出进入双持
---@field ECharAdditionalWeaponSwitchAnim_Equip_SwitchMain_Moving number @移动中切出主武器进入双持
---@field ECharAdditionalWeaponSwitchAnim_Equip_SwitchAdditional_Moving number @移动中切出副武器进入双持
---@field ECharAdditionalWeaponSwitchAnim_UnEquip_SwitchBoth_Moving number @移动中同时切回进入双持
---@field ECharAdditionalWeaponSwitchAnim_UnEquip_SwitchMain_Moving number @移动中切回主武器进入双持
---@field ECharAdditionalWeaponSwitchAnim_UnEquip_SwitchAdditional_Moving number @移动中切回副武器进入双持
---@field ECharAdditionalWeaponSwitchAnim_Equip_SwitchBoth_Sprint number @冲刺中同时切出进入双持
---@field ECharAdditionalWeaponSwitchAnim_Equip_SwitchMain_Sprint number @冲刺中切出主武器进入双持
---@field ECharAdditionalWeaponSwitchAnim_Equip_SwitchAdditional_Sprint number @冲刺中切出副武器进入双持
---@field ECharAdditionalWeaponSwitchAnim_UnEquip_SwitchBoth_Sprint number @冲刺中同时切回进入双持
---@field ECharAdditionalWeaponSwitchAnim_UnEquip_SwitchMain_Sprint number @冲刺中切回主武器进入双持
---@field ECharAdditionalWeaponSwitchAnim_UnEquip_SwitchAdditional_Sprint number @冲刺中切回副武器进入双持
---@field ECharAdditionalWeaponSwitchAnim_Max number @无
ECharacterAdditionalWeaponSwitchAnimType = {}


---@class ECharacterShieldAnimType
---@field ECharShieldAnim_Move number @移动
---@field ECharShieldAnim_Aim number @瞄准
---@field ECharShieldAnim_ToStand number @到站
---@field ECharShieldAnim_ToCrouch number @到蹲
---@field ECharShieldAnim_PickM number @拾取中
---@field ECharShieldAnim_PickL number @拾取低
---@field ECharShieldAnim_Turn_L number @转身左
---@field ECharShieldAnim_Turn_R number @转身右
---@field ECharShieldAnim_InPlace_PreJump number @原地|起跳
---@field ECharShieldAnim_InPlace_FallLoop0 number @原地|下落慢
---@field ECharShieldAnim_InPlace_FallLoop1 number @原地|下落快
---@field ECharShieldAnim_InPlace_Land0 number @原地|落地轻
---@field ECharShieldAnim_InPlace_Land1 number @原地|落地重
---@field ECharShieldAnim_Forward_PreJump number @前跳|起跳
---@field ECharShieldAnim_Forward_FallLoop0 number @前跳|下落慢
---@field ECharShieldAnim_Forward_FallLoop1 number @前跳|下落快
---@field ECharShieldAnim_Forward_Land0 number @前跳|落地轻
---@field ECharShieldAnim_Forward_Land1 number @前跳|落地重
---@field ECharShieldAnim_Max number @无
ECharacterShieldAnimType = {}


---@class ECharaAnimListType
---@field ECharaAnimListType_TPP number
---@field ECharaAnimListType_FPP number
---@field ECharaAnimListType_Jump number
---@field ECharaAnimListType_JumpFPP number
---@field ECharaAnimListType_Shield number
---@field EcharaAnimListType_Vehicle number
---@field EcharaAnimListType_Dynamic number
---@field EcharaAnimListType_AdditionalWeaponSwitch number
---@field ECharaAnimListType_NewFPP number
---@field ECharaAnimListType_NewFPP_Jump number
---@field ECharaAnimListType_Weapon number
---@field ECharaAnimListType_Weapon_NewFPP number
---@field EcharaAnimListType_AdditionalWeaponSwitchNewFPP number
---@field ECharaAnimListType_Max number @无
ECharaAnimListType = {}


---@class ECharacterPoseType
---@field ECharPose_Stand number @站
---@field ECharPose_Crouch number @蹲
---@field ECharPose_Prone number @趴
---@field ECharPose_Max number @无
ECharacterPoseType = {}


---@class ECharacterJumpPhase
---@field EJumpPhase_PreJump number @起跳
---@field EJumpPhase_FallLoop0 number @下落慢
---@field EJumpPhase_FallLoop1 number @下落快
---@field EJumpPhase_Land0 number @落地轻
---@field EJumpPhase_Land1 number @落地重
---@field EJumpPhase_Max number @无
ECharacterJumpPhase = {}


---@class ECharacterJumpType
---@field ECharJump_InPlace number @原地
---@field ECharJump_Forward number @前跳
---@field ECharJump_Scope number @开镜
---@field ECharJump_Max number @无
ECharacterJumpType = {}


---@class EVehicleType
---@field EVehType_Buggy number @蹦蹦
---@field EVehType_UAZ number @越野
---@field EVehType_Motorcycle number @摩托
---@field EVehType_Dacia number @轿车
---@field EVehType_PG_117 number @快艇
---@field EVehType_Max number
EVehicleType = {}


---@class EVehicleSeatType
---@field EVehSeatType_Driver number @驾驶位
---@field EVehSeatType_Left number @左侧位
---@field EVehSeatType_Right number @右侧位
---@field EVehSeatType_Max number
EVehicleSeatType = {}


---@class ECharAnimEventType
---@field ECharAnimEvent_PoseChange number
---@field ECharAnimEvent_PickUp number
---@field ECharAnimEvent_Fire number
---@field ECharAnimEvent_Reload number
---@field ECharAnimEvent_Switch number
---@field ECharAnimEvent_Peek number
---@field ECharAnimEvent_PeekAim number
---@field ECharAnimEvent_Bolt number
---@field ECharAnimEvent_DropWeapon number
---@field ECharAnimEvent_PostFire number
---@field ECharAnimEvent_WeaponInspect number
---@field ECharAnimEvent_Max number
ECharAnimEventType = {}


---@class ECharAnimAdditiveType
---@field ECharAnimAdditive_Move number @动画叠加-移动
---@field ECharAnimAdditive_Max number
ECharAnimAdditiveType = {}


---@class ECharacterViewType
---@field ECharacterView_TPPandFPP number @第一、三人称通用
---@field ECharacterView_TPP number @仅第三人称使用
---@field ECharacterView_FPP number @仅第一人称使用
---@field ECharacterView_Max number
ECharacterViewType = {}


---@class ECharacterAnimTypeAsynLoaded
---@field ECharAnimAsyn_Swim_Up number @游泳_水上
---@field ECharAnimAsyn_Swim_Down number @游泳_水下
---@field ECharAnimAsyn_Max number
ECharacterAnimTypeAsynLoaded = {}


---@class FChararacterJumpPhaseData
---@field JumpPhase ECharacterJumpPhase
---@field ShowDeprecatedValue boolean
---@field PhaseAnimSoftPtr UAnimationAsset
FChararacterJumpPhaseData = {}


---@class FCharacterJumpAnimData
---@field JumpType ECharacterJumpType
---@field JumpTypeName string
---@field JumpPhase_PreJump FChararacterJumpPhaseData
---@field JumpPhase_FallLoop0 FChararacterJumpPhaseData
---@field JumpPhase_FallLoop1 FChararacterJumpPhaseData
---@field JumpPhase_Land0 FChararacterJumpPhaseData
---@field JumpPhase_Land1 FChararacterJumpPhaseData
FCharacterJumpAnimData = {}


---@class FPlayerAnimData
---@field Rate number
---@field bCouldPlayReverse boolean
FPlayerAnimData = {}


---@class FPlayerVehAnimList
FPlayerVehAnimList = {}


---@class FCharacterAnimTypeAsynLoadedPhaseData
---@field PhaseName string
---@field PhaseAnimSoftPtr ULuaMapHelper<ECharacterViewType, UAnimationAsset>
FCharacterAnimTypeAsynLoadedPhaseData = {}


---@class FCharacterAsynLoadedTypeAnim
---@field AnimTypeAsynLoaded ECharacterAnimTypeAsynLoaded
---@field AnimsCatorgeryName string
---@field Anim FCharacterAnimTypeAsynLoadedPhaseData
FCharacterAsynLoadedTypeAnim = {}


---@class FCharacterAnimAsynLoadCompleteParam
---@field AnimTypeAsynLoaded ECharacterAnimTypeAsynLoaded
---@field AnimsCatorgeryName string
---@field CharacterViewType ECharacterViewType
---@field SoftPtrAnimation UAnimationAsset
FCharacterAnimAsynLoadCompleteParam = {}


---@class FCharacterAnimStartAsynLoadParam
---@field AnimType ECharacterAnimTypeAsynLoaded
---@field CharacterViewType ECharacterViewType
FCharacterAnimStartAsynLoadParam = {}


---@class UUAECharAnimListCompBase: UUAEAnimListComponentBase
---@field WeaponAnimTypeConfig FWeaponAnimTypeConfig
---@field WeaponAnimTypeConfigStack ULuaArrayHelper<FWeaponAnimTypeConfig>
---@field WeaponAnimTypeConfigStack_CombineResult FWeaponAnimTypeConfig
---@field CharacterAsynLoadedAnims ULuaArrayHelper<FCharacterAsynLoadedTypeAnim>
---@field bCanEditAnimList boolean
---@field ExtraAnimDataConfigs ULuaArrayHelper<UExtraAnimDataConfigBase>
---@field ExtraAnimDataConfigInstances ULuaArrayHelper<UExtraAnimDataConfigBase>
---@field ExtraAnimDataConfigStack ULuaMapHelper<string, FExtraAnimDataRecordArray>
local UUAECharAnimListCompBase = {}

---@param ChildComp UUAECharAnimListCompBase
---@param AnimLayer number
function UUAECharAnimListCompBase:AddChildCompWeaponAnimConfig(ChildComp, AnimLayer) end

---@param ChildComp UUAECharAnimListCompBase
function UUAECharAnimListCompBase:RemoveChildCompWeaponAnimConfig(ChildComp) end

function UUAECharAnimListCompBase:ResetChildAnimConfig() end

---@param ChildComp UUAECharAnimListCompBase
---@param AnimLayer number
function UUAECharAnimListCompBase:AddChildCompExtraAnimDataConfig(ChildComp, AnimLayer) end

---@param ChildComp UUAECharAnimListCompBase
---@param AnimLayer number
function UUAECharAnimListCompBase:RemoveChildCompExtraAnimDataConfig(ChildComp, AnimLayer) end

---@param ChildExtraAnimDataConfig UExtraAnimDataConfigBase
---@param ChildComp UUAECharAnimListCompBase
---@param AnimLayer number
function UUAECharAnimListCompBase:AddExtraAnimDataConfig(ChildExtraAnimDataConfig, ChildComp, AnimLayer) end

---@param ChildExtraAnimDataConfig UExtraAnimDataConfigBase
---@param ChildComp UUAECharAnimListCompBase
---@param AnimLayer number
function UUAECharAnimListCompBase:RemoveExtraAnimDataConfig(ChildExtraAnimDataConfig, ChildComp, AnimLayer) end

function UUAECharAnimListCompBase:GetAllExtraAnimDataConfigBase() end
