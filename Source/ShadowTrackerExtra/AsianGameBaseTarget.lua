---@meta

---@class TargetEffectType
---@field None number
---@field SpeedUp number
---@field AddOil number
---@field AddWeaponBullet number
TargetEffectType = {}


---@class FAsianTargetEffectStruct
---@field EffectType TargetEffectType
---@field AcceleratePercent number
---@field AccelerateTime number
---@field EngineBoostFactor number
---@field Mul_AcceleratePercent_IsBoosting number
---@field Mul_AccelerateTime_IsBoosting number
---@field Mul_EngineBoostFactor_IsBoosting number
---@field AddOilNum number
---@field BulletNum number
FAsianTargetEffectStruct = {}


---@class AAsianGameBaseTarget: AAsianGameEasyBaseTarget, IAsianTargetHitInterface
---@field GradeMap ULuaMapHelper<number, number>
---@field FuckTest boolean
---@field TargetGrade number
---@field GetGrade number
---@field SumOfHitGrade number
---@field SumOfHit number
---@field CritDis number
---@field CritMulti number
---@field WeaponDamageCoeff ULuaMapHelper<number, number>
---@field BisReset boolean
---@field ResetTime number
---@field DownKind number
---@field RelativeHitCompLoc FVector
---@field DestroyHandle FTimerHandle
---@field EffectArray ULuaArrayHelper<FAsianTargetEffectStruct>
---@field LockDamageForTeamSpecial boolean
---@field DestroyMyselfTime number
local AAsianGameBaseTarget = {}

function AAsianGameBaseTarget:InitData() end

---@param Bis boolean
function AAsianGameBaseTarget:ServerRepOnceBisAlive(Bis) end

---@param Color EAsianGamesTeamColor
function AAsianGameBaseTarget:BP_ClientHealthZeroEffect(Color) end

---@param Controller ASTExtraPlayerController
function AAsianGameBaseTarget:BP_DoInZeroHealthEffect(Controller) end

---@param FinalDamage number
---@param Damage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
---@return number
function AAsianGameBaseTarget:AfterTakeDamage(FinalDamage, Damage, DamageEvent, EventInstigator, DamageCauser) end

---@param Controller ASTExtraPlayerController
function AAsianGameBaseTarget:DoInZeroHealth(Controller) end

function AAsianGameBaseTarget:DestroyMyself() end

---@return boolean
function AAsianGameBaseTarget:JudgeTakeDamage() end

---@param NewVelocity FVector
function AAsianGameBaseTarget:BP_PostNetReceiveVelocity(NewVelocity) end

---@param EventInstigator ASTExtraPlayerController
function AAsianGameBaseTarget:PostToPlayerState(EventInstigator) end

---@param PS AAsianGamesPlayerState
---@param HitRing number
function AAsianGameBaseTarget:PostHitRing(PS, HitRing) end

---@param PS AAsianGamesPlayerState
---@param WeaponID number
---@param BisHitCrit boolean
function AAsianGameBaseTarget:PostWeaponID(PS, WeaponID, BisHitCrit) end

---@param PS AAsianGamesPlayerState
---@param Grade number
function AAsianGameBaseTarget:PostTargetTypeGrade(PS, Grade) end

---@param PS AAsianGamesPlayerState
---@param Distance number
function AAsianGameBaseTarget:PostTargetDistance(PS, Distance) end

---@param PC AController
function AAsianGameBaseTarget:BP_illegalTakeDamage(PC) end

---@param ActorLoc FVector
---@param PointLoc FVector
---@return boolean
function AAsianGameBaseTarget:GetHitIfCrit(ActorLoc, PointLoc) end

---@param Dis number
---@return number
function AAsianGameBaseTarget:GetHitGrade(Dis) end

---@param EventInstigator ASTExtraPlayerController
function AAsianGameBaseTarget:ResetTargetEntry(EventInstigator) end

---@param X number
---@param Y number
---@param Z number
---@return number
function AAsianGameBaseTarget:Get2DCircleCalculate(X, Y, Z) end
