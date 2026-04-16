---@meta

---@class EArmorTypeEnum
---@field None number
---@field LevelOne number
---@field LevelTwo number
---@field LevelThree number
EArmorTypeEnum = {}


---@class ANewShootTarget: AEasyActivityTarget
---@field CurBoxShootID number
---@field CriticalCoef number
---@field NormalCoef number
---@field FirstTakeDamageTime number
---@field LastTakeDamageTime number
---@field BisTakeFirstDamage boolean
---@field DamageTimePeriod number
---@field CriticalBoxTag string
---@field BisDestroySelf boolean
---@field BisDamageFonts boolean
---@field BisTakeDamage boolean
---@field CurShootID number
---@field ArmorRandomSetting ULuaMapHelper<EArmorTypeEnum, number>
---@field ArmorBodyCoef ULuaMapHelper<EArmorTypeEnum, number>
---@field ArmorHeadCoef ULuaMapHelper<EArmorTypeEnum, number>
---@field ArmorScoreCoef ULuaMapHelper<EArmorTypeEnum, number>
---@field CurArmor EArmorTypeEnum
local ANewShootTarget = {}

function ANewShootTarget:GetLimbsRangeComponent() end

function ANewShootTarget:BPAfterHandleHealthZero() end

function ANewShootTarget:BPTargetBeHit() end

function ANewShootTarget:DestroySelf() end

---@param damage number
function ANewShootTarget:FisrtTimeTakeDamage(damage) end

---@param Damage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
function ANewShootTarget:RPC_Client_NotifyDamageNumber(Damage, DamageEvent, EventInstigator, DamageCauser) end

---@param Damage number
---@param bHeadShot boolean
---@param bDeadlyShot boolean
---@param EventInstigator AController
---@param DamageCauser AActor
---@param DamageEvent FDamageEvent
function ANewShootTarget:AddShowHitDamage(Damage, bHeadShot, bDeadlyShot, EventInstigator, DamageCauser, DamageEvent) end

---@return boolean
function ANewShootTarget:BisCanTakeDamage() end

---@return number
function ANewShootTarget:GetCurArmorBodyCoef() end

---@return number
function ANewShootTarget:GetCurArmorHeadCoef() end

---@return EArmorTypeEnum
function ANewShootTarget:GetRandomArmor() end

function ANewShootTarget:RandomCurArmor() end

function ANewShootTarget:OnRep_CurArmor() end

function ANewShootTarget:ClientCurArmorChange() end

---@param ShootWeapon ASTExtraShootWeapon
---@param Bullet ASTExtraShootWeaponBulletBase
---@param HitInfo FHitResult
---@param BulletHitInfoUploadData FBulletHitInfoUploadData
---@return number
function ANewShootTarget:GetFinalBulletDamageByHitInfo(ShootWeapon, Bullet, HitInfo, BulletHitInfoUploadData) end

---@param Damage number
---@param BisCrit boolean
function ANewShootTarget:ShowDamageNum(Damage, BisCrit) end
