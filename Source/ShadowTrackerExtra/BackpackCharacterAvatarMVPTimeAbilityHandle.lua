---@meta

---@class UBackpackCharacterAvatarMVPTimeAbilityHandle: UBackpackCharacterAvatarAbilityHandle
---@field AvatarMvpShowSetting FAvatarMVPShowSetting
local UBackpackCharacterAvatarMVPTimeAbilityHandle = {}

function UBackpackCharacterAvatarMVPTimeAbilityHandle:ServerModifyFocusTarget() end

function UBackpackCharacterAvatarMVPTimeAbilityHandle:ServerRestoreFocusTarget() end

---@param InCharacter ASTExtraPlayerCharacter
function UBackpackCharacterAvatarMVPTimeAbilityHandle:ClientModifyFocusTarget(InCharacter) end

---@param InCharacter ASTExtraPlayerCharacter
function UBackpackCharacterAvatarMVPTimeAbilityHandle:ClientRestoreFocusTarget(InCharacter) end
