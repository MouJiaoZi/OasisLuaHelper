---@meta

---@class FHitFlow
---@field AimType number
---@field Distance number
---@field IsKill number
---@field Damage number
---@field bFallOnGround boolean
---@field bFallOnGroundPostHit boolean
---@field PlayerStates ULuaArrayHelper<number>
---@field HitPos number
FHitFlow = {}


---@class FWeaponRecord
---@field WeaponId number
---@field FireCount number
---@field HitCount number
---@field KillCount number
---@field TotalDamage number
---@field ReloadCount number
---@field HitFlow ULuaArrayHelper<FHitFlow>
FWeaponRecord = {}


---@class FWeaponUseReport
---@field WeaponID number
---@field UseTime number
---@field ReloadCount number
FWeaponUseReport = {}


---@class FWeaponReport
---@field WeaponId number
---@field FireCount number
---@field HitCount number
---@field KillCount number
---@field TotalDamage number
---@field TotalOwnTime number
---@field TotalUseTime number
---@field HitFlow ULuaArrayHelper<FHitFlow>
FWeaponReport = {}


---@class FFlareGunReport
---@field PickUpNum number
---@field FireNum number
---@field CallSuperAirDropSuccessNum number
---@field CallVehicleDropSuccessNum number
FFlareGunReport = {}


---@class FOnePlayerWeapon
---@field PlayerId string
---@field Weapons ULuaArrayHelper<FWeaponReport>
---@field FlareGunReport FFlareGunReport
FOnePlayerWeapon = {}


---@class FTotalWeaponReport
---@field BattleId string
---@field BattleMode number
---@field TotalWeaponRecord ULuaArrayHelper<FOnePlayerWeapon>
FTotalWeaponReport = {}


---@class FDamageReport
---@field CauseDayTime string
---@field DamageType number
---@field CauserPlayerName string
---@field CauserPlayerStates ULuaArrayHelper<number>
---@field CauserTeamID number
---@field VictimPlayerName string
---@field VictimPlayerStates ULuaArrayHelper<number>
---@field VictimTeamID number
---@field DamageAmount number
---@field LeftHealth number
---@field LeftBreath number
---@field bTriggerGoToLastBreath boolean
---@field bTriggerGoToDie boolean
FDamageReport = {}


---@class FOnePlayerDamageReport
---@field PlayerUID string
---@field DamageReportList ULuaArrayHelper<FDamageReport>
FOnePlayerDamageReport = {}


---@class FRealTimePlayerDamageData
FRealTimePlayerDamageData = {}


---@class FRealTimeDamageReporter
FRealTimeDamageReporter = {}


---@class FTotalDamageReport
---@field GameNumber string
---@field TotalDamageRecord ULuaArrayHelper<FOnePlayerDamageReport>
FTotalDamageReport = {}


---@class FWeaponShootItemData
---@field WeaponID FItemDefineID
---@field ShootType number
---@field ShootTime number
---@field ShootTimePlayerPos FVector
---@field ShootID number
---@field PelletID number
---@field HitPos number
---@field ShootRange number
---@field AutoAimTarget AActor
FWeaponShootItemData = {}


---@class FWeaponShootBulletHitItemData
---@field WeaponID FItemDefineID
---@field ShootID number
---@field PelletID number
---@field HitPos number
---@field HitTarget AActor
---@field HitTime number
FWeaponShootBulletHitItemData = {}


---@class FClientWeaponShootReportShootTypeData
---@field ShootType number
---@field HitHeadNum number
---@field HitBodyNum number
---@field HitOtherNum number
---@field ShootNum number
FClientWeaponShootReportShootTypeData = {}


---@class FClientWeaponShootReportItemData
---@field ShootRange number
---@field HitHeadNum number
---@field HitBodyNum number
---@field HitOtherNum number
---@field ShootNum number
---@field WeaponShootTypeDataList ULuaArrayHelper<FClientWeaponShootReportShootTypeData>
FClientWeaponShootReportItemData = {}


---@class FClientWeaponShootReportData
---@field WeaponID number
---@field WeaponDataList ULuaArrayHelper<FClientWeaponShootReportItemData>
FClientWeaponShootReportData = {}


---@class FRealTimePlayerClientWeaponShootReporter
FRealTimePlayerClientWeaponShootReporter = {}


---@class FOnePlayerClientWeaponShootReport
---@field PlayerUID string
---@field AllWeaponShootDataList ULuaArrayHelper<FClientWeaponShootReportData>
FOnePlayerClientWeaponShootReport = {}


---@class FTotalClientWeaponShootReport
---@field GameNumber string
---@field TotalClientWeaponShootReport ULuaArrayHelper<FOnePlayerClientWeaponShootReport>
FTotalClientWeaponShootReport = {}


---@class FWeaponKillData
---@field TotalKillsNum number
---@field KillEnemyNum number
---@field NeedReportBattleResult boolean
FWeaponKillData = {}
