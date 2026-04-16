---@meta

---@class EVehiclePartName
---@field Default number @默认
---@field Turret number @炮台
---@field Engine number @引擎
---@field LeftTrack number @左履带
---@field RightTrack number @右履带
---@field Underpan number @底盘
---@field Body number @车身
---@field LeftForwardTrack number @左前履带(四履带车)
---@field RightForwardTrack number @右前履带(四履带车)
---@field LeftBackTrack number @左后履带(四履带车)
---@field RightBackTrack number @右后履带(四履带车)
---@field Backup number @备用部位
---@field EVehiclePartNameMax number
EVehiclePartName = {}


---@class EVehicle2HPType
---@field HP1 number @使用血条1
---@field HP2 number @使用血条2
EVehicle2HPType = {}


---@class EVehiclePartDirection
---@field Default number @默认
---@field Front number @正面
---@field Back number @背面
---@field Side number @侧面
---@field Up number @上面
---@field Bottom number @下面
---@field Custom number @自定义
---@field EVehiclePartDirectionMax number
EVehiclePartDirection = {}


---@class FSTExtraVehicleWheelHP
---@field HPMax number
---@field DontDamageWheels boolean
---@field DontDamageWheelTransferDamageToVehicle boolean
---@field BoneName string
FSTExtraVehicleWheelHP = {}


---@class FMaterialDamage
---@field DamageScale number
FMaterialDamage = {}


---@class FShapeDamageConfig
---@field Direction EVehiclePartDirection
---@field DirectionNormal FVector
---@field MinDotValue number
---@field DamageScale number
---@field HitPartIndex number
FShapeDamageConfig = {}


---@class FVehiclePartConfig
---@field PartName EVehiclePartName
---@field MaxHP number
---@field PartCanTakeDamage boolean
---@field PartShowTips boolean
---@field ShapeIndexArray ULuaArrayHelper<number>
---@field DefaultDamageScale number
---@field DamageVehicleScale number
---@field DamagePartScales ULuaArrayHelper<FShapeDamageConfig>
---@field CalcNormalInShapeSpace boolean
---@field DefaultHitPartIndex number
FVehiclePartConfig = {}


---@class FVehicleHPChangedDelegate : ULuaMulticastDelegate
FVehicleHPChangedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, HP: number, HPMax: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleHPChangedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param HP number
---@param HPMax number
function FVehicleHPChangedDelegate:Broadcast(HP, HPMax) end


---@class FVehicleFuelChangedDelegate : ULuaMulticastDelegate
FVehicleFuelChangedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Fuel: number, FuelMax: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleFuelChangedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Fuel number
---@param FuelMax number
function FVehicleFuelChangedDelegate:Broadcast(Fuel, FuelMax) end


---@class FVehicleHPFuelChangedDelegate : ULuaMulticastDelegate
FVehicleHPFuelChangedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, HP: number, Fuel: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleHPFuelChangedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param HP number
---@param Fuel number
function FVehicleHPFuelChangedDelegate:Broadcast(HP, Fuel) end


---@class FVehicleTakeDamageDelegate : ULuaMulticastDelegate
FVehicleTakeDamageDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Damage: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleTakeDamageDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Damage number
function FVehicleTakeDamageDelegate:Broadcast(Damage) end


---@class FVehicleWheelsHPChangedDelegate : ULuaSingleDelegate
FVehicleWheelsHPChangedDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleWheelsHPChangedDelegate:Bind(Callback, Obj) end

---执行委托
function FVehicleWheelsHPChangedDelegate:Execute() end


---@class FVehicleChargingStateChangedDelegate : ULuaMulticastDelegate
FVehicleChargingStateChangedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bInCharging: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleChargingStateChangedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param bInCharging boolean
function FVehicleChargingStateChangedDelegate:Broadcast(bInCharging) end


---@class FVehicleDamageInfoDelegate : ULuaMulticastDelegate
FVehicleDamageInfoDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Damage: number, Instigator: AController, DamageEvent: FDamageEvent, DamageCauser: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleDamageInfoDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Damage number
---@param Instigator AController
---@param DamageEvent FDamageEvent
---@param DamageCauser AActor
function FVehicleDamageInfoDelegate:Broadcast(Damage, Instigator, DamageEvent, DamageCauser) end


