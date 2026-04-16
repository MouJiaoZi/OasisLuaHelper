---@meta

---@class EBSSkillActionType
---@field EBSSAT_START number
---@field EBSSAT_PLACE number
---@field EBSSAT_END number
---@field EBSSAT_NONE number
EBSSkillActionType = {}


---@class UUAESkillAction_EnableBuildSystem: UUAESkillAction
---@field BuildingID number
---@field BuildActor ASTBuildingActorBase
---@field SelectBuildActor ASelectBuildActor
---@field ActionType EBSSkillActionType
---@field ActionTypeOnEnd EBSSkillActionType
---@field BuildingViewType EBuildingViewType
---@field bCanPlaceInServer boolean
---@field bReadIDFromBB boolean
---@field bStopAfterPLacement boolean
---@field bStopOnPhaseFinish boolean
---@field bCallServerRPCToStopPlacement boolean
---@field KeySelector FUAEBlackboardKeySelector
local UUAESkillAction_EnableBuildSystem = {}


---@class UUAESkillAction_OverrideBuildingConfiguration: UUAESkillAction
---@field BuildingID number
---@field AppliedRole ULuaArrayHelper<ENetRole>
---@field bOverrideConstructable boolean
---@field bOverrideConstructable_Start boolean
---@field bOverrideConstructable_End boolean
local UUAESkillAction_OverrideBuildingConfiguration = {}


---@class UUAESkillAction_CopyBuildData: UUAESkillAction
---@field BuildingID number
---@field LocationKeySelector FUAEBlackboardKeySelector
---@field RotationKeySelector FUAEBlackboardKeySelector
---@field ValidKeySelector FUAEBlackboardKeySelector
---@field bRealdoCopy boolean
---@field bUpdateCopy boolean
---@field bResetCopy boolean
local UUAESkillAction_CopyBuildData = {}


---@class UUAESkillAction_DoPreBuildCheckEvent: UUAESkillAction
---@field BuildingID number
---@field SuccessEvent string
---@field FailEvent string
---@field bUseUpdate boolean
---@field UpdateInterval number
local UUAESkillAction_DoPreBuildCheckEvent = {}
