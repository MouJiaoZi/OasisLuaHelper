---@meta

---@class AActivityAreaCPP: AUAENetActor
---@field IsDayTime number
---@field ShowRabbitAnim boolean
---@field PawnDoneList ULuaArrayHelper<APawn>
local AActivityAreaCPP = {}

function AActivityAreaCPP:OnRep_IsDayTime() end

function AActivityAreaCPP:OnRep_ShowRabbitAnim() end

function AActivityAreaCPP:OnRep_PawnDoneList() end
