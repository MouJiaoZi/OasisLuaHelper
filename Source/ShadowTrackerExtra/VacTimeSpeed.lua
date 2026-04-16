---@meta

---使用客户端上报来统计绝对速度 只判断水平移动速度，因为在出现地形加载等问题时，载具容易不断的下落。 且在自由下落时，竖直速度是没有上限的。
---@class UVACTask_ClientAbsSpeed: UVehicleAntiCheatTask
---@field MaxHorizonSpeed number @允许达到的最大水平速度(km/h)
---@field CheckInterval number @累计多长时间进行一次速度检查
---@field bUseConvertedTimeSpeedCheck boolean @是否使用经过时间校验的上报时间来作速度检查
---@field IsIncludeZDir boolean
local UVACTask_ClientAbsSpeed = {}

---客户端完成了一次移动上报
---@param InClientTime number
---@param InClientPos FVector
function UVACTask_ClientAbsSpeed:OnClientMove(InClientTime, InClientPos) end

---驾驶员变更
---@param OldChara ASTExtraPlayerCharacter
---@param NewChara ASTExtraPlayerCharacter
function UVACTask_ClientAbsSpeed:OnDriverChanged(OldChara, NewChara) end
