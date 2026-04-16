---@meta

---@class AWerewolfPipeline: AActor
---@field TransmitPosList ULuaArrayHelper<FVector>
local AWerewolfPipeline = {}

---@param Player ASTExtraBaseCharacter
---@param TransmitPos FVector
---@return boolean
function AWerewolfPipeline:CheckTransmitPosAvailable(Player, TransmitPos) end

---@param TransmitPos FVector
---@return boolean
function AWerewolfPipeline:CheckTransmitPosAvailableEx(TransmitPos) end
