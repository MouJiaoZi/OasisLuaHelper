---@meta

---@class ESTExtraPenguinVehicleState
---@field EPVS_Default number @普通状态
---@field EPVS_Inflating number @膨胀中
---@field EPVS_Expanded number @膨胀状态
---@field EPVS_DeflatingAndBoost number @泄气第一阶段（加速）
---@field EPVS_DeflatingAndFlyAway number @泄气第二阶段（载具泄气飞走）
---@field EPVS_EndDeflating number @泄气第三阶段（人物被吐出来）
---@field EPVS_Max number
ESTExtraPenguinVehicleState = {}


---@class FPenguinVehicleStateWrapper
---@field State ESTExtraPenguinVehicleState
---@field InStateTime number
FPenguinVehicleStateWrapper = {}


---@class FPenguinVehicleShapeConfig
---@field ShapeIndex number
---@field OriginTransform FTransform
FPenguinVehicleShapeConfig = {}


---@class FPenguinVehicleShieldUpdate : ULuaMulticastDelegate
FPenguinVehicleShieldUpdate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ShieldHP: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPenguinVehicleShieldUpdate:Add(Callback, Obj) end

---触发 Lua 广播
---@param ShieldHP number
function FPenguinVehicleShieldUpdate:Broadcast(ShieldHP) end


---@class FPenguinVehicleStateUpdate : ULuaMulticastDelegate
FPenguinVehicleStateUpdate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, State: ESTExtraPenguinVehicleState) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPenguinVehicleStateUpdate:Add(Callback, Obj) end

---触发 Lua 广播
---@param State ESTExtraPenguinVehicleState
function FPenguinVehicleStateUpdate:Broadcast(State) end


---036主题载具 —— 企鹅载具
---@class ASTExtraPenguinVehicle: ASTExtraAircraftVehicleBase
---@field PenguinState FPenguinVehicleStateWrapper
---@field StateTime ULuaArrayHelper<number>
---@field InCurrentPenguinStateTimeStamp number
---@field OnPenguinVehicleStateUpdate FPenguinVehicleStateUpdate
---@field DeflatingTargetMeshScale number
---@field ScaleShapeConfigs ULuaArrayHelper<FPenguinVehicleShapeConfig>
---@field RawForwardInputWhenDeflating number
---@field CurrentMeshScale number
---@field LockInput boolean
---@field InflatCD number
---@field InInflatCDTimeStamp number
---@field CurrentInFlatCD number
---@field MarkToInCD boolean
---@field PowerScaleWhenExpanded number
---@field MaxShieldHP number
---@field ShieldRepairHP number
---@field ShieldRepairFuel number
---@field RepairInterval number
---@field PassengerHealHP number
---@field PassengerHealInterval number
---@field HealPassengerTimer number
---@field InflatCheckBoxHalfExtend FVector
---@field InflatCheckBoxOffset FVector
---@field InflatBoxCheckInterval number
---@field InflatBoxCheckTimer number
---@field RepairTimer number
---@field CurrentShieldHP number
---@field OnPenguinVehicleShieldUpdate FPenguinVehicleShieldUpdate
---@field DefaultAvatarID number
---@field ExpandedAvatarID number
---@field PassengerNormalHoldWeaponType EVHSeatWeaponHoldType
---@field GunFireBanedChars ULuaArrayHelper<ASTExtraPlayerCharacter>
---@field GZJMeshIndex number
---@field GZJMeshList ULuaArrayHelper<UStaticMesh>
---@field ServerAuthorizeSpeed FVector2D @速度超过多少之后切换至服务器主控(km/h)
---@field IDIP_Penguin_ExpandTime number
---@field IDIP_Penguin_ForwardAcceleration number
---@field IDIP_Penguin_RotationTorqueValue number
local ASTExtraPenguinVehicle = {}

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param bSuccess boolean
function ASTExtraPenguinVehicle:HandleOnServerEnterVehicle(Character, SeatType, bSuccess) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param bSuccess boolean
function ASTExtraPenguinVehicle:HandleOnServerExitVehicle(Character, SeatType, bSuccess) end

