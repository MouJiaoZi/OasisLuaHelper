---@meta

---@class ASTExtraLootTruckAISpawner: ASTExtraVehicleAISpawner
---@field DoorOpeningTime number
---@field bOpened boolean
---@field bGarageOpening boolean
local ASTExtraLootTruckAISpawner = {}

---@param SpawnedVehicle APawn
function ASTExtraLootTruckAISpawner:OnSpawnAI(SpawnedVehicle) end

---@param SpawnedVehicle APawn
function ASTExtraLootTruckAISpawner:PostSpawnAI(SpawnedVehicle) end

---@param SpawnedVehicle APawn
function ASTExtraLootTruckAISpawner:FinishGarageOpening(SpawnedVehicle) end

---@param bOpenState boolean
function ASTExtraLootTruckAISpawner:HandleDoorState(bOpenState) end

---@param bShouldUpdate boolean
function ASTExtraLootTruckAISpawner:SetSkeletalMeshShouldUpdate(bShouldUpdate) end

function ASTExtraLootTruckAISpawner:OnRep_Opened() end

function ASTExtraLootTruckAISpawner:OnRep_GarageOpening() end
