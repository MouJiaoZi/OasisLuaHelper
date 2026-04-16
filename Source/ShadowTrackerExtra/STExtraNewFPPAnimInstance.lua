---@meta

---@class FMutexPairNewFPP
---@field condition UAnimMontage
---@field mutTarget UAnimMontage
FMutexPairNewFPP = {}


---@class FBlackOldMontageSlotInfo
---@field GroupName string
---@field SlotName string
FBlackOldMontageSlotInfo = {}


---@class USTExtraNewFPPAnimInstance: UMainCharAnimInstance
---@field bEnableAnimSlotRetarget boolean
---@field BlackOldMontageSlotList ULuaArrayHelper<FBlackOldMontageSlotInfo>
---@field WhiteListOfOldMontage ULuaArrayHelper<string>
---@field MutConditionsNewFPP ULuaArrayHelper<ECharacterNewFPPAnimType>
---@field MutTargetsNewFPP ULuaArrayHelper<ECharacterNewFPPAnimType>
---@field MutexByListNewFPP ULuaArrayHelper<FMutexPairNewFPP>
local USTExtraNewFPPAnimInstance = {}

---@param InMontage UAnimMontage
function USTExtraNewFPPAnimInstance:GetAnimSlotRetargetInfo(InMontage) end

---@param InMontage UAnimMontage
---@return boolean
function USTExtraNewFPPAnimInstance:IsMontageInWhiteList(InMontage) end

function USTExtraNewFPPAnimInstance:PlayShellDropFXOnEvent() end
