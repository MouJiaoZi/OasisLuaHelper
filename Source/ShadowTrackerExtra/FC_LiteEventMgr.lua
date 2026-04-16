---@meta

---@class FPlayerApplyDamageRecordList
---@field DamageList ULuaArrayHelper<number>
FPlayerApplyDamageRecordList = {}


---@class UFC_LiteEventMgr: UFeatureCustomModule
---@field BF_ApplyDamageToTargetBattleFieldDamageEventID number
---@field BF_MilitaryRankTaskEventID number
---@field BF_ApplyDamageAccInterval number
---@field ApplyDamageRecordMap ULuaMapHelper<AActor, FPlayerApplyDamageRecordList>
---@field OnOwnerPlayerDeadDelegate FOnOwnerPlayerDeadDelegate
---@field SyncInstigatorDamagePackageRecordMap ULuaMapHelper<AActor, FSyncInstigatorDamagePackage_VictimTarget>
local UFC_LiteEventMgr = {}

---@param Damage number
---@param DamageEvent FDamageEvent
---@param DamageApplyer ASTExtraCharacter
---@param VictimActor AActor
---@param EventInstigator AController
---@param DamageCauser AActor
function UFC_LiteEventMgr:HandlePlayerApplyDamageToTarget(Damage, DamageEvent, DamageApplyer, VictimActor, EventInstigator, DamageCauser) end

---@param OwnerPlayer ASTExtraCharacter
function UFC_LiteEventMgr:HandleOwnerPlayerDead(OwnerPlayer) end

---@param VictimPlayer ASTExtraCharacter
function UFC_LiteEventMgr:HandleVictimPlayerDead(VictimPlayer) end

---@param Damage number
---@param DamageType number
---@param DamageApplyer ASTExtraCharacter
---@param VictimActor AActor
---@param EventInstigator AController
---@param DamageCauser AActor
---@param DamageFlag number
function UFC_LiteEventMgr:HandlePlayerApplyDamageToTargetWithFlag(Damage, DamageType, DamageApplyer, VictimActor, EventInstigator, DamageCauser, DamageFlag) end

---@param Damage number
---@param DamageType number
---@param DamageApplyer ASTExtraCharacter
---@param VictimActor AActor
---@param EventInstigator AController
---@param DamageCauser AActor
---@param DamageFlag number
---@param ItemID number
function UFC_LiteEventMgr:HandlePlayerApplyDamageToTargetWithFlagCommon(Damage, DamageType, DamageApplyer, VictimActor, EventInstigator, DamageCauser, DamageFlag, ItemID) end

function UFC_LiteEventMgr:HandleTimerFinished() end

---@param VictimActor AActor
---@param DamageCauser AActor
---@param ItemID number
---@param Damage number
function UFC_LiteEventMgr:ReportMilitaryRankTaskEvent(VictimActor, DamageCauser, ItemID, Damage) end

---@param VictimPlayer ASTExtraCharacter
---@param bBind boolean
function UFC_LiteEventMgr:BindOrUnBindVictimPlayerDelegate(VictimPlayer, bBind) end

---@param SpesificChosenTarget AActor
function UFC_LiteEventMgr:Flush(SpesificChosenTarget) end

function UFC_LiteEventMgr:FlushShotGunSimulateDamageRecordMap() end
