---@meta

---@class ECharacterVehicleAnimType
---@field ECharVehAnim_Idle number @乘坐空手(司机位AS/BS，乘客BS，UAV下AM)
---@field ECharVehAnim_IdleWithWeapon number @乘坐持枪(AS/BS, 持枪乘客BS/BS1D)
---@field ECharVehAnim_LeanOut number @探出(BlendSpace1D)
---@field ECharVehAnim_LeanIn number @缩回(BlendSpace1D)
---@field ECharVehAnim_Aim number @瞄准TPP(BS/BS1D)
---@field ECharVehAnim_Scope number @开镜瞄准
---@field ECharVehAnim_AimFPPCommon number @瞄准FPP(BS/BS1D)
---@field ECharVehAnim_MotorbikeIdle number @骑摩托Idle(司机AS/BS1D，乘客AS)
---@field ECharVehAnim_MotorbikeVacate number @骑摩托颠簸(BS/AS)
---@field ECharVehAnim_Jump0 number @小跳(司机AS, AM)
---@field ECharVehAnim_Jump1 number @大跳1(司机AS, AM)
---@field ECharVehAnim_Jump2 number @大跳2(司机AS, AM)
---@field ECharVehAnim_Jump3 number @大跳3(司机AS, AM)
---@field ECharVehAnim_SpeedUpByFoot number @蹭地加速(AnimMontage)
---@field ECharVehAnim_BrakeByFoot number @蹭地刹车(AnimMontage)
---@field ECharVehAnim_Falling number @浮空(司机BS1D)
---@field ECharVehAnim_FallLand_Additve number @落地轻(司机AS)
---@field ECharVehAnim_FallLand_Hard number @落地重(司机AS)
---@field ECharVehAnim_Enter number @上载具(UAV下AM)
---@field ECharVehAnim_Enter2 number @上载具2(AM)
---@field ECharVehAnim_Leave number @下载具(UAV下AM)
---@field ECharVehAnim_StandIdle number @待机
---@field ECharVehAnim_IdleProne number @乘坐卧倒(UAV下AM)
---@field ECharVehAnim_EnterProne number @上载具卧倒(UAV下AM)
---@field ECharVehAnim_LeaveProne number @下载具卧倒(UAV下AM)
---@field ECharVehAnim_VehicleWeaponReload number @车载武器换弹(车载武器司机乘客AS)
---@field ECharVehAnim_VehicleWeaponFire number @车载武器开火(车载武器乘客AM)
---@field ECharVehAnim_VehicleWeaponAimOffset number @车载武器瞄准偏移(车载武器乘客BS)
---@field ECharVehAnim_MotorgliderIdle number @摩托滑翔机待机(司机AS)
---@field ECharVehAnim_MotorgliderSteer number @摩托滑翔机转向(司机BlendSpaceBase)
---@field ECharVehAnim_IdleWithWeapon_Down number @乘坐持枪-向下(司机AS/BS，乘客BS)
---@field ECharVehAnim_BalloonMan number @七夕气球同性男(AnimSequence)
---@field ECharVehAnim_BalloonCPMan number @七夕气球异性男(AnimSequence)
---@field ECharVehAnim_BalloonWoman number @七夕气球同性女(AnimSequence)
---@field ECharVehAnim_BalloonCPWoman number @七夕气球异性女(AnimSequence)
---@field ECharVehAnim_MotorbikeDriverLeaning number @骑摩托侧身(司机AS)
---@field ECharVehAnim_MotorbikeDriverLeaningLowSpeed number @骑摩托侧身低速(司机AS)
---@field ECharVehAnim_MotorbikePassengerNoDriver number @坐摩托无司机(AnimSequence)
---@field ECharVehAnim_MotorbikePassengerIdleLeaning number @乘坐摩托侧身(AnimSequence)
---@field ECharVehAnim_MotorbikeDriverLeaningGroundPitch number @骑摩托俯仰(司机AS)
---@field ECharVehAnim_MountainBikeSprint number @骑自行车冲刺(AnimSequence)
---@field ECharVehAnim_MotorbikePassengerIdleBaseDriverOff number @乘坐摩托基础无司机空手(AnimSequence)
---@field ECharVehAnim_MotorbikePassengerIdleBaseWithGunDriverOff number @乘坐摩托基础无司机持枪(AnimSequence)
---@field ECharVehAnim_MotorbikePassengerIdleBaseWithMeleeDriverOff number @乘坐摩托基础无司机持近战武器(AnimSequence)
---@field ECharVehAnim_MotorbikePassengerIdleBaseWithThrowObjDriverOff number @乘坐摩托基础无司机持投掷物(AnimSequence)
---@field ECharVehAnim_MotorbikePassengerIdleBaseDriverOn number @乘坐摩托基础有司机空手(AnimSequence)
---@field ECharVehAnim_MotorbikePassengerIdleBaseWithGunDriverOn number @乘坐摩托基础有司机持枪(AnimSequence)
---@field ECharVehAnim_MotorbikePassengerIdleBaseWithMeleeDriverOn number @乘坐摩托基础有司机持近战武器(AnimSequence)
---@field ECharVehAnim_MotorbikePassengerIdleBaseWithThrowObjDriverOn number @乘坐摩托基础有司机持投掷物(AnimSequence)
---@field ECharVehAnim_MotorbikePassengerDriverOffAim number @摩托车瞄准TPP无司机(BlendSpace)
---@field ECharVehAnim_MotorbikePassengerDriverOffPoseOverride number @乘坐摩托无司机Pose调整(AnimSequence)
---@field ECharVehAnim_MountainBikeJump number @骑自行车起跳(AnimSequence)
---@field ECharVehAnim_PassengerIdleGrenadeBSDriverOn number @投掷物AimOffset资源枚举
---@field ECharVehAnim_PassengerHighHoldGrenadeBSDriverOn number @乘客高抛持雷有司机(BlendSpace)
---@field ECharVehAnim_PassengerLowHoldGrenadeBSDriverOn number @乘客低抛持雷有司机(BlendSpace)
---@field ECharVehAnim_PassengerHighHoldGrenadeStartDriverOn number @乘客高抛拔雷有司机(BlendSpace1D)
---@field ECharVehAnim_PassengerLowHoldGrenadeStartDriverOn number @乘客低抛拔雷有司机(BlendSpace1D)
---@field ECharVehAnim_PassengerHighHoldGrenadeEndDriverOn number @乘客高抛扔雷有司机(BlendSpace1D)
---@field ECharVehAnim_PassengerLowHoldGrenadeEndDriverOn number @乘客低抛扔雷有司机(BlendSpace1D)
---@field ECharVehAnim_PassengerIdleGrenadeBSDriverOff number @乘客基础空手无司机(BlendSpace)
---@field ECharVehAnim_PassengerHighHoldGrenadeBSDriverOff number @乘客高抛持雷无司机(BlendSpace)
---@field ECharVehAnim_PassengerLowHoldGrenadeBSDriverOff number @乘客低抛持雷无司机(BlendSpace)
---@field ECharVehAnim_PassengerHighHoldGrenadeStartDriverOff number @乘客高抛拔雷无司机(BlendSpace1D)
---@field ECharVehAnim_PassengerLowHoldGrenadeStartDriverOff number @乘客低抛拔雷无司机(BlendSpace1D)
---@field ECharVehAnim_PassengerHighHoldGrenadeEndDriverOff number @乘客高抛扔雷无司机(BlendSpace1D)
---@field ECharVehAnim_PassengerLowHoldGrenadeEndDriverOff number @乘客低抛扔雷无司机(BlendSpace1D)
---@field ECharVehAnim_IdleCrouch number @乘坐蹲着(UAV下AnimMontage)
---@field ECharVehAnim_EnterCrouch number @上载具蹲着(UAV下AnimMontage)
---@field ECharVehAnim_LeaveCrouch number @下载具蹲着(UAV下AnimMontage)
---@field ECharVehAnim_DriverForward number @向前(AnimSequence)
---@field ECharVehAnim_Max number
ECharacterVehicleAnimType = {}