---@class FClientVehicleDamageEffectDelegate : ULuaMulticastDelegate
FClientVehicleDamageEffectDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, OtherActor: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FClientVehicleDamageEffectDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param OtherActor AActor
function FClientVehicleDamageEffectDelegate:Broadcast(OtherActor) end


---@class FOnVehicleFuelUsedUp : ULuaSingleDelegate
FOnVehicleFuelUsedUp = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnVehicleFuelUsedUp:Bind(Callback, Obj) end

---执行委托
function FOnVehicleFuelUsedUp:Execute() end


---@class FVehicleRepairedDelegate : ULuaMulticastDelegate
FVehicleRepairedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bIsRepairing: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleRepairedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param bIsRepairing boolean
function FVehicleRepairedDelegate:Broadcast(bIsRepairing) end


---载具通用逻辑组件类
---@class UVehicleCommonComponent: UVehicleComponent
---@field VehicleHPChangedDelegate FVehicleHPChangedDelegate
---@field UGC_OnVehicleHPChangedDelegate FVehicleHPChangedDelegate @载具血量变化 生效范围C @param HP 当前血量 @param HPMax 最大血量
---@field VehicleFuelChangedDelegate FVehicleFuelChangedDelegate
---@field UGC_OnVehicleFuelChangedDelegate FVehicleFuelChangedDelegate @载具油量变化 生效范围C @param Fuel 当前血量 @param FuelMax 最大血量
---@field VehicleWheelsHPChangedDelegate FVehicleWheelsHPChangedDelegate
---@field UGC_OnVehicleWheelsHPChangedDelegate FVehicleWheelsHPChangedDelegate @生效范围C 载具轮子血量发生变化
---@field VehicleHPFuelChangedDelegate FVehicleHPFuelChangedDelegate
---@field VehicleTakeDamageDelegate FVehicleTakeDamageDelegate
---@field VehicleChargingStateChangedDelegate FVehicleChargingStateChangedDelegate
---@field UGC_OnVehicleFuelUsedUpDelegate FOnVehicleFuelUsedUp @生效范围CS 油量消耗完
---@field UnmannedVehicleHPChangedDelegate FVehicleHPChangedDelegate
---@field UnmannedVehicleFuelChangedDelegate FVehicleFuelChangedDelegate
---@field DontDamage boolean
---@field ShouldShowVehicleHp boolean
---@field bIgnoreSelfVehicleWeaponDamage boolean
---@field bOBNeedRefreshEnterLeaveFlyVehicle boolean
---@field HPMax number
---@field HP number
---@field WheelsCurrentHP ULuaArrayHelper<number>
---@field bInCharging boolean
---@field DontConsumeFuel boolean
---@field ShouldShowVehicleFuel boolean
---@field bCanUseAddFuelItem boolean
---@field bCanUseMaintenanceItem boolean
---@field bRedHPWhenLowHP boolean
---@field bDontConsumeBreathInVehicle boolean
---@field FuelMax number
---@field Fuel number
---@field bRefueling boolean
---@field bReplicatedFuelLowFrequency boolean
---@field ReplicatedFuelDiffPerecent number
---@field FuelDiffBasePerecent number
---@field LastReplicatedFuelPercent number
---@field FuelConsumeFactor number
---@field ShouldShowVehicleHandbrake boolean
---@field ShouldHideClassicControlPanel boolean
---@field ShouldShowExitVehicle boolean
---@field ShouldShowChangeSeatVehicle boolean
---@field bExitVehicleIgnoreVelocityCheck boolean
---@field ForceUseTPP boolean
---@field ForceUseTPP_NewFPP boolean
---@field bForbidLeanOutWhenTurnOver boolean
---@field ForbidLeanOutAngleThreshold number
---@field bForceSwitchTPPIgnoreLock boolean
---@field MaterialDamageConfig ULuaArrayHelper<FMaterialDamage>
---@field bEnableDamageCameraShake boolean
---@field DamageCameraShakeBlackList ULuaArrayHelper<number>
---@field DamageCameraShake_DamageType ULuaMapHelper<EDamageType, UCameraShake>
---@field DamageCameraShake_InnerRadius number
---@field DamageCameraShake_OuterRadius number
---@field DamageCameraShake_FallOff number
---@field WheelsHP ULuaArrayHelper<FSTExtraVehicleWheelHP>
---@field ShouldBeUnWalkableWhenDriving boolean
---@field CheckWalkableInterval number
---@field UnWalkableVelocity number
---@field WindowsCurrentHP ULuaArrayHelper<number>
---@field bIsRepairing boolean
---@field RepairingPlayerNum number
---@field VehicleRepairedDelegate FVehicleRepairedDelegate
---@field EnableVehiclePartDamage boolean
---@field VehiclePartRadialDamageDisSqr number
---@field VehiclePartPointDamageDisSqr number
---@field VehicleParts ULuaArrayHelper<FVehiclePartConfig>
---@field ReportDetroyVehiclePartTaskID number
---@field ReportFixVehiclePartTaskID number
---@field bShowDamageNumber boolean
---@field VehiclePartCurrentHP ULuaArrayHelper<number>
---@field VehiclePartDestroyStates ULuaArrayHelper<boolean>
---@field IsVehiclePartDamage boolean
---@field Vehicle2HPType EVehicle2HPType
local UVehicleCommonComponent = {}

