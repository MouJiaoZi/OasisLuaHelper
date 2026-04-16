---@meta

---@class UCharacterGeneralEffectManager: UAvatarSubSystem, ILuaInterface
---@field WhitePawnStateMask number
---@field BlackPawnStateMask number
---@field DisableDynamicPawnState ULuaArrayHelper<FGameplayTag>
---@field DisableSkills ULuaArrayHelper<AUTSkill>
---@field DisableBuffs ULuaArrayHelper<string>
---@field ParticleHiddenBehaviorParam FParticleHiddenBehaviorParam
---@field ClientModeIDList ULuaArrayHelper<number>
---@field StateName ULuaArrayHelper<string>
---@field bEveryFrameTick boolean
---@field bCheckEnterWater boolean
---@field TLogID number
---@field bOpenTick boolean
---@field CachedAbilityHandles ULuaMapHelper<number, UBackpackCharacterGeneralEffectAbilityHandle>
---@field bActiveParticleSystem boolean
---@field PlayingParticleSystemID number
---@field ConcernObjList ULuaArrayHelper<FAvatarWeakObjPtr>
---@field bBuffStateDirty boolean
---@field TickCounter number
---@field bOnlyShowSelfParticleSystem boolean
---@field bEnterWater boolean
---@field CacheCharacterGeneralEffectConfigList ULuaArrayHelper<FCharacterGeneralEffectConfig>
---@field bActiveSystem boolean
---@field bOverride_CheckIsInWhitePawnState boolean
---@field bOverride_CheckIsInBlackPawnState boolean
---@field bOverride_CheckIsInBlackDynamicPawnState boolean
---@field bOverride_CheckIsInBlackBuff boolean
---@field bOverride_CheckIsInBlackSkill boolean
---@field bOverride_CheckMode boolean
---@field bOverride_CheckState boolean
---@field bOverride_ActiveParticleSystemComponent boolean
---@field bOverride_DeactivateParticleSystemComponent boolean
---@field bOverride_DoActionForUI boolean
---@field bOverride_TryServerDoActionForUI boolean
---@field bOverride_DoAction boolean
---@field bOverride_CanDoAction boolean
---@field bOverride_CancelAction boolean
---@field bOverride_OnAvatarLoadingFinished boolean
---@field bOverride_HandleCameraModeChange boolean
local UCharacterGeneralEffectManager = {}

---@param DeltaTime number
function UCharacterGeneralEffectManager:TickSubSystem(DeltaTime) end

---@param DeltaTime number
function UCharacterGeneralEffectManager:BP_Tick(DeltaTime) end

---@return string
function UCharacterGeneralEffectManager:GetLuaModule() end

---@return boolean
function UCharacterGeneralEffectManager:CheckIsInWhitePawnState() end

---@return boolean
function UCharacterGeneralEffectManager:CheckIsInBlackPawnState() end

---@return boolean
function UCharacterGeneralEffectManager:CheckIsInBlackDynamicPawnState() end

---@return boolean
function UCharacterGeneralEffectManager:CheckIsInBlackBuff() end

---@return boolean
function UCharacterGeneralEffectManager:CheckIsInBlackSkill() end

---@return boolean
function UCharacterGeneralEffectManager:CheckMode() end

---@return boolean
function UCharacterGeneralEffectManager:CheckState() end

function UCharacterGeneralEffectManager:CreateCachedParticleComponent() end

function UCharacterGeneralEffectManager:RefreshUI() end

function UCharacterGeneralEffectManager:GetCachedAbilityHandles() end

---@param bReset boolean
function UCharacterGeneralEffectManager:ActiveParticleSystemComponent(bReset) end

function UCharacterGeneralEffectManager:DeactivateParticleSystemComponent() end

function UCharacterGeneralEffectManager:InitBindDelegate() end

function UCharacterGeneralEffectManager:BP_InitBindDelegate() end

function UCharacterGeneralEffectManager:UnBindDelegate() end

function UCharacterGeneralEffectManager:BP_UnBindDelegate() end

---@param InEnteredState EPawnState
function UCharacterGeneralEffectManager:HandleEnterState(InEnteredState) end

---@param InLeavedState EPawnState
function UCharacterGeneralEffectManager:HandleLeaveState(InLeavedState) end

---@param Character ACharacter
---@param PrevMovementMode EMovementMode
---@param PreviousCustomMode number
function UCharacterGeneralEffectManager:HandleMovementModeChange(Character, PrevMovementMode, PreviousCustomMode) end

---@param BuffName string
function UCharacterGeneralEffectManager:OnCharBuffAdd(BuffName) end

---@param BuffName string
function UCharacterGeneralEffectManager:OnCharBuffRemove(BuffName) end

---@param InParticleSystemID number
function UCharacterGeneralEffectManager:DoActionForUI(InParticleSystemID) end

---@param InParticleSystemID number
function UCharacterGeneralEffectManager:TryServerDoActionForUI(InParticleSystemID) end

---@param bClick boolean
function UCharacterGeneralEffectManager:DoAction(bClick) end

---@return boolean
function UCharacterGeneralEffectManager:CanDoAction() end

---@param bForce boolean
---@param bStateChange boolean
function UCharacterGeneralEffectManager:CancelAction(bForce, bStateChange) end

---@return boolean
function UCharacterGeneralEffectManager:CanCancelAction() end

