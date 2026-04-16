---@meta

---@class UEffectComponent: UActorComponent
local UEffectComponent = {}

---@param graphTid number
---@param graphUid number
---@param effectTid number
---@param source AActor
---@param target AActor
---@param data ULuaArrayHelper<number>
function UEffectComponent:S2Sim_CallRemoteEffect(graphTid, graphUid, effectTid, source, target, data) end

---@param uid number
function UEffectComponent:S2A_EndEffectGraph(uid) end
