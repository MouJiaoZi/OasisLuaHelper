---@meta

---@class FEntryAnnouncementData
---@field OtherClothID number
---@field TipID number
FEntryAnnouncementData = {}


---@class UBackpackCharacterAvatarEntryAnnouncementAbilityHandle: UBackpackCharacterAvatarAbilityHandle
---@field EntryAnnouncementData ULuaMapHelper<number, FEntryAnnouncementData>
local UBackpackCharacterAvatarEntryAnnouncementAbilityHandle = {}

function UBackpackCharacterAvatarEntryAnnouncementAbilityHandle:ServerModifyFocusTarget() end

function UBackpackCharacterAvatarEntryAnnouncementAbilityHandle:ServerRestoreFocusTarget() end

---@param InCharacter ASTExtraPlayerCharacter
function UBackpackCharacterAvatarEntryAnnouncementAbilityHandle:ClientModifyFocusTarget(InCharacter) end

---@param InCharacter ASTExtraPlayerCharacter
function UBackpackCharacterAvatarEntryAnnouncementAbilityHandle:ClientRestoreFocusTarget(InCharacter) end

---@param InClothID number
---@return number
function UBackpackCharacterAvatarEntryAnnouncementAbilityHandle:GetTipIDByClothID(InClothID) end
