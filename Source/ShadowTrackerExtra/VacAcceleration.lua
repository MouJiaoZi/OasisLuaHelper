---@meta

---@class UVACTask_AccelerationControl: UVehicleAntiCheatTask
---@field StartCheckSpeed number @开始检查加速度的起始速度
---@field MaxAccelerationSpeed number @允许达到的最大加速度
---@field CheckInterval number @累计多长时间进行一次速度检查
local UVACTask_AccelerationControl = {}

---客户端完成了一次移动上报
---@param InClientTime number
---@param InClientPos FVector
function UVACTask_AccelerationControl:OnClientMove(InClientTime, InClientPos) end

---驾驶员变更
---@param OldChara ASTExtraPlayerCharacter
---@param NewChara ASTExtraPlayerCharacter
function UVACTask_AccelerationControl:OnDriverChanged(OldChara, NewChara) end