---@param PrevHP number
function UVehicleCommonComponent:OnAttr_HP(PrevHP) end

---@param maxhp number
function UVehicleCommonComponent:SetHPMax(maxhp) end

---@return number
function UVehicleCommonComponent:GetHPMax() end

---@param curhp number
function UVehicleCommonComponent:SetHP(curhp) end

function UVehicleCommonComponent:OnRep_HP() end

function UVehicleCommonComponent:OnRep_WheelsCurrentHP() end

---@param bIn boolean
function UVehicleCommonComponent:SetInCharging(bIn) end

function UVehicleCommonComponent:OnRep_InCharging() end

---@param PrevFuel number
function UVehicleCommonComponent:OnAttr_Fuel(PrevFuel) end

---@param fulemax number
function UVehicleCommonComponent:SetFuelMax(fulemax) end

---@param NewFuel number
function UVehicleCommonComponent:SetFuel(NewFuel) end

---@param bNewRefueling boolean
function UVehicleCommonComponent:SetRefuelState(bNewRefueling) end

function UVehicleCommonComponent:OnRep_Fuel() end

function UVehicleCommonComponent:OnRep_RefuelingChanged() end

---@param should boolean
function UVehicleCommonComponent:SetShouldShowChangeSeatVehicle(should) end

function UVehicleCommonComponent:OnRep_ShouldShowChangeSeatVehicle() end

---@return boolean
function UVehicleCommonComponent:GetShowExitVehicle() end

---@param should boolean
function UVehicleCommonComponent:SetShouldShowExitVehicle(should) end

function UVehicleCommonComponent:OnRep_ShouldShowExitVehicle() end

---@param Character ASTExtraCharacter
---@return boolean
function UVehicleCommonComponent:GetForceUseTPP_ByCharacter(Character) end

---@param Controller AUAEPlayerController
---@return boolean
function UVehicleCommonComponent:GetForceUseTPP_ByController(Controller) end

---@param Damage number
---@param BoneName string
---@param IgnoreWheels boolean
---@param Instigator AController
---@param DamageEvent FDamageEvent
---@param DamageCauser AActor
function UVehicleCommonComponent:TakeDamageByBoneName(Damage, BoneName, IgnoreWheels, Instigator, DamageEvent, DamageCauser) end

---@param Damage number
---@param HitPart number
---@param IgnoreWheels boolean
---@param Instigator AController
---@param DamageEvent FDamageEvent
---@param DamageCauser AActor
function UVehicleCommonComponent:TakeDamageByHitPart(Damage, HitPart, IgnoreWheels, Instigator, DamageEvent, DamageCauser) end

---@param Damage number
---@param Instigator AController
---@param DamageEvent FDamageEvent
---@param DamageCauser AActor
function UVehicleCommonComponent:VehicleTakeDamage(Damage, Instigator, DamageEvent, DamageCauser) end

