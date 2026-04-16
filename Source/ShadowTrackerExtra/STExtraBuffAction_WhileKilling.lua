---@meta

---@class USTExtraBuffAction_WhileKilling: USTExtraBuffAction
---@field LevelEventListenerKeySelector FUAEBlackboardKeySelector
local USTExtraBuffAction_WhileKilling = {}

---@param Killee number
---@param Killer number
---@param OwnerUAECharacter AUAECharacter
---@param OwnerSTBaseBuffSystemComponent USTBaseBuffSystemComponent
---@param BuffName string
function USTExtraBuffAction_WhileKilling:WhileKilling(Killee, Killer, OwnerUAECharacter, OwnerSTBaseBuffSystemComponent, BuffName) end
