---@meta

---@class ULobbyAvatarLogic_Base: UObject
local ULobbyAvatarLogic_Base = {}

---@param InOwnerCharacter ASTExtraLobbyCharacter
function ULobbyAvatarLogic_Base:Init(InOwnerCharacter) end

---@param bClearOwnerCharacter boolean
function ULobbyAvatarLogic_Base:Release(bClearOwnerCharacter) end

---@param InOwnerCharacter ASTExtraLobbyCharacter
function ULobbyAvatarLogic_Base:Received_Init(InOwnerCharacter) end

---@param bClearOwnerCharacter boolean
function ULobbyAvatarLogic_Base:Received_Release(bClearOwnerCharacter) end