---@param Damage number
---@param LeftHP number
---@param DamageType number
---@param DamageAdditionalParam number
---@param DamageCauser AActor
---@param EventInstigator AController
function UVehicleCommonComponent:RPC_Multicast_VehicleTakeDamage(Damage, LeftHP, DamageType, DamageAdditionalParam, DamageCauser, EventInstigator) end

---@param Damage number
---@param LeftHP number
---@param LeftWheelHP number
---@param DamageType number
---@param DamageCauser AActor
---@param EventInstigator AController
function UVehicleCommonComponent:RPC_Multicast_VehicleWheelTakeDamage(Damage, LeftHP, LeftWheelHP, DamageType, DamageCauser, EventInstigator) end

---@param addpercenthp number
---@param fixtire boolean
---@param causer AController
function UVehicleCommonComponent:Maintenance(addpercenthp, fixtire, causer) end

---@param WheelIndex number
---@param WheelHP number
function UVehicleCommonComponent:SetWheelHP(WheelIndex, WheelHP) end

---@param value number
function UVehicleCommonComponent:BP_ConsumeFuel(value) end

---@param percent number
function UVehicleCommonComponent:SetFuelByPercent(percent) end

---@return boolean
function UVehicleCommonComponent:IsDestroyed() end

---@return boolean
function UVehicleCommonComponent:NoFuel() end

---@return number
function UVehicleCommonComponent:GetVehicleHP() end

---@return number
function UVehicleCommonComponent:GetVehicleHPMax() end

---@param WheelIdx number
---@return number
function UVehicleCommonComponent:GetWheelHP(WheelIdx) end

---@param WheelIdx number
---@return number
function UVehicleCommonComponent:GetWheelHPMax(WheelIdx) end

---@return number
function UVehicleCommonComponent:GetFuel() end

---@return number
function UVehicleCommonComponent:GetFuelMax() end

---@param InFuelConsumeFactor number
function UVehicleCommonComponent:SetFuelConsumeFactor(InFuelConsumeFactor) end

---@return number
function UVehicleCommonComponent:GetFuelConsumeFactor() end

---@return number
function UVehicleCommonComponent:GetWheelsHPNum() end

function UVehicleCommonComponent:RefreshWheelState() end

function UVehicleCommonComponent:OnRep_WindowsCurrentHP() end

---@param Damage number
---@param WindowIdx number
---@param IsRadial boolean
function UVehicleCommonComponent:WindowTakeDamage(Damage, WindowIdx, IsRadial) end

---@param Damage number
---@param Origin FVector
---@param Radius number
function UVehicleCommonComponent:WindowTakeRadialDamage(Damage, Origin, Radius) end

function UVehicleCommonComponent:DestroyAllWindows() end

---@return boolean
function UVehicleCommonComponent:GetIsRepairing() end

---@param InIsRepairing boolean
function UVehicleCommonComponent:SetIsRepairing(InIsRepairing) end

function UVehicleCommonComponent:OnRep_IsRepairing() end

---@param Damage number
---@param HitPartIndex number
---@param Instigator AController
---@param DamageEvent FDamageEvent
---@param DamageCauser AActor
function UVehicleCommonComponent:VehiclePartTakeDamage(Damage, HitPartIndex, Instigator, DamageEvent, DamageCauser) end

---@param Damage number
---@param Origin FVector
---@param Instigator AController
---@param DamageEvent FDamageEvent
---@param DamageCauser AActor
function UVehicleCommonComponent:VehiclePartTakeRadialDamage(Damage, Origin, Instigator, DamageEvent, DamageCauser) end

---@param Damage number
---@param Instigator AController
---@param DamageEvent FDamageEvent
---@param DamageCauser AActor
function UVehicleCommonComponent:VehicleTakeDamageFromPart(Damage, Instigator, DamageEvent, DamageCauser) end

---@param ImpactResult FHitResult
---@return number
function UVehicleCommonComponent:GetVehicleHitPartIdxByHitResult(ImpactResult) end

function UVehicleCommonComponent:OnRep_VehiclePartCurrentHP() end

function UVehicleCommonComponent:OnRep_VehiclePartDestroyStates() end

---@return boolean
function UVehicleCommonComponent:CantTakeDamage() end
