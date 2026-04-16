---@meta

---@class UGameplayTask_SelectLocationFromMap: UUAEGameplayTask, ILuaInterface
---@field ExpectedLocationSelected FGameplayTaskSelectExpectedLocationDelegate
---@field NormalLocationSelected FGamplayTaskSelectNormalLocationDelegate
---@field Canceled FGamplayTaskCancelSelectLocatioDelegate
---@field MarkIconPath string
---@field SelectedIconPath string
---@field ExpectedLocations ULuaArrayHelper<FVector>
---@field bNeedChangeEntireMap boolean
---@field NewEntireMapPath string
---@field ComformBackgroundUIName string
---@field BackgroundUIOwnerActor UObject
local UGameplayTask_SelectLocationFromMap = {}

---@return string
function UGameplayTask_SelectLocationFromMap:GetLuaModule() end

function UGameplayTask_SelectLocationFromMap:ReceiveActivate() end

function UGameplayTask_SelectLocationFromMap:ReceiveOnDestroy() end
