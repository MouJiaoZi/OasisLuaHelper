---@meta

---@class ICommonEmoteInterface
ICommonEmoteInterface = {}

---@param MontageToPlay UAnimMontage
---@param PlayRate number
---@param StartPosition number
function ICommonEmoteInterface:PlayEmoteAnimMontage(MontageToPlay, PlayRate, StartPosition) end

---@param SlotName string
---@param blendTime number
function ICommonEmoteInterface:StopEmoteSlotAnim(SlotName, blendTime) end

---@param IsPlayEmote boolean
function ICommonEmoteInterface:SetEmoteState(IsPlayEmote) end

---@return boolean
function ICommonEmoteInterface:CanPlayEmote() end
