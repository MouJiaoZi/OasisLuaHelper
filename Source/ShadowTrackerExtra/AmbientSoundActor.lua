---@meta

---@class AAmbientSoundActor: AUAERegionActor
---@field Priority number
---@field CachedCharacter ASTExtraBaseCharacter
local AAmbientSoundActor = {}

---@param BaseCharacter ASTExtraBaseCharacter
function AAmbientSoundActor:ApplyFunc(BaseCharacter) end

function AAmbientSoundActor:UnApplyFunc() end
