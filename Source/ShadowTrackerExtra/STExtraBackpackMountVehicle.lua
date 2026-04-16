---@meta

---@class FRabbitJumpEntered : ULuaSingleDelegate
FRabbitJumpEntered = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FRabbitJumpEntered:Bind(Callback, Obj) end

---执行委托
function FRabbitJumpEntered:Execute() end


---@class ASTExtraBackpackMountVehicle: ASTExtraMountVehicle
---@field RabbitJumpEntered FRabbitJumpEntered
---@field ServerCheckExitVehicle boolean
---@field DistanceToPrepareLand number
---@field SlowSpeedPawnStates ULuaArrayHelper<EPawnState>
---@field FastMoveSpeed number
---@field SlowMoveSpeed number
---@field LeanBackDelay number
---@field CustomCameraOffset FCameraOffsetData
---@field MeshRelativeLocOffset FVector
---@field Sfx_RabbitRunLoop FSTExtraVehicleSfxLoop
---@field CheckSpawnedRabbitOwner number
local ASTExtraBackpackMountVehicle = {}

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function ASTExtraBackpackMountVehicle:OnServerExitVehicle(Character, SeatType, IsSucc) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function ASTExtraBackpackMountVehicle:OnServerEnterVehicle(Character, SeatType, IsSucc) end

function ASTExtraBackpackMountVehicle:SendToServerClientInitOK() end

function ASTExtraBackpackMountVehicle:ClientOnVehicle() end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function ASTExtraBackpackMountVehicle:ClientEnterVehicle(Character, SeatType, IsSucc) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function ASTExtraBackpackMountVehicle:ClientExitVehicle(Character, SeatType, IsSucc) end

function ASTExtraBackpackMountVehicle:TryDestroyVehicle() end

---@return boolean
function ASTExtraBackpackMountVehicle:IsRabbitShouldEnterSlowSpeed() end

function ASTExtraBackpackMountVehicle:VehicleJump() end

---@param Weapon ASTExtraWeapon
function ASTExtraBackpackMountVehicle:CharacterStartFire(Weapon) end

function ASTExtraBackpackMountVehicle:PrintVehicleInfo() end
