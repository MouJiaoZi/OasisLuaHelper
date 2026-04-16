---@meta

---@class ADecorateKite: AActor
---@field AttachSocketName string
local ADecorateKite = {}

---@param SkillHandle UVehicleKiteSkillHandle
function ADecorateKite:SetKiteSkillHandle(SkillHandle) end

function ADecorateKite:ConsumeKite() end

function ADecorateKite:RecoveryKite() end

function ADecorateKite:OnRep_KiteSkillHandle() end

---@param VehicleBase ASTExtraVehicleBase
---@param SkillManager UVehicleSkillManagerComponent
function ADecorateKite:OnAttachModelToVehicle(VehicleBase, SkillManager) end

---@param VehicleBase ASTExtraVehicleBase
---@param SkillManager UVehicleSkillManagerComponent
function ADecorateKite:OnRemoveModelFromVehicle(VehicleBase, SkillManager) end

function ADecorateKite:ProcessAfterAttachToVehicle() end
