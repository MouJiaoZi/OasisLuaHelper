---@meta

---@class FInterruptOtherStatesMap
---@field AvatarActionEffectsKey FAvatarActionEffectsKey
---@field InterruptOtherStates ULuaArrayHelper<EPawnState>
FInterruptOtherStatesMap = {}


---@class FDisableStatesMap
---@field AvatarActionEffectsKey FAvatarActionEffectsKey
---@field DisableStates ULuaArrayHelper<EPawnState>
FDisableStatesMap = {}


---@class UCharacterAvatarActionEffectsManager: UAvatarActionEffectsManager
---@field CharacterAvatarActionEffectsClassMap ULuaMapHelper<number, UAvatarActionEffectsBase>
---@field InterruptOtherStatesMap ULuaArrayHelper<FInterruptOtherStatesMap>
---@field DisableStatesMap ULuaArrayHelper<FDisableStatesMap>
---@field WhiteList ULuaMapHelper<EPawnState, FWhiteList>
---@field WhitelistConversion ULuaMapHelper<number, number>
---@field BuffFastShapeParamMap ULuaMapHelper<string, FAvatarFastShapeParam>
---@field BuffRemoveCheckState ULuaArrayHelper<EPawnState>
---@field DurableStates ULuaArrayHelper<EPawnState>
---@field CharacterAvatarActionEffectObjectClass UAvatarActionEffectsBase
---@field ChangeTwinsStateAndSlotID ULuaMapHelper<number, number>
---@field bShowBounty boolean
---@field CharacterAvatarActionConditions ULuaMapHelper<EPawnState, boolean>
---@field BountyHunterClothIDs ULuaArrayHelper<number>
---@field CheckRestoreParticleTimerHandle FTimerHandle
---@field CheckFrequency number
---@field bCheckSwitchTwinsWithBuff boolean
---@field BlackChildrenActors ULuaArrayHelper<AActor>
---@field DisableDynamicPawnState ULuaArrayHelper<FGameplayTag>
---@field DisableSkills ULuaArrayHelper<AUTSkill>
---@field DisableBuffs ULuaArrayHelper<string>
---@field TickCounter number
---@field BuffCheckFrequency number
---@field ConcernObjList ULuaArrayHelper<FAvatarWeakObjPtr>
---@field LastConcernObjList ULuaArrayHelper<FAvatarWeakObjPtr>
---@field bOpenBuffCheckTick boolean
---@field bTheJumpProblemIsOnlyDealtwithBigWorld boolean
local UCharacterAvatarActionEffectsManager = {}

---@param DeltaTime number
function UCharacterAvatarActionEffectsManager:BP_Tick(DeltaTime) end

---@param DeltaTime number
function UCharacterAvatarActionEffectsManager:CheckBuffTick(DeltaTime) end

---@param InAvatarComponent UAvatarComponent
function UCharacterAvatarActionEffectsManager:Init(InAvatarComponent) end

---@param InSlotID number
---@param InMeshComp UMeshComponent
---@param InItemHandle UBattleItemHandleBase
function UCharacterAvatarActionEffectsManager:RegisterItemHandleData(InSlotID, InMeshComp, InItemHandle) end

---@param InSlotID number
function UCharacterAvatarActionEffectsManager:UnRegisterItemHandleData(InSlotID) end

function UCharacterAvatarActionEffectsManager:GetAvatarActionEffectsClassMap() end

function UCharacterAvatarActionEffectsManager:ConvertClassMap() end

function UCharacterAvatarActionEffectsManager:InitBindDelegate() end

function UCharacterAvatarActionEffectsManager:UnBindDelegate() end

---@param InEnteredState EPawnState
function UCharacterAvatarActionEffectsManager:HandleEnterState(InEnteredState) end

---@param InLeavedState EPawnState
function UCharacterAvatarActionEffectsManager:HandleLeaveState(InLeavedState) end

---@param Character ACharacter
---@param PrevMovementMode EMovementMode
---@param PreviousCustomMode number
function UCharacterAvatarActionEffectsManager:HandleMovementModeChange(Character, PrevMovementMode, PreviousCustomMode) end

