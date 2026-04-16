---@meta

---@class UVACTask_NewAcceleration: UVehicleAntiCheatTask
---@field StratageIndex number
---@field MaxAccelerationSpeed number @允许达到的最大加速度
---@field CheckInterval number @累计多长时间进行一次速度检查
---@field DSRecordInterval number @累计多长时间进行一次速度检查
---@field BothTimeCheckTimeThreshold number @客户端和服务器两端的检查异常间隔在多少秒内认为是一次外挂
---@field VehicleNewAccelerationNoActorHitInLastFewSeconds number @过去多少秒内如果发生过碰撞，则不计入开挂
---@field VehicleNewAccelerationClearClientStateNoUploadDataThreshold number @两次上报超过多少秒，清除客户端数据
local UVACTask_NewAcceleration = {}

---驾驶员变更
---@param OldChara ASTExtraPlayerCharacter
---@param NewChara ASTExtraPlayerCharacter
function UVACTask_NewAcceleration:OnDriverChanged(OldChara, NewChara) end

---客户端完成了一次移动上报
---@param InClientTime number
---@param InClientPos FVector
---@param InClientVelocity FVector
---@param InClientAngularVelocity FVector
function UVACTask_NewAcceleration:OnClientMove(InClientTime, InClientPos, InClientVelocity, InClientAngularVelocity) end

---@param InDSTime number
function UVACTask_NewAcceleration:DSRecordMove(InDSTime) end

---@param InDSTime number
function UVACTask_NewAcceleration:DSRecordVel(InDSTime) end

---@param DSFail boolean
---@param InDSTime number
---@return boolean
function UVACTask_NewAcceleration:HandleCheckFail(DSFail, InDSTime) end
