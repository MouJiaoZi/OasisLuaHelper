---@meta

---@class ESTQuadrupedCharacterVehicleInteractStage
---@field MoveToVehicle number @移动到载具
---@field TeleportToVehicle number @上载具
---@field TeleportFromVehicle number @下载具
---@field TeleportFromVehiclePerformance number @下载具表现
---@field TeleportToVehicleTimeOut number @上载具超时
---@field TeleportToVehicleStopped number @上载具停止
ESTQuadrupedCharacterVehicleInteractStage = {}


---@class ESTQuadrupedCharacterVehicleInteractState
---@field None number @无
---@field EnterVehicle number @进入车辆中
---@field LeaveVehicle number @退出车辆中
---@field LeanOutVehicle number @探头中
---@field InVehicle number @载具中
ESTQuadrupedCharacterVehicleInteractState = {}


---@class USTQuadrupedCharacterVehicleInteract: UPersistEffectWithState
---@field CheckOnceTickInterval number
---@field State_Normal string
---@field State_Enter string
---@field State_EnterProtecting string
---@field State_Leave string
---@field State_LeanOut string
---@field FollowPawnBlackboardKey string
---@field VehicleInteractStateBlackboardKey string
---@field VehicleInteractStageBlackboardKey string
---@field CommandTypeBlackboardKey string
---@field VehicleInteractTag FGameplayTag
---@field FollowVehicleClasses ULuaArrayHelper<ASTExtraVehicleBase>
---@field ItemHandleClass UBattleItemHandleBase
---@field VehicleSkillHandleClass UVehicleWarDogsSkillHandle
---@field UniqueName string
local USTQuadrupedCharacterVehicleInteract = {}

---@param DeltaTime number
function USTQuadrupedCharacterVehicleInteract:CheckOnce(DeltaTime) end

---@param State string
---@param Time number
---@param bPause boolean
function USTQuadrupedCharacterVehicleInteract:SafeJumpToState(State, Time, bPause) end

---@return boolean
function USTQuadrupedCharacterVehicleInteract:IsProtectingTeammate() end

---@param Character ASTExtraBaseCharacter
---@param Vehicle ASTExtraVehicleBase
---@return boolean
function USTQuadrupedCharacterVehicleInteract:CanFollowVehicle(Character, Vehicle) end

---@param Character ASTExtraBaseCharacter
---@param Vehicle ASTExtraVehicleBase
---@return boolean
function USTQuadrupedCharacterVehicleInteract:CanEnterVehicle(Character, Vehicle) end

function USTQuadrupedCharacterVehicleInteract:TryRecycle() end
