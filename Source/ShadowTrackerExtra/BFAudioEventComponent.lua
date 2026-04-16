---@meta

---@class UBFAudioEventComponent: UActorComponent
---@field AudioMutexGrenadeItemID ULuaArrayHelper<number>
---@field DamageEventCD number
---@field EventHeadShotKill string
---@field EventNormalShotKill string
---@field EventHeadShotHitDown string
---@field EventNormalShotHitDown string
---@field EventGetHitDown string
---@field EventGetHitByHelicopter string
---@field EventGetHitByGatling string
---@field EventGetHitByShoot string
---@field EventShootHitTarget string
---@field EventThrowGrenade string
---@field EventMarkHardPoint string
---@field EventVehicleDieTank string
---@field EventVehicleDieHeli string
---@field EventVehicleDieCommon string
---@field EventGetHitBySniper string
---@field SniperDamageTypeClass UDamageType
---@field EventVehicleDamageByRPG string
---@field VehicleByRPGDamageTypeClass UDamageType
local UBFAudioEventComponent = {}

function UBFAudioEventComponent:BP_RegisterEvent() end

function UBFAudioEventComponent:BP_UnRegisterEvent() end

---@param InCharacter ASTExtraBaseCharacter
---@param EventName string
function UBFAudioEventComponent:BP_TriggerAudioEvent(InCharacter, EventName) end

---@param Character ASTExtraBaseCharacter
---@param Damage number
---@param DamageEvent FDamageEvent
---@param DamageInstigator AController
---@param DamageInstigatorPawn APawn
---@param IsFatalHealthCost boolean
---@param IsHeadShot boolean
function UBFAudioEventComponent:HandleOnPostTakeDamage(Character, Damage, DamageEvent, DamageInstigator, DamageInstigatorPawn, IsFatalHealthCost, IsHeadShot) end

---@param Character ASTExtraCharacter
---@param GrenadeWeapon ASTExtraWeapon
function UBFAudioEventComponent:HandleOnThrowGrenade(Character, GrenadeWeapon) end

---@param MarkInfo FQuickSignMark
function UBFAudioEventComponent:HandleOnAddSignMark(MarkInfo) end

---@param Character ASTExtraBaseCharacter
---@return boolean
function UBFAudioEventComponent:CheckCharacterDamageAudioEventCD(Character) end

---@param Character ASTExtraBaseCharacter
function UBFAudioEventComponent:AddCharacterHandleDamageTime(Character) end

---@param Vehicle AActor
---@param Damage number
---@param Instigator AController
---@param DamageEvent FDamageEvent
---@param DamageCauser AActor
function UBFAudioEventComponent:HandleOnVehicleDieDS(Vehicle, Damage, Instigator, DamageEvent, DamageCauser) end

---@param Vehicle AActor
---@param Damage number
---@param Instigator AController
---@param DamageEvent FDamageEvent
---@param DamageCauser AActor
function UBFAudioEventComponent:HandleOnVehicleDamage(Vehicle, Damage, Instigator, DamageEvent, DamageCauser) end
