---@meta

---@class UCheatCommand_SpawnVehicle: UCheatCommand
---@field SearchLocationStep number
---@field MaxSpawnLocSearchNum number
---@field MaxSpawnLocTestNum number
---@field MaxSpawnLocSearchNum_WaterArea number
---@field MaxSpawnLocTestNum_WaterArea number
---@field StaticFloorKeyWordList ULuaArrayHelper<string>
---@field ValidLocationActorTag string
local UCheatCommand_SpawnVehicle = {}

---@param InController ASTExtraPlayerController
---@param InVehicleID number
---@param InVehicleHP number
---@return ECheatCommandResultType
function UCheatCommand_SpawnVehicle:SpawnVehicle(InController, InVehicleID, InVehicleHP) end

---@param InVehicleID number
---@return string
function UCheatCommand_SpawnVehicle:GetVehiclePathFromID(InVehicleID) end

---@param InVehicleID number
---@return boolean
function UCheatCommand_SpawnVehicle:IsWaterAreaVehicle(InVehicleID) end

---@param InVehicleID number
---@return string
function UCheatCommand_SpawnVehicle:GetVehicleShapeBoxSize(InVehicleID) end

---@param InWorld UWorld
---@param InController ASTExtraPlayerController
---@param InVehicleBox FVector
---@param InTriggerTransform FTransform
---@param OutVehicleTransform FTransform
---@return boolean
function UCheatCommand_SpawnVehicle:GetVehicleTransform(InWorld, InController, InVehicleBox, InTriggerTransform, OutVehicleTransform) end

---@param InWorld UWorld
---@param InController ASTExtraPlayerController
---@param InVehicleBox FVector
---@param InTriggerTransform FTransform
---@param OutVehicleTransform FTransform
---@return boolean
function UCheatCommand_SpawnVehicle:GetVehicleTransform_WaterArea(InWorld, InController, InVehicleBox, InTriggerTransform, OutVehicleTransform) end

---@param InWorld UWorld
---@param InPawn APawn
---@param InVehicleBox FVector
---@param InQuat FQuat
---@param InLocation FVector
---@return boolean
function UCheatCommand_SpawnVehicle:ValidateLocationForSpawn(InWorld, InPawn, InVehicleBox, InQuat, InLocation) end

---@param InWorld UWorld
---@param InWaterArea AActor
---@param InVehicleBox FVector
---@param InQuat FQuat
---@param InLocation FVector
---@return boolean
function UCheatCommand_SpawnVehicle:ValidateLocationForSpawn_WaterArea(InWorld, InWaterArea, InVehicleBox, InQuat, InLocation) end

---@param InCommandInfo FCheatCommandInfo
---@param InVehicleID number
---@param InVehicleHP number
function UCheatCommand_SpawnVehicle:PackCommandParams(InCommandInfo, InVehicleID, InVehicleHP) end

---@param InCommandInfo FCheatCommandInfo
---@param OutVehicleID number
---@param OutVehicleHP number
---@return boolean
function UCheatCommand_SpawnVehicle:UnPackCommandParams(InCommandInfo, OutVehicleID, OutVehicleHP) end

---@param InTestActor AActor
---@return boolean
function UCheatCommand_SpawnVehicle:IsStaticRoad(InTestActor) end