function ASTExtraPenguinVehicle:ReqPenguinVehicleChangeState() end

---@param bSuccess boolean
function ASTExtraPenguinVehicle:AfterReqPenguinVehicleChangeState(bSuccess) end

function ASTExtraPenguinVehicle:OnRep_PenguinState() end

---@param NewPenguinState ESTExtraPenguinVehicleState
function ASTExtraPenguinVehicle:SetPenguinState(NewPenguinState) end

function ASTExtraPenguinVehicle:BPOnRep_PenguinState() end

---@param DeltaSeconds number
function ASTExtraPenguinVehicle:UpdatePenguinStateTime(DeltaSeconds) end

---@param DeltaSeconds number
function ASTExtraPenguinVehicle:TickUpdatePenguinState(DeltaSeconds) end

---@param State ESTExtraPenguinVehicleState
---@return number
function ASTExtraPenguinVehicle:GetPenguinStateTime(State) end

---@return number
function ASTExtraPenguinVehicle:GetCurrentBeInPenguinStateTime() end

---@return boolean
function ASTExtraPenguinVehicle:IsInExpandedState() end

---@return boolean
function ASTExtraPenguinVehicle:IsInHealingState() end

---@param DeltaSeconds number
function ASTExtraPenguinVehicle:UpdatePenguinMeshScale(DeltaSeconds) end

---@param DeltaSeconds number
function ASTExtraPenguinVehicle:UpdatePenguinShapeScale(DeltaSeconds) end

function ASTExtraPenguinVehicle:OnRep_LockInput() end

---@param NewLockInput boolean
function ASTExtraPenguinVehicle:SetLockInput(NewLockInput) end

---@param InTimeStamp number
---@param ResetCD boolean
function ASTExtraPenguinVehicle:SetInflatCDTimeStamp(InTimeStamp, ResetCD) end

---@param InCD number
---@param ResetCD boolean
function ASTExtraPenguinVehicle:SetInflatCD(InCD, ResetCD) end

---@return number
function ASTExtraPenguinVehicle:GetCurInflatCD() end

---@param ResetCD boolean
---@return number
function ASTExtraPenguinVehicle:RefreshCurInflatCD(ResetCD) end

---@param InCD number
function ASTExtraPenguinVehicle:SetCurrentInFlatCD(InCD) end

---@param NewMaxShieldHP number
function ASTExtraPenguinVehicle:SetMaxShieldHP(NewMaxShieldHP) end

function ASTExtraPenguinVehicle:DoRepair() end

function ASTExtraPenguinVehicle:HealPassengers() end

---@return boolean
function ASTExtraPenguinVehicle:CheckShouldPlayInflatAnim() end

---@param NewShieldHP number
function ASTExtraPenguinVehicle:SetCurrentShieldHP(NewShieldHP) end

function ASTExtraPenguinVehicle:OnRep_CurrentShieldHP() end

function ASTExtraPenguinVehicle:UpdatePassengerLeanOutState() end

function ASTExtraPenguinVehicle:OnRep_GZJMeshIndex() end

function ASTExtraPenguinVehicle:BPOnRep_GZJMeshIndex() end

---@return number
function ASTExtraPenguinVehicle:GetRealForwardSpeed() end

function ASTExtraPenguinVehicle:OnRep_IDIP_Penguin_ExpandTime() end

---@param NewExpandTime number
function ASTExtraPenguinVehicle:SetIDIP_Penguin_ExpandTime(NewExpandTime) end

function ASTExtraPenguinVehicle:OnRep_IDIP_Penguin_ForwardAcceleration() end

---@param NewForwardAcceleration number
function ASTExtraPenguinVehicle:SetIDIP_Penguin_ForwardAcceleration(NewForwardAcceleration) end

function ASTExtraPenguinVehicle:OnRep_IDIP_Penguin_RotationTorqueValue() end

---@param NewRotationTorqueValue number
function ASTExtraPenguinVehicle:SetIDIP_Penguin_RotationTorqueValue(NewRotationTorqueValue) end
