---@meta

---@class ANewTrainShootingPracticeTarget: AShootingPracticeTarget
---@field CriticalDamage number
---@field NormalDamage number
---@field OtherPartDamage number
---@field bUseWeaponHitPartCoff_Critical boolean
---@field bUseWeaponHitPartCoff_Normal boolean
---@field CurShootID number
---@field DestroyMyselfTime number
---@field JustUseSuperTakeDamage boolean
---@field BisDestroyMyself boolean
local ANewTrainShootingPracticeTarget = {}

---@param FinalDamage number
---@param Damage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
---@param HitResult FHitResult
---@param RelativeImpactPoint FVector
---@return number
function ANewTrainShootingPracticeTarget:AfterTakeDamage(FinalDamage, Damage, DamageEvent, EventInstigator, DamageCauser, HitResult, RelativeImpactPoint) end

---@param Damage number
---@param bHeadShot boolean
---@param bDeadlyShot boolean
function ANewTrainShootingPracticeTarget:AddShowHitDamage(Damage, bHeadShot, bDeadlyShot) end

function ANewTrainShootingPracticeTarget:BPBeforeDestroyMyself() end

---@param EventInstigator AController
function ANewTrainShootingPracticeTarget:BPAfterHanleHealthZero(EventInstigator) end

---@param Damage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
function ANewTrainShootingPracticeTarget:RPC_Client_NotifyDamageNumber(Damage, DamageEvent, EventInstigator, DamageCauser) end

---@param WeaponID number
function ANewTrainShootingPracticeTarget:BPTargetBeHit(WeaponID) end

---@param WeaponID number
function ANewTrainShootingPracticeTarget:BPTargetBeCritHit(WeaponID) end

function ANewTrainShootingPracticeTarget:BPTargetShootIDChange() end

function ANewTrainShootingPracticeTarget:DestroyMyself() end

---@param EventInstigator AController
---@return boolean
function ANewTrainShootingPracticeTarget:HandleHealthZero(EventInstigator) end
