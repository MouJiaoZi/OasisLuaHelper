---@meta

---@class ALostTomb_GenerateActor: AActor
---@field Limit FLostTomb_PathLimit
---@field PathClass AActor
---@field CacheActor ULuaArrayHelper<AActor>
local ALostTomb_GenerateActor = {}

---@param Txt string
function ALostTomb_GenerateActor:UpdateTxt(Txt) end

function ALostTomb_GenerateActor:OnRep_Limit() end
