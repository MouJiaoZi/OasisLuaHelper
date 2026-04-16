---@meta

---@class EDamageEventFlags
---@field None number
---@field Headshot number
---@field FallDown number
---@field Dead number
---@field KillAll number
---@field DirectlyDead number
EDamageEventFlags = {}


---@class EDamageModifyPhase
---@field VeryEarly number
---@field Final number
EDamageModifyPhase = {}


---伤害类型
---@class EDamageType
---@field STPointDamage number @//*UGC* 手动点伤害
---@field ShootDamage number @//*UGC* 武器射击
---@field PoisonDamage number @//*UGC* 吃毒
---@field DrowningDamage number @//*UGC* 溺水
---@field FallingDamage number @//*UGC* 跳楼
---@field MeleeDamage number @//*UGC* 拳头近战
---@field GrenadeRadiusDamage number @//*UGC* 投掷物
---@field BurningDamage number @//*UGC* 火焰燃烧
---@field AirAttackDamage number @//*UGC* 空袭
---@field VehicleDamage number @//*UGC* 载具撞击
---@field VehicleExplodeRadiusDamage number @//*UGC* 载具爆炸
---@field LastBreathWithoutRescue number @//*UGC* 重伤状态下没人救助
---@field WinnerFakeDeath number @//*UGC* 获胜,其实没有死
---@field PoisonWaterDamage number @//*UGC* 有毒水体
---@field ElectricDamage number @//*UGC* 电
---@field ZombieDamage number @//*UGC* 僵尸
---@field LowTemperatureDamage number @//*UGC* 低温
---@field TopFiveGaveUpDamage number
---@field Resurrection number
---@field TyrantMonsterStonedDamage number
---@field GasolineCanExplosion number @//*UGC* 汽油桶爆炸
---@field RPGExplosionDamage number @//*UGC* RPG爆炸
---@field CartridgeExplosionDamage number @//*UGC* 榴弹爆炸
---@field ProjectileHitDamage number
---@field HunterMonsterClawDamage number
---@field HunterEliteBrickDamage number
---@field SonicDamage number
---@field ObserverGMDamage number
---@field Behemoth number
---@field Venom number
---@field Carnage number
---@field CampCaptainDead number
---@field PetDamage number
---@field ForceDead number
---@field LavaDamage number
---@field BulletBurnDamage number
---@field RadialDamage number
---@field CustomRadialDamage number
---@field UGCPointDamage number
---@field UGCRadialDamage number
---@field PreGiveUp number
---@field GiveUp number
---@field ReDeployByPlayer number
---@field Laser number
---@field ShovelDamage number
---@field ElectricalDamage number
---@field UGCCustomDamageType number
---@field InvalidDamageType number
EDamageType = {}


---@class EMeleeDamageSubType
---@field Fist number
---@field Cowbar number
---@field Pan number
---@field Machete number
---@field Sickle number
---@field BoxGlove number
EMeleeDamageSubType = {}


---@class EAdditionDamageSubType
---@field AdditionDamageToVehicle number
---@field AdditionDamageToZombie number
---@field AdditionDamageToDoor number
EAdditionDamageSubType = {}


