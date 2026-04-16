---@meta

---@class UBountyHunterControllerComponent: UActorComponent
local UBountyHunterControllerComponent = {}

---@param Actor AActor
---@param OperateType number
---@param ProductId number
function UBountyHunterControllerComponent:ClientOperateProduct(Actor, OperateType, ProductId) end

---@param Actor AActor
---@param OperateType number
---@param ProductId number
function UBountyHunterControllerComponent:ServerOperateProduct(Actor, OperateType, ProductId) end

---@param Actor AActor
---@param MsgID number
---@param OperateType number
---@param ProductId number
function UBountyHunterControllerComponent:OperateProductMsg(Actor, MsgID, OperateType, ProductId) end

---@param Actor AActor
---@param OperateType number
---@param ProductId number
function UBountyHunterControllerComponent:LuaOperateProduct(Actor, OperateType, ProductId) end

---@param Actor AActor
---@param MsgID number
---@param OperateType number
---@param ProductId number
function UBountyHunterControllerComponent:LuaOperateProductMsg(Actor, MsgID, OperateType, ProductId) end

---@param Actor AActor
---@param OperateType number
function UBountyHunterControllerComponent:ClientOperateRadar(Actor, OperateType) end

---@param Actor AActor
---@param OperateType number
function UBountyHunterControllerComponent:ServerOperateRadar(Actor, OperateType) end

---@param Actor AActor
---@param OperateType number
function UBountyHunterControllerComponent:LuaOperateRadar(Actor, OperateType) end

---@param Actor AActor
---@param MsgID number
---@param OperateType number
function UBountyHunterControllerComponent:OperateRadarMsg(Actor, MsgID, OperateType) end

---@param Actor AActor
---@param MsgID number
---@param OperateType number
function UBountyHunterControllerComponent:LuaOperateRadarMsg(Actor, MsgID, OperateType) end
