---@meta

---@class UAirAttackComponent: UTimerRegistComponent
---@field MapOriginal FVector
---@field MapRadius number
---@field FlightHeight number
---@field SeaLevelHeight number
---@field WhiteList ULuaArrayHelper<FVector>
---@field AirAttackMode EAirAttackMode
---@field BlackAirAttackRange number
---@field BlackAirAttackMinArr ULuaArrayHelper<number>
---@field BlackAirAttackMaxArr ULuaArrayHelper<number>
---@field DefaultBlackAirAttackMin number
---@field DefaultBlackAirAttackMax number
---@field BlackAirAttackHeight number
---@field ArtilleryShellHeight number
---@field BlackAirAttackIntervalMin number
---@field BlackAirAttackIntervalMax number
---@field bUseAirAttackLocator boolean
---@field DelayTime number
---@field WaveCount number
---@field DefaultAirAttackGenerateType EAirAttackGenerateType
---@field AirAttackGenerateTypeList ULuaArrayHelper<EAirAttackGenerateType>
---@field bAirAttackUseModifier boolean
---@field WaveInternal number
---@field AirAttackConfig FAirAttackCfg
---@field SpecifiedAirAttackAreaList ULuaArrayHelper<FVector>
---@field PositionIgnoreActorTags ULuaArrayHelper<string>
---@field AirAttackOrder FAirAttackOrder
---@field AirAttackOrderCR FAirAttackOrderCR
---@field AvailabeHouseArr ULuaArrayHelper<ASTExtraBreakableHouseActor>
---@field CallBlackAirAttackTimerRegister ULuaArrayHelper<FRegisterCallerTimer>
---@field CallBlackAirAttackInstanceID number
local UAirAttackComponent = {}

---@param index number
function UAirAttackComponent:ShowAirAttackWarningTips(index) end

---@param index number
function UAirAttackComponent:AirAttack(index) end

---@param X number
---@param Y number
---@param AttackRadius number
function UAirAttackComponent:ShowAirAttackWarningTipsSpecified(X, Y, AttackRadius) end

function UAirAttackComponent:AirAttackSpecified() end

---@param Location FVector2D
function UAirAttackComponent:CallAirAttackByLocation(Location) end

---@param pos FVector
function UAirAttackComponent:AddSpecifiedAirAttackAreaList(pos) end

function UAirAttackComponent:ClearSpecifiedAirAttackAreaList() end

---@param AirAttackCenterPos FVector
---@param Caller AActor
---@return boolean
function UAirAttackComponent:MakeBlackAirAttackAtSpecifiedPosition(AirAttackCenterPos, Caller) end
