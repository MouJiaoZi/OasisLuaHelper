---@meta

---@class FGrandTheftScoreItem
---@field ItemSpecificID number
---@field Score number
FGrandTheftScoreItem = {}


---@class AWarGameMode_GrandTheft: AWarGameMode
---@field ConfigScoreItems ULuaArrayHelper<FGrandTheftScoreItem>
local AWarGameMode_GrandTheft = {}

---@param ItemID number
---@param Count number
---@param PC ASTExtraPlayerController
function AWarGameMode_GrandTheft:HandlePlayerPickupItem(ItemID, Count, PC) end

---@param ItemSpecificID number
---@return number
function AWarGameMode_GrandTheft:GetItemScore(ItemSpecificID) end

---@param PC ASTExtraPlayerController
function AWarGameMode_GrandTheft:UpdateCharacterAttrModifier(PC) end
