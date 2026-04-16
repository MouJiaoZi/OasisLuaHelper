---@meta

---@class ULobbyAvatarLogic_RandomIdle: UObject
---@field MainBaseIdleTag string
---@field BaseIdleNodeIndex number
---@field CacheIdleWeightAnimConfig ULuaArrayHelper<FAvatarRandomIdleWeightAnimConfig>
---@field CurrentSeqLength number
---@field CurrentTime number
---@field LastSeqTime number
---@field CurrentConfigIndex number
---@field RandomAnimResult ULuaMapHelper<number, UAnimSequence>
---@field RandomWingAnimResult ULuaMapHelper<number, UAnimSequence>
local ULobbyAvatarLogic_RandomIdle = {}

---@param InOwnerCharacter ASTExtraLobbyCharacter
function ULobbyAvatarLogic_RandomIdle:Init(InOwnerCharacter) end

---@param bClearOwnerCharacter boolean
function ULobbyAvatarLogic_RandomIdle:Release(bClearOwnerCharacter) end

function ULobbyAvatarLogic_RandomIdle:Restart() end

---@param DeltaTime number
function ULobbyAvatarLogic_RandomIdle:TickFunc(DeltaTime) end

---@param bUpdateAllAnim boolean
function ULobbyAvatarLogic_RandomIdle:UpdateAvatarRandomIdleConfig(bUpdateAllAnim) end

---@param InConfig ULuaArrayHelper<FAvatarRandomIdleWeightAnimConfig>
function ULobbyAvatarLogic_RandomIdle:NormalizeIdleWeights(InConfig) end

---@param InConfig ULuaArrayHelper<FAvatarRandomIdleWeightAnimConfig>
function ULobbyAvatarLogic_RandomIdle:LoadAllIdleAnim(InConfig) end

---@param bUseCurrentRandomIndex boolean
function ULobbyAvatarLogic_RandomIdle:UpdateAllIdleAnim(bUseCurrentRandomIndex) end

---@param InAnimIns UAnimInstance
---@param InSeq UAnimSequence
---@param SlotId number
---@param bClear boolean
---@param bExtraPart boolean
function ULobbyAvatarLogic_RandomIdle:UpdateAnimInsIdleAnim(InAnimIns, InSeq, SlotId, bClear, bExtraPart) end

---@param bUseCurrentRandomIndex boolean
---@return FAvatarRandomIdleWeightAnimConfig
function ULobbyAvatarLogic_RandomIdle:GenRandomIdleConfig(bUseCurrentRandomIndex) end

function ULobbyAvatarLogic_RandomIdle:UpdateCurrentSeqLength() end

---@return number
function ULobbyAvatarLogic_RandomIdle:GetBaseIdleNodeIndex() end
