---@meta

---@class FUAECustomSaveData
---@field Transform FTransform
---@field ChildActorClass AActor
FUAECustomSaveData = {}


---@class UUAECustomHouseItemComponent: USceneComponent
---@field GameModeClass string
---@field ID number
---@field SaveDatas ULuaArrayHelper<FUAECustomSaveData>
local UUAECustomHouseItemComponent = {}


---@class AUAECustomHouseItemManager: AActor
local AUAECustomHouseItemManager = {}

---@param World UWorld
function AUAECustomHouseItemManager:OnGameStateDestroy(World) end

---@param gameModeClass UClass
function AUAECustomHouseItemManager:OnRepGameModeClass(gameModeClass) end
