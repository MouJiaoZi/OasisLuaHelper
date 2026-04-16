---@meta

---@class EWarDogVehicleState
---@field None number @车外
---@field InVehicle number @车内
---@field LeanOut number @探头中
EWarDogVehicleState = {}


---@class FWarDogVehicleData
---@field VehicleState EWarDogVehicleState
---@field VehicleSeatIndex number
---@field bDriver boolean
---@field VehicleType ESTExtraVehicleType
FWarDogVehicleData = {}


---军犬蓝图组件，挂在军犬Pawn上 将客户端需要的状态通过值复制同步给客户端
---@class UWarDogComp: UActorComponent
---@field AIFollowSpeedType EAIFollowSpeedType @军犬当前移动速度档位
---@field bForcePawnState boolean @军犬警戒状态姿势 站蹲趴(警戒状态在蓝图中)
---@field PawnState EPawnState @军犬警戒状态姿势 站蹲趴(警戒状态在蓝图中)
---@field bInLongIdle boolean @军犬是否在休闲挂机状态
---@field SwitchLongIdleTime number @军犬切换长挂机状态的时间
---@field VehicleData FWarDogVehicleData
local UWarDogComp = {}

---设置跟随玩家(和主人不一定是同一人)
---@param InFollowPlayer ACharacter
function UWarDogComp:SetFollowPlayer(InFollowPlayer) end

---设置当前移动速度类型
---@param InAIFollowSpeedType EAIFollowSpeedType
function UWarDogComp:SetFollowSpeedType(InAIFollowSpeedType) end

---设置站蹲趴类型
---@param InPawnState EPawnState
function UWarDogComp:SetPawnState(InPawnState) end

---设置站蹲趴类型
---@param bInForcePawnState boolean
function UWarDogComp:SetForcePawnState(bInForcePawnState) end

---设置是否挂机Idle
---@param bInLongIdleParam boolean
function UWarDogComp:SetInLongIdle(bInLongIdleParam) end

---@param bInLockLongIdle boolean
function UWarDogComp:LockLongIdle(bInLockLongIdle) end

---@param InVehicleState EWarDogVehicleState
function UWarDogComp:SetVehicleState(InVehicleState) end

---@param InVehicleSeatIndex number
function UWarDogComp:SetVehicleSeatIndex(InVehicleSeatIndex) end

---@param InVehicleType ESTExtraVehicleType
function UWarDogComp:SetVehicleType(InVehicleType) end

---@param bInIsDriver boolean
function UWarDogComp:SetIsDriver(bInIsDriver) end
