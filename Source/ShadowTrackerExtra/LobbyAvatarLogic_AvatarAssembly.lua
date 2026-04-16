---@meta

---@class ULobbyAvatarLogic_AvatarAssembly: ULobbyAvatarLogic_Base
---@field CacheAssemblyResIdMap ULuaMapHelper<EAvatarSlotType, number>
---@field bLockToDisassemblingState boolean
---@field DefaultAvatarIdMap ULuaMapHelper<EAvatarSlotType, number>
local ULobbyAvatarLogic_AvatarAssembly = {}

---@param InOwnerCharacter ASTExtraLobbyCharacter
function ULobbyAvatarLogic_AvatarAssembly:Init(InOwnerCharacter) end

---@param bClearOwnerCharacter boolean
function ULobbyAvatarLogic_AvatarAssembly:Release(bClearOwnerCharacter) end

---@param ResId number
---@param bDisableTips boolean
---@return boolean
function ULobbyAvatarLogic_AvatarAssembly:CanbePuton(ResId, bDisableTips) end

---@param ResId number
function ULobbyAvatarLogic_AvatarAssembly:BeforePutOff(ResId) end

---@param ResId number
function ULobbyAvatarLogic_AvatarAssembly:AfterPutOff(ResId) end

---@param ResId number
function ULobbyAvatarLogic_AvatarAssembly:RevertAssemblyAttachment(ResId) end

---@param bLock boolean
function ULobbyAvatarLogic_AvatarAssembly:SetbLockToDisassemblingState(bLock) end

---@param InFallbackSlot EAvatarSlotType
---@param InOldItemHandle UBattleItemHandleBase
---@return boolean
function ULobbyAvatarLogic_AvatarAssembly:PutonFallbackItem(InFallbackSlot, InOldItemHandle) end
