---@meta

---Idle状态自动换弹
---@class UActionEffect_IdleAutoProcess: UActionEffect
---@field AutoProcessDelayTime number
---@field AmmoCheckFrequency number
---@field CurAmmoCheckFrequency number
local UActionEffect_IdleAutoProcess = {}

function UActionEffect_IdleAutoProcess:OnAutoProcess() end
