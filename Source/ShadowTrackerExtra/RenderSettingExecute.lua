---@meta

---@class URenderSettingExecute: UBlueprintFunctionLibrary
local URenderSettingExecute = {}

---@param World UWorld
---@param DstQuality ERenderQuality
---@return boolean
function URenderSettingExecute:ExecuteRenderQuality(World, DstQuality) end

---@param RenderQualitySetting ERenderQuality
function URenderSettingExecute:AutoTestUseDefaultLaunchQuality(RenderQualitySetting) end
