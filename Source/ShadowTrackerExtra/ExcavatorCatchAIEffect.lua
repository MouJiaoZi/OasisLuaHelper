---@meta

---@class UExcavatorCatchAIEffect: UPersistEffectWithState
---@field PossessValue FRegistPossessValue
---@field bHandleFakePossess boolean
---@field bHandleFakeUnPossess boolean
local UExcavatorCatchAIEffect = {}

---@param Character ASTExtraBaseCharacter
---@return boolean
function UExcavatorCatchAIEffect:FakePossess(Character) end

---@param Reason EUnPossessReason
function UExcavatorCatchAIEffect:FakeUnPossess(Reason) end

---@param Character ASTExtraBaseCharacter
---@return boolean
function UExcavatorCatchAIEffect:CanBePossess(Character) end

function UExcavatorCatchAIEffect:OnPossess() end

---@param Reason EUnPossessReason
function UExcavatorCatchAIEffect:OnUnPossessWithReason(Reason) end

---@param State EPawnState
function UExcavatorCatchAIEffect:OnPawnStateEnterNew(State) end

---@param State FGameplayTag
function UExcavatorCatchAIEffect:OnPawnDynamicStateEnter(State) end

function UExcavatorCatchAIEffect:OnEventMeetEnter() end

---@param Character ASTExtraBaseCharacter
---@param Damage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
function UExcavatorCatchAIEffect:OnHit(Character, Damage, DamageEvent, EventInstigator, DamageCauser) end

---@param PlayerKey number
---@param Reason string
function UExcavatorCatchAIEffect:OnGameEnd(PlayerKey, Reason) end

---@param Actor AActor
function UExcavatorCatchAIEffect:OnDestroyPawn(Actor) end

function UExcavatorCatchAIEffect:OnLostPawn() end

---@param PC ASTExtraPlayerController
function UExcavatorCatchAIEffect:OnClientInteractive(PC) end

function UExcavatorCatchAIEffect:OnExitPawn() end

---@param Character ASTExtraBaseCharacter
---@param bRecover boolean
function UExcavatorCatchAIEffect:HandleRegistEvent(Character, bRecover) end

---@param Character ASTExtraBaseCharacter
---@param bRecover boolean
function UExcavatorCatchAIEffect:HandleClearState(Character, bRecover) end