---@class EAvatarDamagePosition
---@field Non number @无
---@field BigHead number @大脑袋
---@field BigLimbs number @大粗胳膊大粗腿
---@field BigBody number @大粗身体
---@field BigHand number @手部
---@field LeftHand number @左手
---@field RightHand number @右手
---@field BigFoot number @脚底
---@field LeftFoot number @左脚
---@field RightFoot number @右脚
---@field BigTail number @尾部
---@field Pelvis number @腰部
---@field BigLimb_LeftLowerArm number @左小臂
---@field BigLimb_LeftUpperArm number @左大臂
---@field BigLimb_RightLowerArm number @右小臂
---@field BigLimb_RightUpperArm number @右大臂
---@field BigLimb_LeftThigh number @左大腿
---@field BigLimb_LeftShank number @左小腿
---@field BigLimb_RightThigh number @右大腿
---@field BigLimb_RightShank number @右小腿
---@field Wheel0 number @F_L_Wheel
---@field Wheel1 number @F_R_Wheel
---@field Wheel2 number @R_L_Wheel
---@field Wheel3 number @R_R_Wheel
---@field BodyZone0 number @受击区域0
---@field BodyZone1 number @受击区域1
---@field BodyZone2 number @受击区域2
---@field BodyZone3 number @受击区域3
---@field Window0 number @车窗0
---@field Window1 number @车窗1
---@field Window2 number @车窗2
---@field Window3 number @车窗3
---@field Window4 number @车窗4
---@field Window5 number @车窗5
---@field VehiclePart0 number @载具自定义部位0
---@field VehiclePart1 number @载具自定义部位1
---@field VehiclePart2 number @载具自定义部位2
---@field VehiclePart3 number @载具自定义部位3
---@field VehiclePart4 number @载具自定义部位4
---@field VehiclePart5 number @载具自定义部位5
---@field VehiclePart6 number @载具自定义部位6
---@field VehiclePart7 number @载具自定义部位7
---@field VehiclePart8 number @载具自定义部位8
---@field VehiclePart9 number @载具自定义部位9
---@field VehiclePart10 number @载具自定义部位10
---@field VehiclePart11 number @载具自定义部位11
---@field VehiclePart12 number @载具自定义部位12
---@field VehiclePart13 number @载具自定义部位13
---@field VehiclePart14 number @载具自定义部位14
---@field VehiclePart15 number @载具自定义部位15
---@field VehiclePart16 number @载具自定义部位16
---@field VehiclePart17 number @载具自定义部位17
---@field VehiclePart18 number @载具自定义部位18
---@field VehiclePart19 number @载具自定义部位19
EAvatarDamagePosition = {}


---@class EHitFeedbackType
---@field HTT_HITWHEEL number
---@field HTT_HITVehicle number
---@field HTT_ENEMYDEAD number
---@field HTT_WHEELBURST number
---@field HTT_ENEMYDOWN number
---@field HTT_KILLALL number
---@field HTT_HEADSHOT number
---@field HTT_BODY number
---@field HTT_UPPERLIMBS number
---@field HTT_LOWERLIMBS number
---@field HTT_LESSHEALTH number
EHitFeedbackType = {}


---@class EDamageModifyMethodType
---@field Nothing number
---@field WeaponDamageAttenuation number @枪械伤害衰减
---@field WeaponHitPartCoff number @枪械伤害部位加成
---@field BodyHurtDamage number @护甲部位减伤
---@field BodyPartDamageScale number @护甲部位增伤
---@field SameCampDamage number @同阵营伤害
---@field TeammateDamage number @队友伤害
EDamageModifyMethodType = {}


---@class FSyncInstigatorDamagePackage_DamageItem
---@field Damage number
---@field Flag EDamageEventFlags
FSyncInstigatorDamagePackage_DamageItem = {}


---@class FSyncInstigatorDamagePackage_DamageCauser
---@field DamageItemList ULuaArrayHelper<FSyncInstigatorDamagePackage_DamageItem>
FSyncInstigatorDamagePackage_DamageCauser = {}


---@class FSyncInstigatorDamagePackage_VictimTarget
---@field DamageCauserDataList ULuaArrayHelper<FSyncInstigatorDamagePackage_DamageCauser>
FSyncInstigatorDamagePackage_VictimTarget = {}


---@class FSimpleDamageRepData
---@field Damage number
---@field CurrentHeath number
---@field DamageEventFlags EDamageEventFlags
---@field NetCounter number
FSimpleDamageRepData = {}


---@class FTakeDamageParams
---@field Damage number
---@field ExDamage number
---@field bHeadShot boolean
---@field HitPosition number
FTakeDamageParams = {}


---@class FKilledTipsBlock
---@field damageType EDamageType
---@field attackerName string
---@field WeaponName string
---@field DeadName string
FKilledTipsBlock = {}


---@class FSTPointDamageEvent
---@field ItemID number
FSTPointDamageEvent = {}


---@class FPoisonDamageEvent
FPoisonDamageEvent = {}


