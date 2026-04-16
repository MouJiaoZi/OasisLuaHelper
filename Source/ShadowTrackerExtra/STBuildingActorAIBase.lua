---@meta

---@class ASTBuildingActorAIBase: ASTBuildingActorBase
---@field IgnoreSelfCharacter boolean
---@field UpDownBoneName string
---@field TurnBoneName string
---@field BulletTemplate ASTExtraCommonBulletBase
---@field BulletReloadCount number
---@field LifeTime number
---@field MaxShootDistance number
---@field DamageValue number
---@field ButtleScale FVector
---@field BulletSpeed number
---@field InitStateType EBuildingStateType
---@field UseTurnUpDown boolean
---@field AlertnessUseTurnUpDown boolean
---@field PitchTurnRange FVector2D
---@field YawTurnRange FVector2D
---@field ButtleMaxAngleSpeed FVector2D
---@field MaxAngleSpeed FVector2D
---@field FireInterval number
---@field FireOffset number
---@field LockDistance FVector2D
---@field ReloadWaitTime number
---@field IdleToAlertnessTime FVector2D
---@field CheckTargetInterval number
---@field ViewAngle number
---@field IsFireNeedForwardTarget boolean
---@field TargetTagList ULuaArrayHelper<string>
---@field InfactableActors ULuaArrayHelper<ASTExtraCharacter>
---@field ReloadAnimation UAnimSequence
---@field FireAudio UAkAudioEvent
---@field TurnAudio UAkAudioEvent
---@field BattleTurnAudioInterval number
---@field NormalTurnAudioInterval number
---@field TurnMeshOriginalWorldTran FTransform
---@field SimpleCharacterList ULuaArrayHelper<ASTExtraCharacter>
---@field BulletList ULuaArrayHelper<AActor>
---@field CurBulletCount number
---@field DestinLocalYaw number
---@field DestinLocalPitch number
---@field CurrentLocalRotator FRotator
---@field CurrentCheckTime number
---@field HalfViewCos number
---@field CurrentMaxSpeed FVector2D
---@field CurrentAudioInterval number
local ASTBuildingActorAIBase = {}

---@param Dir FVector
---@param Position FVector
---@param Rotation FRotator
function ASTBuildingActorAIBase:FireRPG(Dir, Position, Rotation) end

---@param LastState EBuildingStateType
---@param StateType EBuildingStateType
function ASTBuildingActorAIBase:OnEnterState(LastState, StateType) end

---@param StateType EBuildingStateType
function ASTBuildingActorAIBase:OnLeaveState(StateType) end

---@param NewStateType EBuildingStateType
function ASTBuildingActorAIBase:ChangeState(NewStateType) end

---@param InDestinYaw number
function ASTBuildingActorAIBase:TurnYaw(InDestinYaw) end

---@param InDestinPitch number
function ASTBuildingActorAIBase:TurnPitch(InDestinPitch) end

---@return boolean
function ASTBuildingActorAIBase:IsTurnYaw() end

---@return boolean
function ASTBuildingActorAIBase:IsTurnPitch() end

---@param YawOffset number
---@param PitchOffset number
function ASTBuildingActorAIBase:TurnToTarget(YawOffset, PitchOffset) end

function ASTBuildingActorAIBase:CheckTargetCharacter() end

---@param InCharacter ASTExtraCharacter
function ASTBuildingActorAIBase:AddCharacter(InCharacter) end

---@param InCharacter ASTExtraCharacter
function ASTBuildingActorAIBase:RemoveCharacter(InCharacter) end

---@param OverlappedActor AActor
---@param Other AActor
function ASTBuildingActorAIBase:OnActorOverlapBegin(OverlappedActor, Other) end

---@param OverlappedActor AActor
---@param Other AActor
function ASTBuildingActorAIBase:OnActorOverlapEnd(OverlappedActor, Other) end

---@param DeadCharacter ASTExtraCharacter
---@param Killer AController
---@param DamageCauser AActor
---@param KillingHitInfo FHitResult
---@param KillingHitImpulseDir FVector
---@param DamageType number
---@param DamageTypeClass USTExtraDamageType
---@param IsHeadShotDamage boolean
---@param Context FGameMagnitudeContext
function ASTBuildingActorAIBase:OnCharacterDead(DeadCharacter, Killer, DamageCauser, KillingHitInfo, KillingHitImpulseDir, DamageType, DamageTypeClass, IsHeadShotDamage, Context) end

---@param AkEvent UAkAudioEvent
---@return number
function ASTBuildingActorAIBase:TriggerAkEvent(AkEvent) end
