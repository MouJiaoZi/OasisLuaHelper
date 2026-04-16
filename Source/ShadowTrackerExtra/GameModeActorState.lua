---@meta

---@class EGameModeActorState
---@field Invalid number
---@field Active number
---@field Ready number @初始
---@field Fighting number @准备
---@field Finished number @战斗
EGameModeActorState = {}


---@class UGameModeActorState: UObject
---@field StateTime number
---@field TickStateTime number
---@field IsUseTickFreq boolean
---@field EnterStateTime number
---@field StatePassedTime number
---@field IsServerMode boolean
---@field DynamicGameModeData ULuaMapHelper<string, number>
local UGameModeActorState = {}

function UGameModeActorState:Enter() end

---@param DeltaTime number
function UGameModeActorState:Execute(DeltaTime) end

function UGameModeActorState:Exit() end

---@return boolean
function UGameModeActorState:IsTimeout() end

---@return number
function UGameModeActorState:GetLeftTime() end

---@return number
function UGameModeActorState:GetEnterStateTime() end

---@return number
function UGameModeActorState:GetStateTime() end

---@return number
function UGameModeActorState:GetStatePassedTime() end

---@param RegulateTime number
function UGameModeActorState:RegulateStateEnterTime(RegulateTime) end

function UGameModeActorState:LuaEnter() end

function UGameModeActorState:LuaExecute() end

---@param DeltaTime number
function UGameModeActorState:LuaExecuteDelta(DeltaTime) end

function UGameModeActorState:LuaExit() end

---@param Key string
---@param Value number
function UGameModeActorState:SetDynamicGameModeData(Key, Value) end

---@param Key string
---@param OutValue number
---@return boolean
function UGameModeActorState:GetDynamicGameModeData(Key, OutValue) end
