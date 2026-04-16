---@meta

---@class EBigAirShipMoveType
---@field Route number
---@field Direction number
---@field Leave number
EBigAirShipMoveType = {}


---@class FBigAirShipLeaveDelegate : ULuaSingleDelegate
FBigAirShipLeaveDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FBigAirShipLeaveDelegate:Bind(Callback, Obj) end

---执行委托
function FBigAirShipLeaveDelegate:Execute() end


---@class FBigAirShipPreLeaveDelegate : ULuaSingleDelegate
FBigAirShipPreLeaveDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FBigAirShipPreLeaveDelegate:Bind(Callback, Obj) end

---执行委托
function FBigAirShipPreLeaveDelegate:Execute() end


---@class FBigAirShipNoHumanDelegate : ULuaSingleDelegate
FBigAirShipNoHumanDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FBigAirShipNoHumanDelegate:Bind(Callback, Obj) end

---执行委托
function FBigAirShipNoHumanDelegate:Execute() end


---@class ABigAirShip: AActor
---@field CurMoveType EBigAirShipMoveType
---@field AirShipUniqueID number
---@field InitialMoveType EBigAirShipMoveType
---@field ShipDirectionType ULuaMapHelper<number, number>
---@field bEnableLeave boolean
---@field ShipLeaveTime number
---@field ShipPreLeaveTime number
---@field LeaveSpeedRate number
---@field MapIconID number
---@field PlayerStateMapIconID number
---@field MiniMapOffset FVector
---@field UpdateInterval number
---@field SpawnItemDelay number
---@field PlayerLandDistanceMax number
---@field PlayerLandHeightOffsetMax number
---@field RevivalDelayTime number
---@field RevivalItemID number
---@field RespawnRadiusOffset number
---@field RespawnZOffset number
---@field bEnableSleep boolean
---@field SleepDelay number
---@field bEnableDelayRep boolean
---@field RepDelayTime number
---@field CanOpenParachuteHeight number
---@field ForceOpenParachuteHeight number
---@field CloseParachuteHeight number
---@field ParaMoveDistance number
---@field BigAirShipPlayerList ULuaArrayHelper<ASTExtraPlayerCharacter>
---@field MiniMapRecord ULuaMapHelper<number, number>
---@field SwimmingPoolNum number
---@field SwimmingPoolMainTag string
---@field SwimmingPoolOffset ULuaMapHelper<string, FVector>
---@field SwimmingPoolArray ULuaArrayHelper<APhysicsVolume>
local ABigAirShip = {}

---@param Type number
function ABigAirShip:ChangeShipDirection(Type) end

function ABigAirShip:HideMeshsOnPlayerOnGround() end

---@param bMoving boolean
function ABigAirShip:SetMoveState(bMoving) end

---@param InSpeedRate number
function ABigAirShip:SetSpeedRate(InSpeedRate) end

---@param InInterval number
function ABigAirShip:SetTickInterval(InInterval) end

function ABigAirShip:Leave() end

function ABigAirShip:DestroyActorOnGround() end

---@param bAdd boolean
---@param Character ASTExtraBaseCharacter
function ABigAirShip:ModifyPlayerList(bAdd, Character) end

function ABigAirShip:GetPlayerList() end

function ABigAirShip:SpawnPickUp() end

function ABigAirShip:GotoSleep() end

function ABigAirShip:UpdateSwimmingPool() end

function ABigAirShip:OnRep_CurMoveType() end

function ABigAirShip:OnRep_AirShipUniqueID() end

function ABigAirShip:OnGameEnterFight() end

---@param Character ASTExtraPlayerCharacter
function ABigAirShip:OnPlayerExitParachute(Character) end

---@param Character ASTExtraBaseCharacter
function ABigAirShip:OnPlayerDeath(Character) end
