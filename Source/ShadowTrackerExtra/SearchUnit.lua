---@meta

---@class ESearchUnitState
---@field Born number
---@field ClockWise number
---@field AntiClockWise number
---@field Sleep number
---@field Start number
---@field Max number
ESearchUnitState = {}


---@class ASearchUnit: AActivityBaseActor
---@field SelfRotatingCD number
---@field CDTime number
---@field SearchDegree number
---@field SearchLength number
---@field bSearching boolean
---@field bRotating boolean
---@field bSleeping boolean
---@field TargetState ESearchUnitState
---@field ForBiddenStates ULuaArrayHelper<EPawnState>
---@field StandOffsetArr ULuaArrayHelper<FVector>
---@field CrouchOffsetArr ULuaArrayHelper<FVector>
---@field ProneOffsetArr ULuaArrayHelper<FVector>
local ASearchUnit = {}

function ASearchUnit:UpdateRotateInit() end

---@param DeltaTime number
function ASearchUnit:UpdateMirrorRotate(DeltaTime) end

---@param CurTargetState ESearchUnitState
function ASearchUnit:UpdateUnitState(CurTargetState) end

function ASearchUnit:SwitchState() end

function ASearchUnit:SearchTarget() end

---@param Root USceneComponent
function ASearchUnit:CheckTargetInBlueprint(Root) end

function ASearchUnit:OnRep_Owner() end
