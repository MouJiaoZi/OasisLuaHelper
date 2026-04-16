---@meta

---@class ESTEWeaponHoldType
---@field Hand number
---@field Rifle number
---@field Pistol number
---@field Melee number
ESTEWeaponHoldType = {}


---@class ESTEWeaponShootType
---@field None number
---@field OneBulletBursting number
---@field MultiBulletsBursting number
---@field Auto number
---@field Volley number
ESTEWeaponShootType = {}


---@class EWeaponState
---@field WS_Unavailable number
---@field WS_UnEquiped number
---@field WS_Equiped number
EWeaponState = {}


---@class EWeaponType
---@field AWT_None number
---@field AWT_Pistol number
---@field AWT_PistolSilencer number
---@field AWT_ShotGun number
---@field AWT_SubmachineGun number
---@field AWT_RPG number
---@field AWT_ChargeGun number
---@field AWT_Knife number
---@field AWT_EnegyCaptureWhip number
---@field AWT_RifleGun number
EWeaponType = {}


---@class EWeaponHoldType
---@field EWHT_None number
---@field EWHT_SingleHand number
---@field EWHT_TwoHand number
---@field EWHT_Carried number
---@field EWHT_Max number
EWeaponHoldType = {}


---@class EWeaponSingleHandHoldType
---@field EWSHHT_Right number @右手持枪
---@field EWSHHT_Left number @左手持枪
---@field EWSHHT_Each number @左右手分别持枪
EWeaponSingleHandHoldType = {}


---@class EShootWeaponState
---@field SWS_Idle number
---@field SWS_NoneIdle number
---@field SWS_Shooting number
---@field SWS_Reloading number
---@field SWS_ReloadDone number
EShootWeaponState = {}


---@class ShootWeaponAnimType
---@field SWAT_Shoot number
---@field SWAT_NoneShoot number
---@field SWAT_Reload number
---@field SWAT_IdleToNoneIdle number
ShootWeaponAnimType = {}


---@class EShootWeaponShootMode
---@field SWST_MuzzleDirection number
---@field SWST_TargetDirection number
---@field SWST_TraceTarget number
---@field SWST_None number
---@field SWST_MAX number
EShootWeaponShootMode = {}


---@class EWeaponAction
---@field WA_None number
---@field WA_EquipWeapon number
---@field WA_UnEquipWeapon number
---@field WA_Shoot number
---@field WA_IdleToNoneIdle number
---@field WA_NoneShoot number
---@field WA_Reload number
---@field WA_ReloadEnd number
---@field WA_AutoShoot number
---@field WA_DropWeapon number
---@field WA_StopShoot number
---@field WA_StopShootCommon number
EWeaponAction = {}


---@class EWeaponReloadType
---@field Magzine number
---@field OneByOne number
---@field OneByOneAndClip number
---@field WeaponReloadType_Maximum number
EWeaponReloadType = {}


---@class EWeaponReloadMethod
---@field ALL number
---@field Tactical number
---@field WeaponReloadMethod_Maximum number
EWeaponReloadMethod = {}


---@class EFreshWeaponStateType
---@field FreshWeaponStateType_None number @无状态
---@field FreshWeaponStateType_Inactive number @不活跃状态
---@field FreshWeaponStateType_Idle number @空闲状态
---@field FreshWeaponStateType_IdleToBackpack number @从空闲到背包
---@field FreshWeaponStateType_Backpack number @背包状态
---@field FreshWeaponStateType_BackpackToIdle number @从背包到空闲
---@field FreshWeaponStateType_BackpackToIdlePreFinish number @掏枪结束到Idle中间状态
---@field FreshWeaponStateType_Fire number @开火状态
---@field FreshWeaponStateType_Reload number @换弹状态
---@field FreshWeaponStateType_NoBullet number @无子弹状态
---@field FreshWeaponStateType_PreFire number @预开火状态
---@field FreshWeaponStateType_PostFire number @开火后状态
---@field FreshWeaponStateType_PostReload number @换弹后状态
---@field FreshWeaponStateType_WarmUp number @预热状态
---@field FreshWeaponStateType_Drop number @丢弃状态
---@field FreshWeaponStateType_AccumulateEnergy number @聚能状态
---@field FreshWeaponStateType_BowAccumulateEnergy number @弓箭蓄力状态
---@field FreshWeaponStateType_PostFireCommon number @通用结束开火
---@field FreshWeaponStateType_PostFireCustom number @自定义开火后状态
---@field FreshWeaponStateType_FastDraw number @快速拔枪
---@field FreshWeaponStateType_IdleToFastDraw number @从空闲到快速拔枪
---@field FreshWeaponStateType_FastDrawToIdle number @从快速拔枪到空闲
---@field FreshWeaponStateType_FastDrawToBackpack number @从快速拔枪到背包
---@field FreshWeaponStateType_BackpackToFastDraw number @从背包到快速拔枪
EFreshWeaponStateType = {}


---@class EWeaponFireMode
---@field WeaponFireMode_Single number @单发
---@field WeaponFireMode_Burst number @连发
---@field WeaponFireMode_Auto number @自动
EWeaponFireMode = {}


---@class EReleaseToFireType
---@field RELEASEFIRE_NONE number @无松手开火
---@field RELEASEFIRE_SHOTGUN number @霰弹枪松手开火
---@field RELEASEFIRE_SNIPER number @单发狙、十字弩单手开火
---@field RELEASEFIRE_BRUST number @Brust模式松手开火
EReleaseToFireType = {}


---@class EWeaponWeightType
---@field WeaponWeightType_None number @未定义
---@field WeaponWeightType_Heavy number @重武器
---@field WeaponWeightType_Light number @轻武器
EWeaponWeightType = {}


---@class EDualWeaponFireType
---@field DualWeaponFireType_Right number @双持武器-右手开火
---@field DualWeaponFireType_Left number @双持武器-左手开火
EDualWeaponFireType = {}


---@class EWeaponReloadState
---@field MagStart number @MagStart
---@field MagOut number @MagOut
---@field MagIn number @MagIn
---@field MagEnd number @MagEnd
EWeaponReloadState = {}
