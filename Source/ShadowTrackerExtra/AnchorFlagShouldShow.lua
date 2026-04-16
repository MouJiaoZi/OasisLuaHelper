---@meta

---@class UAnchorFlagShouldShow: UUAEUserWidget, ICustomHeadFlagInterface
---@field AnchorShowDistLimit number
---@field CorpShowDistLimit number
---@field ShowAnimSelf boolean
---@field showAnimCD number
---@field showAnimDist number
local UAnchorFlagShouldShow = {}

function UAnchorFlagShouldShow:ShowTrumpMark() end

---@param _BaseCharacter ASTExtraBaseCharacter
function UAnchorFlagShouldShow:ShowCorp(_BaseCharacter) end

function UAnchorFlagShouldShow:ShowTrumpMarkAnim() end