---@param InSkillIndex number
function UCharacterAvatarActionEffectsManager:HandleSkillStartEvent(InSkillIndex) end

---@param InVisible boolean
function UCharacterAvatarActionEffectsManager:HandleBountyHunterVisibleChangedEvent(InVisible) end

---@param Mode EPlayerCameraMode
function UCharacterAvatarActionEffectsManager:HandlePlayerSwitchCameraModeEvent(Mode) end

---@param InState number
---@return string
function UCharacterAvatarActionEffectsManager:ConvertEnumValueToString(InState) end

---@param InState number
function UCharacterAvatarActionEffectsManager:GetInterruptOtherStates(InState) end

---@param InAvatarActionEffectsKey FAvatarActionEffectsKey
---@param InterruptOtherStates ULuaArrayHelper<EPawnState>
function UCharacterAvatarActionEffectsManager:AddItemToInterruptOtherStatesMap(InAvatarActionEffectsKey, InterruptOtherStates) end

---@param InAvatarActionEffectsKey FAvatarActionEffectsKey
---@param DisableStates ULuaArrayHelper<EPawnState>
function UCharacterAvatarActionEffectsManager:AddItemToDisableStatesMap(InAvatarActionEffectsKey, DisableStates) end

---@param InAvatarSlotType EAvatarSlotType
function UCharacterAvatarActionEffectsManager:RemoveItemFromInterruptOtherStatesMap(InAvatarSlotType) end

---@param InAvatarSlotType EAvatarSlotType
function UCharacterAvatarActionEffectsManager:RemoveItemFromDisableStatesMap(InAvatarSlotType) end

function UCharacterAvatarActionEffectsManager:GetWhiteList() end

---@param bSound boolean
---@param bParticle boolean
function UCharacterAvatarActionEffectsManager:ReDoAllAction(bSound, bParticle) end

---@param InState number
---@param bInUseWhiteList boolean
---@param bInTriggeredByAnimation boolean
---@return boolean
function UCharacterAvatarActionEffectsManager:CanDoAction(InState, bInUseWhiteList, bInTriggeredByAnimation) end

---@param AsyncLoadID number
---@param LoadEventFrom UAvatarComponent
function UCharacterAvatarActionEffectsManager:OnAvatarAsyncLoadingFinished(AsyncLoadID, LoadEventFrom) end

---@param BuffName string
function UCharacterAvatarActionEffectsManager:OnCharBuffAdd(BuffName) end

---@param BuffName string
function UCharacterAvatarActionEffectsManager:OnCharBuffRemove(BuffName) end

---@param InBuffName string
---@param InBuffFastShapeParamMap ULuaMapHelper<string, FAvatarFastShapeParam>
---@param State number
---@return boolean
function UCharacterAvatarActionEffectsManager:CanDoActionByCheckBuff(InBuffName, InBuffFastShapeParamMap, State) end

function UCharacterAvatarActionEffectsManager:GetBuffFastShapeParamMap() end

---@param AvatarActionEffectsKey FAvatarActionEffectsKey
---@param CharacterAvatarActionEffectsDataItem FCharacterAvatarActionEffectsDataItem
function UCharacterAvatarActionEffectsManager:HandleAvatarActionEffectsObject(AvatarActionEffectsKey, CharacterAvatarActionEffectsDataItem) end

---@param InSlotID number
---@param InItemHandle UBattleItemHandleBase
---@return boolean
function UCharacterAvatarActionEffectsManager:HandleClothConfig(InSlotID, InItemHandle) end

---@param InSlotID number
---@param InItemHandle UBattleItemHandleBase
function UCharacterAvatarActionEffectsManager:HandleTwinsConfig(InSlotID, InItemHandle) end

---@param BuffName string
function UCharacterAvatarActionEffectsManager:CheckRestoreParticle(BuffName) end

---@return boolean
function UCharacterAvatarActionEffectsManager:CheckClothingUpgradeShowCondition() end
