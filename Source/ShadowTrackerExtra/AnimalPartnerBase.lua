---@meta

---@class AAnimalPartnerBase: ASTAnimalCharacter, IPlayerLogicInterface
---@field PartnerName string
---@field AnimalPartnerType FGameplayTag
---@field PartnerTags FGameplayTagContainer
---@field FollowEmoteEffectPath FSoftClassPath
---@field CanInteractEffectPath FSoftClassPath
---@field ForbidTouchAnimalStates ULuaArrayHelper<EAnimalState>
---@field ForbidTouchAnimalDynamicStates ULuaArrayHelper<FGameplayTag>
---@field CachedFollowEmoteEffectClass UPersistEffectWithState
---@field CachedCanInteractEffectClass UPersistEffectBase
---@field TouchPossessConfig FRegistPossessValue
---@field TouchCollisionTestRelativeTransform FTransform
---@field TouchCollisionTestExtent FVector
---@field ReplaceCustomNetRelevant ICustomNetRelevantInterface @Array of ActorComponents that have been added by the user on a per-instance basis.
---@field AddtiveCustomNetRelevant ULuaArrayHelper<ICustomNetRelevantInterface>
local AAnimalPartnerBase = {}

---@param DeadCharacter ASTExtraCharacter
---@param Killer AController
---@param DamageCauser AActor
---@param KillingHitInfo FHitResult
---@param KillingHitImpulseDir FVector
---@param DamageType number
---@param DamageTypeClass USTExtraDamageType
---@param IsHeadShotDamage boolean
function AAnimalPartnerBase:HandlePlayerDeadth(DeadCharacter, Killer, DamageCauser, KillingHitInfo, KillingHitImpulseDir, DamageType, DamageTypeClass, IsHeadShotDamage) end

---@param Player ASTExtraCharacter
function AAnimalPartnerBase:SetOwnerCharacter(Player) end

---@param state number
function AAnimalPartnerBase:OnEnterState(state) end

---@param state number
function AAnimalPartnerBase:OnLeaveState(state) end

---@param NewName string
function AAnimalPartnerBase:SetPartnerName(NewName) end

---@param state EAnimalState
---@return boolean
function AAnimalPartnerBase:EnterAnimalState(state) end

---@param state EAnimalState
---@return boolean
function AAnimalPartnerBase:LeaveAnimalState(state) end

---@param States ULuaArrayHelper<EAnimalState>
---@return boolean
function AAnimalPartnerBase:HasAnyAnimalState(States) end

---@return boolean
function AAnimalPartnerBase:CheckOwnerInFighting() end

---@param bEnable boolean
function AAnimalPartnerBase:SetMovementEnable(bEnable) end

---@param BoxExtent FVector
---@param BoxTransform FTransform
---@param bSort boolean
---@param bOpenWallDetection boolean
---@param bForceTeleport boolean
function AAnimalPartnerBase:DSTeleportToBox(BoxExtent, BoxTransform, bSort, bOpenWallDetection, bForceTeleport) end

---@param ClickParam FClick_Param
---@return boolean
function AAnimalPartnerBase:CheckCanBeTouched(ClickParam) end

---@return boolean
function AAnimalPartnerBase:IsUntouchableBecauseOfCollision() end

---@param OutTransform FTransform
---@return boolean
function AAnimalPartnerBase:GetTouchableAnimalSpawnTransform(OutTransform) end

function AAnimalPartnerBase:OnRep_OwnerCharacter() end

function AAnimalPartnerBase:OnOwnerCharacterRep() end

---@param state EPawnState
function AAnimalPartnerBase:OnOwnerEnterPawnState(state) end

---@param state EPawnState
function AAnimalPartnerBase:OnOwnerLeavePawnState(state) end

---@param bNewHidden boolean
---@param Reason string
function AAnimalPartnerBase:SetAnimalHiddenSafety(bNewHidden, Reason) end

---@param bNewDisabled boolean
---@param Reason string
function AAnimalPartnerBase:SetAnimalCollisionDisabledSafety(bNewDisabled, Reason) end

---@param Player ASTExtraCharacter
function AAnimalPartnerBase:OnPlayerAttachedToThisActor_BP(Player) end

---@param Player ASTExtraCharacter
function AAnimalPartnerBase:OnPlayerBeforeAttachedToThisActor_BP(Player) end

---@param Player ASTExtraCharacter
function AAnimalPartnerBase:OnPlayerDettachedToThisActor_BP(Player) end

function AAnimalPartnerBase:GetDetachScenes_BP() end

---@return string
function AAnimalPartnerBase:GetAttachSceneSocketName_BP() end

---@param Interface ICustomNetRelevantInterface
function AAnimalPartnerBase:AddCustomNetRelevantInterface(Interface) end

---@param Interface ICustomNetRelevantInterface
function AAnimalPartnerBase:RemoveCustomNetRelevantInterface(Interface) end

function AAnimalPartnerBase:ClearCustomNetRelevantInterface() end