---@param InPlayingParticleSystemID number
function UCharacterGeneralEffectManager:SetPlayingParticleSystemID(InPlayingParticleSystemID) end

---@param ItemHandleList ULuaArrayHelper<UBattleItemHandleBase>
function UCharacterGeneralEffectManager:RegisterAbilityHandles(ItemHandleList) end

function UCharacterGeneralEffectManager:RegisterAbilityResources() end

---@param InCallTag string
function UCharacterGeneralEffectManager:ReMatchParticleHiddenState(InCallTag) end

---@param InRuntimePSC UParticleSystemComponent
---@param InSocketName string
---@param InIsHidden boolean
---@return boolean
function UCharacterGeneralEffectManager:SetParticleHidden(InRuntimePSC, InSocketName, InIsHidden) end

---@param InRuntimePSC UParticleSystemComponent
---@param InBuffName string
---@param InCurParticleSelector FParticleHiddenPlayerStateSelector
---@return boolean
function UCharacterGeneralEffectManager:IsParticleInBuffByFastShape(InRuntimePSC, InBuffName, InCurParticleSelector) end

---@param InContextObj UObject
---@param InIsMeltToShareBuffCheckResult boolean
---@param InTargetTM FTransform
---@param InBuffName string
---@param InFastShapeParam FAvatarFastShapeParam
---@return boolean
function UCharacterGeneralEffectManager:IsTransformInBuffByFastShape(InContextObj, InIsMeltToShareBuffCheckResult, InTargetTM, InBuffName, InFastShapeParam) end

---@param bIsEnter boolean
function UCharacterGeneralEffectManager:OnPlayerEnterWater(bIsEnter) end

---@param AsyncLoadID number
---@param LoadAvatar UAvatarComponent
function UCharacterGeneralEffectManager:OnAvatarLoadingFinished(AsyncLoadID, LoadAvatar) end

---@return boolean
function UCharacterGeneralEffectManager:IsPlaying() end

---@param InNewCameraMode EPlayerCameraMode
function UCharacterGeneralEffectManager:HandleCameraModeChange(InNewCameraMode) end

---@param PreState EParachuteState
---@param CurState EParachuteState
function UCharacterGeneralEffectManager:OnParachuteStateChanged(PreState, CurState) end

---@return string
function UCharacterGeneralEffectManager:GetNetRoleAndName() end

---@return boolean
function UCharacterGeneralEffectManager:CheckShowParticleCondition() end

function UCharacterGeneralEffectManager:DoActionForReconnection() end

---@param InSkillIndex number
function UCharacterGeneralEffectManager:HandleSkillStartEvent(InSkillIndex) end

---@param InSkillIndex number
---@param InStopReason UTSkillStopReason
function UCharacterGeneralEffectManager:HandleSkillStopEvent(InSkillIndex, InStopReason) end

---@param PersistComp UPersistBaseComponent
---@param State FGameplayTag
function UCharacterGeneralEffectManager:OnPersistCompDynamicStateEnter(PersistComp, State) end

---@param PersistComp UPersistBaseComponent
---@param State FGameplayTag
function UCharacterGeneralEffectManager:OnPersistCompDynamicStateLeave(PersistComp, State) end

function UCharacterGeneralEffectManager:RefreshMainUIState() end

---@param InUID number
---@param InPlayingParticleSystemID number
function UCharacterGeneralEffectManager:SendGeneralEffectID(InUID, InPlayingParticleSystemID) end

function UCharacterGeneralEffectManager:RecoverLastRingBodyEffects() end

---@return boolean
function UCharacterGeneralEffectManager:BP_CheckIsInWhitePawnState() end

---@return boolean
function UCharacterGeneralEffectManager:BP_CheckIsInBlackPawnState() end

---@return boolean
function UCharacterGeneralEffectManager:BP_CheckIsInBlackDynamicPawnState() end

---@return boolean
function UCharacterGeneralEffectManager:BP_CheckIsInBlackBuff() end

---@return boolean
function UCharacterGeneralEffectManager:BP_CheckIsInBlackSkill() end

---@return boolean
function UCharacterGeneralEffectManager:BP_CheckMode() end

---@return boolean
function UCharacterGeneralEffectManager:BP_CheckState() end

---@param bReset boolean
function UCharacterGeneralEffectManager:BP_ActiveParticleSystemComponent(bReset) end

function UCharacterGeneralEffectManager:BP_DeactivateParticleSystemComponent() end

---@param InParticleSystemID number
function UCharacterGeneralEffectManager:BP_DoActionForUI(InParticleSystemID) end

---@param InParticleSystemID number
function UCharacterGeneralEffectManager:BP_TryServerDoActionForUI(InParticleSystemID) end

function UCharacterGeneralEffectManager:BP_DoAction() end

---@return boolean
function UCharacterGeneralEffectManager:BP_CanDoAction() end

---@param bForce boolean
---@param bStateChange boolean
function UCharacterGeneralEffectManager:BP_CancelAction(bForce, bStateChange) end

---@param AsyncLoadID number
---@param LoadAvatar UAvatarComponent
function UCharacterGeneralEffectManager:BP_OnAvatarLoadingFinished(AsyncLoadID, LoadAvatar) end

---@param InNewCameraMode EPlayerCameraMode
function UCharacterGeneralEffectManager:BP_HandleCameraModeChange(InNewCameraMode) end
