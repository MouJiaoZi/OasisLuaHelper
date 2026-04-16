---@meta

---@class FAddCircleBuffConditions
---@field NotAllowedPawnStates ULuaArrayHelper<EPawnState>
FAddCircleBuffConditions = {}


---@class ARadiationCircleBase: AActor
---@field UpperCylinderMesh FSoftObjectPath
---@field BottomCylinderMesh FSoftObjectPath
---@field CircleZScaleMap ULuaMapHelper<EInnerCircleType, number>
---@field CircleCylinderMaterialHigh ULuaMapHelper<EInnerCircleType, FSoftObjectPath>
---@field CircleCylinderMaterialLow ULuaMapHelper<EInnerCircleType, FSoftObjectPath>
---@field CircleBuffMap ULuaMapHelper<EInnerCircleType, string>
---@field AddCircleBuffConditions ULuaMapHelper<string, FAddCircleBuffConditions>
---@field CircleActivityIDMap ULuaMapHelper<EInnerCircleType, number>
---@field CircleTipsIDMap ULuaMapHelper<EInnerCircleType, number>
---@field CircleTipsIDTag string
---@field AppearanceTipsMap ULuaMapHelper<EInnerCircleType, number>
---@field AppearanceTipsDelayTime number
---@field MapIconID number
---@field InnerCircleType EInnerCircleType
---@field InCirclePlayerList ULuaArrayHelper<ASTExtraBaseCharacter>
local ARadiationCircleBase = {}

function ARadiationCircleBase:OnRep_InnerCircleType() end

function ARadiationCircleBase:InitCircleAppearance() end

---@param InCircleType EInnerCircleType
function ARadiationCircleBase:BroadcastInnerCircleAppearance(InCircleType) end
