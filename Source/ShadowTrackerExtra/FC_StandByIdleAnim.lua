---@meta

---@class FAnimTypeArray_FC
---@field DynamicLoadingAnimType ULuaArrayHelper<EDynamicLoadingAnimType>
FAnimTypeArray_FC = {}


---@class UFC_StandByIdleAnim: UFeatureCustomModule
---@field StandbyAnimTimeInterval_Config number
---@field StandbyAnimPawnStateExclusion ULuaArrayHelper<EPawnState>
---@field StandbyAnimDynamicStateExclusion ULuaArrayHelper<FGameplayTag>
---@field StandyAnimType ULuaMapHelper<number, FAnimTypeArray_FC>
---@field StandbyGameModeType ULuaArrayHelper<EGameModeType>
---@field AllowStandbyAnimWeaponTypes ULuaArrayHelper<EWeaponTypeNew>
---@field CurMapID number
---@field DanceEmoteIdArray ULuaArrayHelper<number>
local UFC_StandByIdleAnim = {}

---@param SelfRef ASTExtraBaseCharacter
function UFC_StandByIdleAnim:InterrupteStandbyAnim(SelfRef) end

---@param SelfRef ASTExtraBaseCharacter
---@param Damage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
function UFC_StandByIdleAnim:InterrupteStandbyAnim_PostDamage(SelfRef, Damage, DamageEvent, EventInstigator, DamageCauser) end

---@param EventMsg string
function UFC_StandByIdleAnim:InterrupteStandbyAnim_AnimListChange(EventMsg) end

---@param retAsset UAnimationAsset
function UFC_StandByIdleAnim:AsyncAnimStandbyCallback(retAsset) end

---@param SelfRef ASTExtraBaseCharacter
function UFC_StandByIdleAnim:HandlePlayerPickUp(SelfRef) end

---@param SelfRef ASTExtraBaseCharacter
---@param EnteredState EPawnState
function UFC_StandByIdleAnim:HandlePlayerEnterState(SelfRef, EnteredState) end

---@param GameplayTag FGameplayTag
function UFC_StandByIdleAnim:OnDynamicStateEnter(GameplayTag) end

function UFC_StandByIdleAnim:TryPlayStandbyAnim() end

---@param EmoteIndex number
---@param StopReason number
function UFC_StandByIdleAnim:OnEmoteAnimFinished(EmoteIndex, StopReason) end
