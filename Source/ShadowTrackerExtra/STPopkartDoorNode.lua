---@meta

---@class FPopKartPassDoorAccelerate
---@field CanUsePassDoorAccelerate boolean
---@field PassAcceleratePercent number
---@field MaxSpeed number
---@field MinSpeed number
FPopKartPassDoorAccelerate = {}


---@class ASTPopkartDoorNode: ASTPopkartAreaTrigger
---@field PassAcceleratePercent number
---@field PassAccelerateMaxSpeed number
---@field PassAccelerateMinSpeed number
---@field PopKartPassDoorAccelerateValidTime number
---@field UseClientPassDoorEffect boolean
---@field PassDoorEffectTag number
---@field PopKartPassDoorTips number
local ASTPopkartDoorNode = {}

function ASTPopkartDoorNode:OnPassDoorEffectTagChange() end

function ASTPopkartDoorNode:PassDoorEffectTagChange() end

---@param vehicle ASTExtraWheeledVehicle
function ASTPopkartDoorNode:PassDoorEffect(vehicle) end

---@param vehicle ASTExtraWheeledVehicle
function ASTPopkartDoorNode:JustPassDoorEffect(vehicle) end

---@param Vehicle ASTExtraWheeledVehicle
function ASTPopkartDoorNode:AlreadyPassDoorEffect(Vehicle) end
