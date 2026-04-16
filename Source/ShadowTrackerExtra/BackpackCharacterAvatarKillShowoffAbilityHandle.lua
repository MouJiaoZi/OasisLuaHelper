---@meta

---@class UBackpackCharacterAvatarKillShowoffAbilityHandle: UBackpackCharacterAvatarAbilityHandle
---@field KillShowEffectMap ULuaMapHelper<number, UPersistEffectBase>
local UBackpackCharacterAvatarKillShowoffAbilityHandle = {}

function UBackpackCharacterAvatarKillShowoffAbilityHandle:ServerModifyFocusTarget() end

function UBackpackCharacterAvatarKillShowoffAbilityHandle:ServerRestoreFocusTarget() end

---@param InCharacter ASTExtraPlayerCharacter
function UBackpackCharacterAvatarKillShowoffAbilityHandle:ClientModifyFocusTarget(InCharacter) end

---@param InCharacter ASTExtraPlayerCharacter
function UBackpackCharacterAvatarKillShowoffAbilityHandle:ClientRestoreFocusTarget(InCharacter) end
