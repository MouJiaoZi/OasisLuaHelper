---@meta

---此为一个委托，并未实现任何逻辑，使用UTimeWatchDogComponent进行逻辑判断 是为了载具反外挂的任务类型统一
---@class UVACTask_TimeAccelerated: UVehicleAntiCheatTask
---@field bIsOpen boolean
local UVACTask_TimeAccelerated = {}

---驾驶员变更
---@param OldChara ASTExtraPlayerCharacter
---@param NewChara ASTExtraPlayerCharacter
function UVACTask_TimeAccelerated:OnDriverChanged(OldChara, NewChara) end
