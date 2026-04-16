---@meta

---@class ASTExtraPhysicsStaticMeshActor: AUAEPhysicsStaticMeshActor, IDamageableInterface, IRegionObjectInterface
---@field RegionSize ERegionSizeIndex
---@field SkillActionTakeDamageDir ETakeDamageDirByPhysics
---@field ApplyImpactPhysicsForcesDir EApplyImpactPhysicsForcesDir
---@field bAddTagBaseIsSimulatingPhysicsForceToPostPhysics number
---@field bAddTagImpartedMovementBaseVelocityUpperLimit number
---@field bAddTagImpartedMovementBaseVelocityZLowerLimit number
---@field bAddTagDisableCameraLag number
local ASTExtraPhysicsStaticMeshActor = {}

---@return ETakeDamageDirByPhysics
function ASTExtraPhysicsStaticMeshActor:GetSkillActionTakeDamageDir() end

---@param OutDir FVector
---@param OutHitPoint FVector
---@param Attacker AActor
---@return boolean
function ASTExtraPhysicsStaticMeshActor:GetSkillActionTakeDamageDirAndHitPoint(OutDir, OutHitPoint, Attacker) end

---@return EApplyImpactPhysicsForcesDir
function ASTExtraPhysicsStaticMeshActor:GetApplyImpactPhysicsForcesDir() end

---@param OutDir FVector
---@param OutHitPoint FVector
---@param ScrDir FVector
---@param ScrHitPoint FVector
---@param Attacker AActor
---@return boolean
function ASTExtraPhysicsStaticMeshActor:GetApplyImpactPhysicsForcesDirAndHitPoint(OutDir, OutHitPoint, ScrDir, ScrHitPoint, Attacker) end

---@return boolean
function ASTExtraPhysicsStaticMeshActor:GetCanBePicked_BP() end

---@return number
function ASTExtraPhysicsStaticMeshActor:GetBeVehicleDamageSpeed_BP() end

---@return number
function ASTExtraPhysicsStaticMeshActor:GetBeVehicleDamagedCoefficient_BP() end

---@return boolean
function ASTExtraPhysicsStaticMeshActor:GetCanBeMeleeGrenadeHitDamage_BP() end
