---@meta

---@class FGetRandomPutLocOp_DataItem
---@field PlayerLoc FVector
---@field TargetPutLoc FVector
FGetRandomPutLocOp_DataItem = {}


---@class UGlobalTestSystemManager: UObject
---@field LastBrowsePath string
---@field GetRandomPutLocOp_DrawTime number
---@field GetRandomPutLocOp_DrawBoxExtent FVector
---@field GetRandomPutLocOp_DrawSphereRadius number
---@field GetRandomPutLocOp_DrawSphereSegments number
---@field GetRandomPutLocOp_CurLoopDataIndex number
---@field GetRandomPutLocOp_OriginDataList ULuaArrayHelper<FGetRandomPutLocOp_DataItem>
local UGlobalTestSystemManager = {}

---@param OutFilePath string
function UGlobalTestSystemManager:OpenFileBrowser(OutFilePath) end

---@param FilePath string
function UGlobalTestSystemManager:GetRandomPutLocOp_LoadAndParseOriginDataFile(FilePath) end

function UGlobalTestSystemManager:GetRandomPutLocOp_ProcessNextData() end
