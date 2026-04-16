---@meta

---@class FClientShieldHPChangedDelegate : ULuaMulticastDelegate
FClientShieldHPChangedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ShieldHP: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FClientShieldHPChangedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param ShieldHP number
function FClientShieldHPChangedDelegate:Broadcast(ShieldHP) end


---@class ASTExtraBattleshipVehicle: ASTExtraVehicleBase
---@field LeftRightMinInput number
---@field WingAccelerateMaxTime number
---@field NormalCameraLength number
---@field HighSpeedCameraLength number
---@field CameraSwitchTime number
---@field HighSpeedModeTime number
---@field HighSpeedModeCD number
---@field ShieldMaxHP number
---@field ShieldTime number
---@field ShieldHP number
---@field ServerInHighSpeedMode boolean
---@field ServerDeformTime number
---@field TopWingsEffectName string
---@field TopWingsLeftBoneName string
---@field TopWingsRightBoneName string
---@field BackWingsEffectName string
---@field BackWingsBoneName string
---@field DustEffectName string
---@field WaterDustEffectName string
---@field SandDustEffectName string
---@field GrassDustEffectName string
---@field SnowDustEffectName string
---@field WaterPlaneEffectName string
---@field showWaterPlaneffectHeight number
---@field WaterPlaneffectHeigh number
---@field TopWinsfxLoop FSTExtraVehicleSfxLoop
---@field TopWinsEnginefxLoop FSTExtraVehicleSfxLoop
---@field BattleshipBurningfxLoop FSTExtraVehicleSfxLoop
---@field EnterShipID number
---@field ShieldBrokenID number
---@field ShipBrokenID number
---@field HighSpeedModeTimer number
---@field HighSpeedModeCDTimer number
---@field ClientShieldHPChangedDelegate FClientShieldHPChangedDelegate
local ASTExtraBattleshipVehicle = {}

function ASTExtraBattleshipVehicle:OnVehicleExplosion() end

---@param Player ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function ASTExtraBattleshipVehicle:OnPlayerEnterVehicle(Player, SeatType, IsSucc) end

---@return boolean
function ASTExtraBattleshipVehicle:IsHighSpeedMode() end

---@param isFreeMode boolean
function ASTExtraBattleshipVehicle:SendToServerChangeCameraMode(isFreeMode) end

---@param isFreeMode boolean
function ASTExtraBattleshipVehicle:SendToAllChangeCameraMode(isFreeMode) end

---@param isHighSpeedMode boolean
function ASTExtraBattleshipVehicle:ReqChangeHighSpeedMode(isHighSpeedMode) end

---@param isHighSpeedMode boolean
function ASTExtraBattleshipVehicle:RspChangeHighSpeedMode(isHighSpeedMode) end

---@param ID number
---@param Value1 string
---@param Value2 string
---@param PlayerKey number
---@param Position FVector
function ASTExtraBattleshipVehicle:TlogStatistics(ID, Value1, Value2, PlayerKey, Position) end

function ASTExtraBattleshipVehicle:OnShieldDestroyed() end

---@param bIsHighSpeed boolean
function ASTExtraBattleshipVehicle:OnHighSpeedModeChanged(bIsHighSpeed) end

---@param bToHighSpeed boolean
function ASTExtraBattleshipVehicle:OnDeformStarted(bToHighSpeed) end

---@param bToHighSpeed boolean
function ASTExtraBattleshipVehicle:OnDeformFinished(bToHighSpeed) end

---@return FVector
function ASTExtraBattleshipVehicle:GetRotationInputDir() end

---@param Player ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function ASTExtraBattleshipVehicle:HandlePlayerExitVehicleOnServer(Player, SeatType, IsSucc) end

function ASTExtraBattleshipVehicle:OnRep_ShieldHP() end

function ASTExtraBattleshipVehicle:OnRep_ServerInHighSpeedMode() end
