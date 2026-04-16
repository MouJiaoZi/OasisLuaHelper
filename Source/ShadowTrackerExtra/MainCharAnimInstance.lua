---@meta

---@class UMainCharAnimInstance: UAnimInstanceBase
---@field ParachuteAnimSlotName string
---@field ParachuteAnimSoftClass UAnimInstance
---@field C_IgnoreAssignedRefPose boolean
---@field C_IsInverseRetargetDynamicMontage boolean
---@field MoveAnimSlotName string
---@field bIsFPPMode boolean
---@field bIsNewFPPMode boolean
---@field bIsInOldFPPAnimMode boolean
---@field bIsInForceNewFPPMode boolean
---@field bIsGameEnableNewFPPMode boolean
---@field bIsInTPPMeshRenderFlexMode boolean
---@field bIsParachuteState boolean
---@field bNeedCheckTPose boolean
---@field C_UseDefaultRigidBodyAnim boolean
---@field DynamicMontageCached ULuaSetHelper<UAnimMontage>
---@field bEnableCheckAI boolean
---@field bEnableCheckLocallyControlled boolean
---@field NotCheckGameModeIDs ULuaArrayHelper<string>
---@field SubAnimReplacer_Weapon FSTExtraAnimFM_SubAnimMapReplacer_Weapon
---@field MontagePlayQueue ULuaArrayHelper<FSTExtraAnimMontageData>
---@field CachedFlag number
local UMainCharAnimInstance = {}

function UMainCharAnimInstance:SyncMoveStateMachine() end

---@param bSwitchToParachute boolean
function UMainCharAnimInstance:SwitchToParachuteAnimInstance(bSwitchToParachute) end

---@param bSwitched boolean
function UMainCharAnimInstance:OnParachuteAnimClassLoadFinish(bSwitched) end

---@param MontageToPlay UAnimMontage
---@param bWantsPlay boolean
---@param PlayRate number
---@param StartSection string
---@param MontagePlayType EMainCharMontagePlayType
---@param StartPosition number
---@param PlayDirectly boolean
function UMainCharAnimInstance:HandlePlayerAnimMontagePlayDelegate(MontageToPlay, bWantsPlay, PlayRate, StartSection, MontagePlayType, StartPosition, PlayDirectly) end

---@param StartSection string
---@param MontageToPlay UAnimMontage
function UMainCharAnimInstance:HandlePlayerAnimMontageJumpSectionDelegate(StartSection, MontageToPlay) end

---@param AnimSequence UAnimSequenceBase
---@param bWantsPlay boolean
---@param SlotName string
---@param PlayRate number
---@param BlendTime number
function UMainCharAnimInstance:HandleAnimPlaySlotAnimDelegate(AnimSequence, bWantsPlay, SlotName, PlayRate, BlendTime) end

---@param StartedMontage UAnimMontage
function UMainCharAnimInstance:HandleMontageStarted(StartedMontage) end

---@param FinishedMontage UAnimMontage
---@param bInterrupted boolean
function UMainCharAnimInstance:HandleMontageEnded(FinishedMontage, bInterrupted) end

---@return boolean
function UMainCharAnimInstance:NeedCheckTPose() end

---@param bCheck boolean
function UMainCharAnimInstance:UpdateCheckTPose(bCheck) end