---@class FSonicDamageEvent
FSonicDamageEvent = {}


---@class FDrowningDamageEvent
FDrowningDamageEvent = {}


---@class FFallingDamageEvent
---@field FallingSpeed FVector
FFallingDamageEvent = {}


---@class FSTBurningDamageEvent
FSTBurningDamageEvent = {}


---@class FMeleeDamageEvent
---@field MeleeWeaponSubType EMeleeDamageSubType
---@field AvatarDamagePosition number
---@field IsHeadShot boolean
FMeleeDamageEvent = {}


---@class FVehicleDamageEvent
---@field bHitOtherDamage boolean @是否是撞击伤害
FVehicleDamageEvent = {}


---@class FLastBreathWithoutRescueDamageEvent
FLastBreathWithoutRescueDamageEvent = {}


---@class FForceDeadDamageEvent
FForceDeadDamageEvent = {}


---@class FElectricDamageEvent
FElectricDamageEvent = {}


---@class FShootWeaponDamageEvent
---@field AvatarDamagePosition number
---@field ShootID number
---@field AmmoID number
---@field ClientHitActorLoc FVector
---@field ShootMomentMuzzlePos FVector
---@field WeaponHitPartCoff FWeaponHitPartCoff
---@field AmmoBreakthrough number
---@field bHasRelativeImpactPoint boolean
---@field RelativeImpactPoint FVector
---@field DamageImpulse number
FShootWeaponDamageEvent = {}


---@class FProjectileHitDamageEvent
FProjectileHitDamageEvent = {}


---@class FSTCustomRadialDamageEvent
---@field ItemID number
---@field CauseUniqueID number
FSTCustomRadialDamageEvent = {}


---@class FSTRadialDamageEvent
FSTRadialDamageEvent = {}


---@class FUGCRadialDamageEvent
---@field DamageTypeID number
FUGCRadialDamageEvent = {}


---@class FUGCPointDamageEvent
---@field DamageTypeID number
FUGCPointDamageEvent = {}


---@class FSTAirAttackRadialDamageEvent
FSTAirAttackRadialDamageEvent = {}


---@class FSTPoisonWaterDamageEvent
FSTPoisonWaterDamageEvent = {}


---@class FLowTemperatureDamageEvent
FLowTemperatureDamageEvent = {}


---@class FObserverGMDamageEvent
FObserverGMDamageEvent = {}


---@class FBehemothDamageEvent
FBehemothDamageEvent = {}


---@class FDamageNumberWrapperItem
---@field Damage number
---@field DamageFlags number
---@field DamageType number
---@field DamageTypeTags ULuaArrayHelper<string>
---@field DamagePoint FVector
---@field DamageBodyType number
FDamageNumberWrapperItem = {}


---@class FDamageNumberWrapper
---@field DamageItemList ULuaArrayHelper<FDamageNumberWrapperItem>
FDamageNumberWrapper = {}


---@class FDamageScale
---@field TypeIDs ULuaArrayHelper<number>
---@field DamageScale number
FDamageScale = {}


---@class FShotGunDamageCacheData
---@field TotalDamage number
---@field LeftHealth number
---@field bIsHeadShot boolean
---@field DamageEvent FShootWeaponDamageEvent
FShotGunDamageCacheData = {}


---@class FDamageEventPack
FDamageEventPack = {}


---@class FBodyPartDamageScaleCfg
---@field Scales ULuaMapHelper<EAvatarDamagePosition, number>
FBodyPartDamageScaleCfg = {}


---@class FSkillDamageEventHandlerConfig
---@field bEnableDelegateListenerOptimize boolean
FSkillDamageEventHandlerConfig = {}


---@class UDamageEventUtil: UBlueprintFunctionLibrary
local UDamageEventUtil = {}

---@param DamageType FDamageEvent
---@param TargetDamageType UDamageType
---@return boolean
function UDamageEventUtil:IsA_UDamageType(DamageType, TargetDamageType) end


---@class UDamageType_LowTemperatureDamage: UDamageType
local UDamageType_LowTemperatureDamage = {}
