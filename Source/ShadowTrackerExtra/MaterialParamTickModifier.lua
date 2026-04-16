---@meta

---@class FLiquidMaterialAnimatorConfig
---@field DynamicPositionParameterName string
---@field DynamicDirectionParameterName string
---@field MaterialSlotName string
---@field MaterialSocketName string
---@field VelocityScale number
---@field AngularVelocityScale number
---@field Period number
---@field MaxAmplitude number
---@field AmplitudeLerpAlphaUp number
---@field AmplitudeLerpAlphaDown number
---@field LobbySpecialMachineCondition FRoleAndQualityLobbySelector
---@field SpecialMachineCondition FNetRoleAndQualitySelector
FLiquidMaterialAnimatorConfig = {}


---@class ULiquidMaterialAnimator: UObject, FTickableGameObject
---@field MaterialInstance UMaterialInstanceDynamic
---@field TargetComponent UMeshComponent
local ULiquidMaterialAnimator = {}
