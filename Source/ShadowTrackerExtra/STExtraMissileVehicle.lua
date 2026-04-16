---@meta

---@class ASTExtraMissileVehicle: ASTExtraUAVVehicleBase
---@field MaxLifeTime number @最大存在时间，超过该时间会自行爆炸
---@field HitExplosionIgnoreActors ULuaArrayHelper<AActor>
---@field DelayShutDownTime number
---@field Launched boolean
---@field IsMissileBoosting boolean
---@field LastLocation FVector
---@field HasExploded boolean
---@field LifeTimer number
---@field ShutDownTimer number
local ASTExtraMissileVehicle = {}

function ASTExtraMissileVehicle:Launch() end

function ASTExtraMissileVehicle:OnRep_Launched() end

function ASTExtraMissileVehicle:ServerBoost() end

function ASTExtraMissileVehicle:OnRep_IsMissileBoosting() end

function ASTExtraMissileVehicle:OnClientBoost() end

function ASTExtraMissileVehicle:OnClientBoostFinished() end

function ASTExtraMissileVehicle:BPOnExplod() end

function ASTExtraMissileVehicle:BPOnClientHit() end

---@param SelfActor AActor
---@param OtherActor AActor
---@param NormalImpulse FVector
---@param Hit FHitResult
function ASTExtraMissileVehicle:HandleOnVehicleHit(SelfActor, OtherActor, NormalImpulse, Hit) end

---@param SelfActor AActor
---@param OtherActor AActor
---@param NormalImpulse FVector
---@param Hit FHitResult
function ASTExtraMissileVehicle:HandleOnClientVehicleHit(SelfActor, OtherActor, NormalImpulse, Hit) end

function ASTExtraMissileVehicle:DoExplosion() end

---@param PlayerKey number
---@param bIsAI boolean
function ASTExtraMissileVehicle:OnEnemyRespawn(PlayerKey, bIsAI) end

---@param EnemyTarget ASTExtraBaseCharacter
function ASTExtraMissileVehicle:OnServerEnemyRespawn(EnemyTarget) end
