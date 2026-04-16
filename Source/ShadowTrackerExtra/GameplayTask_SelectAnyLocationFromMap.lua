---@meta

---UGameplayTask_SelectAnyLocationFromMap 从地图中选任意点
---@class UGameplayTask_SelectAnyLocationFromMap: UUAEGameplayTask, ILuaInterface
---@field LocationSelected FGamplayTaskSelectedAnyLocationDelegate
---@field Canceled FGamplayTaskCancelSelectAnyLocatioDelegate
---@field MarkTypeID number
local UGameplayTask_SelectAnyLocationFromMap = {}

---@return string
function UGameplayTask_SelectAnyLocationFromMap:GetLuaModule() end

function UGameplayTask_SelectAnyLocationFromMap:ReceiveActivate() end

function UGameplayTask_SelectAnyLocationFromMap:ReceiveOnDestroy() end
