---@meta

---@class ULobbyECSComponent: USceneComponent
---@field LobbyEntities ULuaArrayHelper<FLobbyEntity>
---@field RunTimeEntities ULuaArrayHelper<FLobbyCom>
local ULobbyECSComponent = {}

---@param Tag string
---@param InParam ULuaArrayHelper<FActionParam>
---@return FActionReturnValue
function ULobbyECSComponent:TriggerActionByTag(Tag, InParam) end
