---@meta

---@class UBTTask_LostTomb_UseDoor: UBTTask_UseActivityBaseActor, ILuaInterface
---@field bOpen boolean
local UBTTask_LostTomb_UseDoor = {}

---@return string
function UBTTask_LostTomb_UseDoor:GetLuaModule() end

---@param Door AActivityBaseActor
---@return boolean
function UBTTask_LostTomb_UseDoor:IsDoorOpened(Door) end
