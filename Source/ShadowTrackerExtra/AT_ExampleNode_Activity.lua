---@meta

---@class EGT_TestActivityEvent
---@field TestOver number
EGT_TestActivityEvent = {}


---@class UAT_ExampleNode_Activity: UAT_ExampleNodeBase
---@field TestActivityEvent FAT_TestActivityEvent
---@field CacheActivityTestInfoConfig ULuaArrayHelper<FAT_ActivityTestInfo>
---@field ActivityTestInfo FAT_ActivityTestInfo
---@field cachePC ULuaArrayHelper<APlayerController>
---@field cachePCID ULuaArrayHelper<number>
---@field cacheActivity AActor
local UAT_ExampleNode_Activity = {}

---@param PlayerController ASTExtraPlayerController
---@param Location FVector
function UAT_ExampleNode_Activity:NoHurtTeleportCharacter(PlayerController, Location) end
