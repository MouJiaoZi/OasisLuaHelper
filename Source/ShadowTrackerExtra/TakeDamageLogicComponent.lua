---@meta

---受击组件 包含受击表现（动画），伤害冒字，伤害公式等
---@class UTakeDamageLogicComponent: UActorComponent, ITakeDamageLogicInterface
---@field HurtByBulletAnimCDTime number
---@field NeedSyncDamageData boolean
---@field DamageSyncFrameFrequency number
---@field HurtDir FVector
---@field HurtDistance number
---@field HitAnimPlay FHitAnimPlay
---@field OnDeath FTDCCharacterDeathDelegate
---@field TakeDamageLogicInClient FTakeDamageLogicInClient
---@field OnTakeDamage FOnTakeDamageDelegate
---@field bShouldHideBulletHitEffect boolean
---@field IsShowDamageNum boolean
---@field bOpenHitFeedback boolean
---@field EnableRagdoll boolean
---@field DelayRemoveDeadBody number
---@field DamageType2DeadDelayTime ULuaMapHelper<number, number>
---@field bHideAllPrimitiveOnDead boolean
---@field bNeedDestroyOnDeath boolean
---@field DisappearOnDeathLifeSpan number
---@field TakeDamageCalculation USTExtraGameMagnitudeCalculation
---@field bOnlySimulateDamageForAttacker boolean
---@field DeathMuteStateTags FGameplayTagContainer
local UTakeDamageLogicComponent = {}

---@param DamageCauser AActor
---@return boolean
function UTakeDamageLogicComponent:IsInSameCamp(DamageCauser) end

---@param Damage number
---@param DamageFlags number
---@param DamageType number
---@param InstigatorController AController
---@param DamageTypeTags ULuaArrayHelper<string>
---@param DamageInstigatorPawn APawn
---@param DamagePoint FVector
---@param DamageBodyType number
function UTakeDamageLogicComponent:HandleShowDamageNumber(Damage, DamageFlags, DamageType, InstigatorController, DamageTypeTags, DamageInstigatorPawn, DamagePoint, DamageBodyType) end

---@param DynamicState FGameplayTag
function UTakeDamageLogicComponent:OnDynamicStateEnter(DynamicState) end

---@param DynamicState FGameplayTag
function UTakeDamageLogicComponent:OnDynamicStateLeave(DynamicState) end

---@param Damage number
---@param DamageTypeID number
---@param DamageInstigatorPawn APawn
---@param IsHeadShotDamage boolean
function UTakeDamageLogicComponent:BroadcastCompactClientsSimulateDamage(Damage, DamageTypeID, DamageInstigatorPawn, IsHeadShotDamage) end

---@param Damage number
---@param DamageEvent FDamageEvent
---@param DamageCauser AActor
---@param killController AController
---@param IsHeadShotDamage boolean
---@param typeID number
function UTakeDamageLogicComponent:BroadcastClientsDeath(Damage, DamageEvent, DamageCauser, killController, IsHeadShotDamage, typeID) end

function UTakeDamageLogicComponent:OpenDeadBodyRagDoll() end

function UTakeDamageLogicComponent:ForceDie() end

---@param AttrName string
---@param CurValue number
function UTakeDamageLogicComponent:OnHealthModify(AttrName, CurValue) end
