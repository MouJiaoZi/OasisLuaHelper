---@meta

---@class FCharaterAvatarMaterialEffectState
---@field bIsPawnState boolean
---@field PawnStateValue EPawnState
---@field CharacterAvatarStateValue ECharacterAvatarState
FCharaterAvatarMaterialEffectState = {}


---@class FSpecialCharacterAvatarMaterialEffectConfig
---@field SpecialEmoteIDList ULuaMapHelper<number, number>
---@field SpecialAvatarMaterialEffectValue ULuaMapHelper<number, FAvatarMaterialEffectValue>
---@field bUseSameParameter boolean
FSpecialCharacterAvatarMaterialEffectConfig = {}


---@class UCharaterAvatarMaterialEffectManager: UAvatarMaterialEffectManager
---@field TickUpdateStateInterval number
---@field MinRunSpeed number
---@field UpdateStateTimerHandle FTimerHandle
---@field IsUpdateStateTickStart boolean
---@field CharacterAvatarStateOffset number
---@field PawnStateWeight ULuaMapHelper<EPawnState, number>
---@field ForceUpdatePawnState ULuaArrayHelper<EPawnState>
---@field SpecialCharacterAvatarMaterialEffectConfig ULuaMapHelper<number, FSpecialCharacterAvatarMaterialEffectConfig>
---@field CharacterAvatarStateWeight ULuaMapHelper<ECharacterAvatarState, number>
local UCharaterAvatarMaterialEffectManager = {}

function UCharaterAvatarMaterialEffectManager:TryStartTickUpdateState() end

function UCharaterAvatarMaterialEffectManager:TryStopTickUpdateState() end

function UCharaterAvatarMaterialEffectManager:TickUpdateState() end

---@param InState EPawnState
---@return number
function UCharaterAvatarMaterialEffectManager:GetStateIDFromPawnState(InState) end

---@param InState ECharacterAvatarState
---@return number
function UCharaterAvatarMaterialEffectManager:GetStateIDFromCharacterAvatarState(InState) end

---@param InState ECharacterAvatarState
---@param InID number
---@return number
function UCharaterAvatarMaterialEffectManager:GetSpecialStateIDFromCharacterAvatarState(InState, InID) end

---@param InStateID number
---@param InData FCharaterAvatarMaterialEffectState
function UCharaterAvatarMaterialEffectManager:GetEnumStateFromStateID(InStateID, InData) end

---@return boolean
function UCharaterAvatarMaterialEffectManager:IsCurRegisterStateNeedTickUpdateState() end

---@param EmoteID number
---@param EmoteMontage UAnimMontage
---@param SelfRef ASTExtraBaseCharacter
---@param IsEmoteLooping boolean
function UCharaterAvatarMaterialEffectManager:CurrentPlayEmoteChange(EmoteID, EmoteMontage, SelfRef, IsEmoteLooping) end

---@param InType EABF_AvatarExtraPartType
function UCharaterAvatarMaterialEffectManager:GetNewFPPMeshComponentsByType(InType) end

---@param InTargetSlot EAvatarSlotType
---@param InAvatarFuncBranch_NewFPP UAvatarFuncBranch_NewFPP
function UCharaterAvatarMaterialEffectManager:HandleFPPAvatarMeshChange(InTargetSlot, InAvatarFuncBranch_NewFPP) end
