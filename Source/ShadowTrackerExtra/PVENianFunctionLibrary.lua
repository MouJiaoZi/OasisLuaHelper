---@meta

---@class FPVENianEnemyQueryParams
---@field QueryRadius number
---@field QueryLocation FVector
---@field bGPUMonsterForceEnemy boolean
---@field IgnoreActors ULuaArrayHelper<AActor>
---@field CountLimitParams FCountLimitActorFilterParams
FPVENianEnemyQueryParams = {}


---@class UPVENianFunctionLibrary: UBlueprintFunctionLibrary
local UPVENianFunctionLibrary = {}

---删除掉包含Tag的新旧Buff
---@param Character ASTExtraBaseCharacter
---@param BuffTag FGameplayTag
function UPVENianFunctionLibrary:PVENianRemoveAllKindOfBuffByTag(Character, BuffTag) end

---获取角色指定范围内的敌人
---@param Character ASTExtraBaseCharacter
---@param QueryParams FPVENianEnemyQueryParams
---@param OutEnemies ULuaArrayHelper<AActor>
---@return boolean
function UPVENianFunctionLibrary:PVENianGetEnemiesInRadius(Character, QueryParams, OutEnemies) end

---是否在低端机忽略模拟端特效
---@param ParticleInstigatorActor AActor
---@return boolean
function UPVENianFunctionLibrary:PVENianEnableIgnoreSimulateParticleOnLowGradeDevice(ParticleInstigatorActor) end

---是否在低端机忽略模拟端音效
---@param SoundInstigatorActor AActor
---@return boolean
function UPVENianFunctionLibrary:PVENianEnableIgnoreSimulateSoundOnLowGradeDevice(SoundInstigatorActor) end

---判断是否含有带某tag的buff，新老buff同时查询
---@param Character ASTExtraBaseCharacter
---@param BuffTag FGameplayTag
---@return boolean
function UPVENianFunctionLibrary:PVENianCheckHasBuffByTag(Character, BuffTag) end
