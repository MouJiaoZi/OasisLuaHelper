---@meta

---@class ACaveStoneActor: AUAENetActor
---@field BrokenVelocity number @ؾײҪٶ
---@field TotalHP number @Ѫ
---@field CurHP number @ǰѪ
---@field bBroken number @ǰѪ
local ACaveStoneActor = {}

function ACaveStoneActor:BroadcastClientCaveStoneExplsion() end

function ACaveStoneActor:PlayStoneExplsion() end

function ACaveStoneActor:OnRep_CurHP() end

function ACaveStoneActor:OnRep_bBroken() end
