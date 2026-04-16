---@meta

---@class UFeatureCustomModuleBP: UFeatureCustomModule
local UFeatureCustomModuleBP = {}

---@param Owner AActor
function UFeatureCustomModuleBP:Init_BP(Owner) end

---@param Owner AActor
function UFeatureCustomModuleBP:BeginPlay_BP(Owner) end

---@param Owner AActor
function UFeatureCustomModuleBP:OnDestroyed_BP(Owner) end

---@param Owner AActor
function UFeatureCustomModuleBP:OnRespawned_BP(Owner) end

---@param Owner AActor
function UFeatureCustomModuleBP:OnRecycled_BP(Owner) end

---@param DeltaTime number
function UFeatureCustomModuleBP:Tick_Internal_BP(DeltaTime) end
