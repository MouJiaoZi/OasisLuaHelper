---@meta

---@class FMakeupMaterialParam
---@field ParamType string
---@field ColorValue FLinearColor
---@field FloatValue number
---@field TextureId number
FMakeupMaterialParam = {}


---@class FGalaxyFaceMakeupScalarParamBounds
---@field Min number
---@field Max number
FGalaxyFaceMakeupScalarParamBounds = {}


---@class FGalaxyFaceMakeupParamDefaultValue
---@field Command string
---@field DefaultValue string
FGalaxyFaceMakeupParamDefaultValue = {}


---@class FGalaxyFaceMakeupAdditionCommand
---@field MakeupCommand string
---@field MakeupAdditionCommands ULuaArrayHelper<FGalaxyFaceMakeupParamDefaultValue>
FGalaxyFaceMakeupAdditionCommand = {}


---@class FDrawRTMaterials
---@field DrawFaceBaseColor UMaterialInterface
---@field DrawFaceRoughness UMaterialInterface
---@field DrawFaceNormal UMaterialInterface
---@field DrawEye UMaterialInterface
FDrawRTMaterials = {}


---@class FGalaxyFaceData
---@field FaceBoneControllers ULuaMapHelper<number, number>
---@field MakeupCommands ULuaMapHelper<number, string>
FGalaxyFaceData = {}


---@class FGalaxyFaceReplicatedData
---@field FaceBoneControllersKeys ULuaArrayHelper<number>
---@field FaceBoneControllersValues ULuaArrayHelper<number>
---@field MakeupCommandsKeys ULuaArrayHelper<number>
---@field MakeupCommandsValues ULuaArrayHelper<string>
FGalaxyFaceReplicatedData = {}


---@class UGalaxyFaceMakeupDataConfig: UObject
---@field MakeupMaterialParamBoundsMap ULuaMapHelper<string, FGalaxyFaceMakeupScalarParamBounds>
---@field MakeupAdditionCommandMap ULuaMapHelper<string, FGalaxyFaceMakeupAdditionCommand>
local UGalaxyFaceMakeupDataConfig = {}

---@param command string
---@return FGalaxyFaceMakeupScalarParamBounds
function UGalaxyFaceMakeupDataConfig:GetMaterialParamBounds(command) end

---@param commandValue string
function UGalaxyFaceMakeupDataConfig:GetAdditionCommands(commandValue) end
