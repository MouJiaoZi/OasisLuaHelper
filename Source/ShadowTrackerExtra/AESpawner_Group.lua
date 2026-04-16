---@meta

---@class FGroupWaitSpawnParams
FGroupWaitSpawnParams = {}


---@class FGroupMemberAttribute
FGroupMemberAttribute = {}


---生成系统：用于做群组刷新
---@class AAESpawner_Group: ASTSpawnerBase
---@field AIFeatureInfoTableName string @AI属性表配置表
---@field AIDifficultyInfoTableName string @AI 全局属性配置表
---@field AITagTableName string
---@field AttributeGroup UGameAttributeGroup
---@field InitSetAttrMap ULuaMapHelper<string, number>
---@field TeamAIComponents ULuaArrayHelper<UActorComponent>
local AAESpawner_Group = {}

function AAESpawner_Group:ActivateSpawner() end

function AAESpawner_Group:DeactivateSpawner() end

---@param NewUnit AActor
---@param SpawnParam FSTSpawnParam
---@param Spawner ASTSpawnerBase
function AAESpawner_Group:OnUnitSpawned(NewUnit, SpawnParam, Spawner) end

function AAESpawner_Group:BPAfterActivateSpawner() end

---Callback from 'SpawnTiming', which would tell spawner whether it is time to spawn.
---@param IsRipe boolean
function AAESpawner_Group:OnSpawnTimingRipe(IsRipe) end

---@param DeadCharacter ASTExtraSimpleCharacter
---@param Killer AController
---@param DamageCauser AActor
---@param KillingHitInfo FHitResult
---@param KillingHitImpulseDir FVector
---@param KillingHitDamageType UDamageType
function AAESpawner_Group:OnOwnedMobDead(DeadCharacter, Killer, DamageCauser, KillingHitInfo, KillingHitImpulseDir, KillingHitDamageType) end
