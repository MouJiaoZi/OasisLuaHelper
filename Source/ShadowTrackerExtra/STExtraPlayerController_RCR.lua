---@meta

---@class ASTExtraPlayerController_RCR: ASTExtraPlayerController
---@field ViewerBoxExtent FVector
---@field TargetBoxExtent FVector
---@field AllExtraHouseActors ULuaArrayHelper<AActor>
local ASTExtraPlayerController_RCR = {}

---@param bEnable boolean
function ASTExtraPlayerController_RCR:RCRAutomaticTestCmd(bEnable) end

---@param bEnable boolean
function ASTExtraPlayerController_RCR:RPC_Server_RCRAutomaticTest(bEnable) end
