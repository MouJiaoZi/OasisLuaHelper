---@meta

---@class FStructPhysAssetInfo
---@field COMOffset FVector
FStructPhysAssetInfo = {}


---@class APhysAssetCheckTool: AActor
---@field ArrayPhysicsAsset ULuaArrayHelper<FStructPhysAssetInfo>
local APhysAssetCheckTool = {}

function APhysAssetCheckTool:CaluPhysAssetCom() end
