---@meta

---@class UUAESkillAction_ReadyGiftGive: UUAESkillAction
---@field GiftType EUTGiftType
---@field bTeammateOnly boolean
---@field bIsOverrideFanData boolean
---@field FanData FGiftFanPickerData
---@field bKeepPawnStateWhenReset boolean
---@field bNeedResetReceiver boolean
local UUAESkillAction_ReadyGiftGive = {}

---@param GiverComp USTCharacterGiftGiverComp
---@param Character ASTExtraBaseCharacter
---@param bIsUnset boolean
function UUAESkillAction_ReadyGiftGive:OnSetGift(GiverComp, Character, bIsUnset) end
