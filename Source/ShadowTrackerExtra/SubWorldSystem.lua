---@meta

---@class FSubWorldSystemData
---@field SubWorldActorClass ASubWorldActor
---@field SubWorldLocationList ULuaArrayHelper<FVector>
---@field SubWorldHeight number
---@field SubWorldPermitHeight number
---@field SubWorldExtent number
---@field ExtraExtent number
---@field CurIndex number
FSubWorldSystemData = {}


---@class ASubWorldActor: AActivityBaseActor
---@field InsidePlayers ULuaArrayHelper<ASTExtraPlayerController>
local ASubWorldActor = {}


---@class USubWorldSystem: UObject
---@field SubWorldSystemData FSubWorldSystemData
---@field SubWorldList ULuaArrayHelper<ASubWorldActor>
local USubWorldSystem = {}

function USubWorldSystem:ReleaseSubWorldSystem() end

---@param InPlayerController APlayerController
function USubWorldSystem:OnPlayerExitGame(InPlayerController) end

---@param InPlayer APlayerController
function USubWorldSystem:OnPlayerPostLogin(InPlayer) end

---@param InPlayerKey number
---@param KillerKey number
---@param bIsAI boolean
function USubWorldSystem:OnPlayerKilled(InPlayerKey, KillerKey, bIsAI) end

function USubWorldSystem:Initialize() end

function USubWorldSystem:Deinitialize() end

---@param InPlayerKey number
---@param KillerKey number
---@param bIsAI boolean
function USubWorldSystem:OnPlayerKilledCPP(InPlayerKey, KillerKey, bIsAI) end
