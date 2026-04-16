---@meta

---@class FEscapeModStatDamageInfo
---@field PlayerKey number
---@field Damage number
FEscapeModStatDamageInfo = {}


---挂在怪物Character上，用于怪物统计数据，用于击杀任务
---@class UEscapeModStatComponent: UActorComponent
---@field SpawnedTime number
---@field EscapeMonsterUniqueID number
---@field LastAttackerPlayerKey number
---@field KillerPlayerUIDList ULuaArrayHelper<string>
---@field OnEscapeMonsterTakeDamage FOnEscapeMonsterTakeDamageDelegate
---@field OnEscapeMonsterTakeDamageEx FOnEscapeMonsterTakeDamageDelegateEx
local UEscapeModStatComponent = {}

---@param Damage number
---@param DamageType UDamageType
---@param InstigatedBy AController
---@param DamageCauser AActor
function UEscapeModStatComponent:ReceiveDamge(Damage, DamageType, InstigatedBy, DamageCauser) end

function UEscapeModStatComponent:ReportAssistNonDeathModDie() end

---@param DeadCharacter ASTExtraCharacter
---@param Killer AController
---@param DamageCauser AActor
---@param KillingHitInfo FHitResult
---@param KillingHitImpulseDir FVector
---@param KillingHitDamageTypeID number
---@param DamageTypeClass USTExtraDamageType
---@param IsHeadShotDamage boolean
---@param Context FGameMagnitudeContext
function UEscapeModStatComponent:OnCharacterOwnerDeath(DeadCharacter, Killer, DamageCauser, KillingHitInfo, KillingHitImpulseDir, KillingHitDamageTypeID, DamageTypeClass, IsHeadShotDamage, Context) end

function UEscapeModStatComponent:GetInstigatorMap() end
