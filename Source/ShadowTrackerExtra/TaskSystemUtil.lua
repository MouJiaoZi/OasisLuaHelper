---@meta

---@class FHuntPickerItem
---@field DistToTaskPicker number
---@field PlayerState ASTExtraPlayerState
FHuntPickerItem = {}


---@class UTaskSystemUtil: UBlueprintFunctionLibrary
local UTaskSystemUtil = {}

---@param WorldContextObject UObject
---@param AllController ULuaArrayHelper<ASTExtraPlayerController>
function UTaskSystemUtil:GetAllPlayerController(WorldContextObject, AllController) end

---@param WorldContextObject UObject
---@param AllPlayerStates ULuaArrayHelper<ASTExtraPlayerState>
---@param bExcluedAI boolean
function UTaskSystemUtil:GetAllPlayerState(WorldContextObject, AllPlayerStates, bExcluedAI) end

---@param ItemList ULuaArrayHelper<FHuntPickerItem>
function UTaskSystemUtil:SortHuntPickerList(ItemList) end

---@param OwnerTask UUniversalTask
---@param KeySelector FTriggerEventParamKeySelector
---@return string
function UTaskSystemUtil:GetUIntStrFromEvent(OwnerTask, KeySelector) end

---@param OwnerTask UUniversalTask
---@param KeySelector FTaskBlackboardKeySelector
---@return string
function UTaskSystemUtil:GetUIntStrFromBlackboard(OwnerTask, KeySelector) end

---@param TaskID number
---@param ProgressIns number
---@param OwnerController ASTExtraPlayerController
---@param SenderID number
function UTaskSystemUtil:QuickFireTaskUpdateEvent(TaskID, ProgressIns, OwnerController, SenderID) end
