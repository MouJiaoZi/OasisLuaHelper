---@meta

---@class EPullSpeedType
---@field EPullSpeedType_Scalar number @PullSpeedType_Scalar
---@field EPullSpeedType_Curve number @PullSpeedType_Curve
EPullSpeedType = {}


---@class FPullCollisionIgnore
---@field IgnoreSame boolean
---@field IgnoreEnemy boolean
---@field IgnoreNeutral boolean
FPullCollisionIgnore = {}


---@class FGameplayTaskPullParameters
---@field SpeedType EPullSpeedType
---@field LaunchSpeed number
---@field FaceToTargetLocation boolean
---@field CollisionIgnore FPullCollisionIgnore
FGameplayTaskPullParameters = {}


---@class UGameplayTask_Pull: UUAEGameplayTask
---@field TargetTransform FTransform
---@field PullParameters FGameplayTaskPullParameters
---@field StartLocation FVector
local UGameplayTask_Pull = {}

---@param SelfRef ACharacter
---@param HitResult FHitResult
function UGameplayTask_Pull:MoveBlockHitResultInner(SelfRef, HitResult) end

---@param SelfRef ASTExtraCharacter
---@param HitResult FHitResult
function UGameplayTask_Pull:MoveBlockCharacter(SelfRef, HitResult) end

---@param SelfRef AGenericCharacter
---@param HitResult FHitResult
function UGameplayTask_Pull:MoveBlockGenericCharacter(SelfRef, HitResult) end

---@param CharacterOwner ACharacter
---@param MovementInstance UCustomMovementBase
---@param MoveTime number
---@param DeltaTime number
---@return FVector
function UGameplayTask_Pull:CalXYCustomVelocity(CharacterOwner, MovementInstance, MoveTime, DeltaTime) end

---@param CharacterOwner ACharacter
---@param MovementInstance UCustomMovementBase
---@param MoveTime number
---@param DeltaTime number
---@return number
function UGameplayTask_Pull:CalZCustomVelocity(CharacterOwner, MovementInstance, MoveTime, DeltaTime) end