---@class FVehCharAnimData
---@field VehAnimType ECharacterVehicleAnimType
---@field VehAnimSoftPtr UAnimationAsset
FVehCharAnimData = {}


---@class FVehCharAnimTypeMatchInfo
---@field VehAnimType ECharacterVehicleAnimType
---@field isDriver number
---@field hasWeapon number
---@field AnimClass ULuaArrayHelper<UClass>
FVehCharAnimTypeMatchInfo = {}


---@class FAsyncLoadCharVehAnimParams
FAsyncLoadCharVehAnimParams = {}


---@class FOnVehAnimLoadingCompletedDelegate : ULuaSingleDelegate
FOnVehAnimLoadingCompletedDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnVehAnimLoadingCompletedDelegate:Bind(Callback, Obj) end

---执行委托
function FOnVehAnimLoadingCompletedDelegate:Execute() end


---@class UUAEChaVehAnimListComponent: UUAECharAnimListCompBase
---@field DefaultLoadAllAnim boolean
---@field VehCharAnimDataList ULuaArrayHelper<FVehCharAnimData>
---@field bIsGreandeUseAimOffsetAnim boolean
---@field VehCharGrenadeAimOffsetAnimDataList ULuaArrayHelper<FVehCharAnimData>
local UUAEChaVehAnimListComponent = {}

---@param LoadingParam FAsyncLoadCharVehAnimParams
function UUAEChaVehAnimListComponent:OnAnimListAsyncLoadingFinished(LoadingParam) end

function UUAEChaVehAnimListComponent:OnIdleAnimListAsyncLoadingFinished() end
