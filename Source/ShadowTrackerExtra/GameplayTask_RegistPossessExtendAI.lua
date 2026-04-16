---@meta

---@class UGameplayTask_RegistPossessExtendAI: UGameplayTask_RegistPossess
local UGameplayTask_RegistPossessExtendAI = {}

---@param TargetCharacter ASTExtraBaseCharacter
---@param bRecover boolean
function UGameplayTask_RegistPossessExtendAI:HandleRegistEventWithAI(TargetCharacter, bRecover) end

---@param TargetCharacter ASTExtraBaseCharacter
---@param bRecover boolean
function UGameplayTask_RegistPossessExtendAI:HandleClearStateWithAI(TargetCharacter, bRecover) end

---@param TargetCharacter ASTExtraBaseCharacter
---@param bRecover boolean
function UGameplayTask_RegistPossessExtendAI:HandleStateWithAI(TargetCharacter, bRecover) end

---@param TargetCharacter ASTExtraBaseCharacter
---@param Damage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
function UGameplayTask_RegistPossessExtendAI:OnHit(TargetCharacter, Damage, DamageEvent, EventInstigator, DamageCauser) end

---@param PlayerKey number
---@param Reason string
function UGameplayTask_RegistPossessExtendAI:OnGameEnd(PlayerKey, Reason) end

---@param Actor AActor
function UGameplayTask_RegistPossessExtendAI:OnDestroyPawn(Actor) end

---@param PlayerCharacter ASTExtraBaseCharacter
---@param FromTransform FTransform
---@param DestinationTransform FTransform
function UGameplayTask_RegistPossessExtendAI:OnPlayerTeleport(PlayerCharacter, FromTransform, DestinationTransform) end

---@param State EPawnState
function UGameplayTask_RegistPossessExtendAI:OnPawnStateEnter(State) end

---@param State FGameplayTag
function UGameplayTask_RegistPossessExtendAI:OnPawnDynamicStateEnter(State) end
