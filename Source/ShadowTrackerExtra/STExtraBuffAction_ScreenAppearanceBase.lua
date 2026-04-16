---@meta

---@class EScreenAppearanceTargetType
---@field FirstController number
---@field SkillOrBuffOwner number
---@field ControlledChildActorOfBuffOwner number
---@field ControlledBuffOwner number
---@field ViewTargetChildActorOfBuffOwner number
---@field DefaultType number
EScreenAppearanceTargetType = {}


---@class FScreenAppearanceInstanceStruct
FScreenAppearanceInstanceStruct = {}


---@class FSTExtraBuffAction_UpdateScreenAppearanceParametersStruct
FSTExtraBuffAction_UpdateScreenAppearanceParametersStruct = {}


---@class FSTExtraBuffAction_UpdateScreenAppearanceParametersParams
---@field ParameterName string
FSTExtraBuffAction_UpdateScreenAppearanceParametersParams = {}


---@class USTExtraBuffAction_ScreenAppearanceBase: USTExtraBuffAction
---@field bNeedSetLifeTime boolean
---@field bForControledPawn boolean
---@field TargetType EScreenAppearanceTargetType
---@field bNeedCleanOnReset boolean
---@field bEnableFadeIn boolean
---@field FadeInTime number
---@field bEnableFadeOut boolean
---@field FadeOutTime number
---@field FadeParameterName string
local USTExtraBuffAction_ScreenAppearanceBase = {}


---@class USTExtraBuffAction_UpdateScreenAppearanceParameters: USTExtraBuffAction
---@field bAllScreenAppearance boolean
---@field AppearanceName string
---@field AppearanceClass UScreenAppearanceProvider
---@field ParametersCurve ULuaArrayHelper<FSTExtraBuffAction_UpdateScreenAppearanceParametersParams>
local USTExtraBuffAction_UpdateScreenAppearanceParameters = {}
