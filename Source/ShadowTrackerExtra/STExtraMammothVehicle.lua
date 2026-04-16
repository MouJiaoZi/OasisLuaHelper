---@meta

---@class MammothVehicleSkill
---@field ENormal number
---@field ETrample number
MammothVehicleSkill = {}


---@class FDestoryMaterial
---@field SlotName string
FDestoryMaterial = {}


---@class ASTExtraMammothVehicle: ASTExtraMyriapodVehicle
---@field TrampleSkillCD number
---@field TrampleSkillTime number
---@field bTrampleCanUse boolean
---@field TrampleRadius number
---@field TrampleTime number
---@field TrampleCD number
---@field TrampleTimeer number
---@field TrampleSlipVehicleTime number
---@field AngularImpulseInDegreesMin number
---@field AngularImpulseInDegreesMax number
---@field OutOfControlOriginAngularZSpeedInDegreeThreshold number
---@field OutOfControlSpeedThreshold number
---@field Configs ULuaArrayHelper<FWheelSlipConfig>
---@field RecoverHPNoDamage number
---@field fRecoverHPWhenNoDamageInTime number
---@field fLastTakeDamageTime number
---@field RecoverHP number
---@field ServerMammothRecoverHPInterval number
---@field HPRecover number
---@field FuelRecover number
---@field fDestroyAfterUseTimeEnd number
---@field fDissolveVehicleAfterUseTimeEnd number
---@field DestroyMaterialArray ULuaArrayHelper<FDestoryMaterial>
---@field ModifyCameraLengthSpeed number
---@field EnterVehicleCameraLength number
---@field WalkCameraLength number
---@field RunCameraLength number
---@field CameraSwitchTime number
---@field WalkSocketOffset FVector
---@field RunSocketOffset FVector
---@field InitChangeCameraLengthTime number
---@field bUseTimeEnd boolean
---@field bDissolving boolean
---@field fUseTime number
local ASTExtraMammothVehicle = {}

function ASTExtraMammothVehicle:Trample() end

function ASTExtraMammothVehicle:ServerTrample() end

function ASTExtraMammothVehicle:OnRep_Trample() end

function ASTExtraMammothVehicle:HandDissolveVehicle() end

function ASTExtraMammothVehicle:HandUseTimeEnd() end

function ASTExtraMammothVehicle:OnRep_UseTimeEnd() end

function ASTExtraMammothVehicle:UseTimeEnd() end

function ASTExtraMammothVehicle:OnRep_Dissolve() end

function ASTExtraMammothVehicle:Dissolve() end
