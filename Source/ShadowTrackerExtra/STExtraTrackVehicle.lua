---@meta

---@class FOnBrakeStateChange : ULuaMulticastDelegate
FOnBrakeStateChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, IsBrake: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnBrakeStateChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param IsBrake boolean
function FOnBrakeStateChange:Broadcast(IsBrake) end


---@class FOnAssistantStateChange : ULuaMulticastDelegate
FOnAssistantStateChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, IsAssistantState: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAssistantStateChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param IsAssistantState boolean
function FOnAssistantStateChange:Broadcast(IsAssistantState) end


---@class FOnFlipTrackVehicleDirection : ULuaSingleDelegate
FOnFlipTrackVehicleDirection = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnFlipTrackVehicleDirection:Bind(Callback, Obj) end

---执行委托
function FOnFlipTrackVehicleDirection:Execute() end


---@class ASTExtraTrackVehicle: ASTExtraVehicleBase
---@field BrakeMontageMsg string
---@field AssistantThrottleInput number
---@field AssistantExtraSpeed number
---@field bClientSideCameraUpdates boolean
---@field bIsBrake boolean
---@field bInAssistantState boolean
---@field CurrentDir number
---@field OnBrakeStateChange FOnBrakeStateChange
---@field OnAssistantStateChange FOnAssistantStateChange
---@field OnFlipTrackVehicleDirection FOnFlipTrackVehicleDirection
---@field DirAdjust number
---@field MaxDirCameraAdjustTime number
---@field CameraAdjustTolerate number
---@field CurCameraAdjustTime number
---@field NormalForwardCameraYaw number
---@field ReverseForwardCameraYaw number
---@field bNeedTickCameraYaw boolean
---@field SprintSettings FBicycleSprintSettings
---@field bUseSprint boolean
---@field ServerCalcDriverInputWeight number
---@field bEnableAutonomousSimulate boolean
---@field bUseLocalSprintInput boolean
---@field ZeroInputRate FVehicleInputRate
---@field PassengerZeroInputRate FVehicleInputRate
---@field SprintData FBicycleSprintData
---@field LocalSprintInput number
---@field DriverSprintValue number
---@field TargetDriverSprintValue number
---@field CurPassengerInputValue number
---@field PassengerSprintValue number
---@field bStopMoving boolean
---@field TargetPassengerSprintValue number
---@field bEnableServerAuth boolean
---@field BrakeEffect string
---@field PlayBrakeThreshold number
---@field BrakeReverseYaw number
---@field PlayEngineAudioVelocityThreshold number
---@field BrakeAKEventID number
---@field AssistantSeatIndex number
---@field bUseMovementSpeed boolean
---@field bSimulateClientUseSmoothVel boolean
---@field ForceCorrectLocDiffThreshold number
---@field bUseReplicatedLoc number
---@field bUseReplicatedRotDiffThreshold number
---@field bUpdateSmoothCompTrans boolean
local ASTExtraTrackVehicle = {}

function ASTExtraTrackVehicle:FlipTrackVehicleDirection() end

function ASTExtraTrackVehicle:RPCServerFlipTrackVehicleDirection() end

---@param NewValue number
function ASTExtraTrackVehicle:SetDriveCurrentDir(NewValue) end

---@return boolean
function ASTExtraTrackVehicle:IsInBrake() end

---@param rate number
function ASTExtraTrackVehicle:SetHandBrake(rate) end

---@param bInIsBrake boolean
function ASTExtraTrackVehicle:SetBrake(bInIsBrake) end

---@param bInBrake boolean
function ASTExtraTrackVehicle:RPCServerSetBrake(bInBrake) end

---@param bEnter boolean
function ASTExtraTrackVehicle:ChangeAssistantState(bEnter) end

---@return boolean
function ASTExtraTrackVehicle:GetAssistantState() end

---@return number
function ASTExtraTrackVehicle:GetDriverThrottleInput() end

---@return number
function ASTExtraTrackVehicle:GetCurThrottleInput() end

---@return number
function ASTExtraTrackVehicle:GetAssistantThrottleInput() end

function ASTExtraTrackVehicle:BroadcastClientBrakeUp() end

---@param EventMsg string
function ASTExtraTrackVehicle:BroadcastVehicleAnimEvent(EventMsg) end

---@return number
function ASTExtraTrackVehicle:GetForwardSpeed() end

---@return number
function ASTExtraTrackVehicle:GetForwardSpeedNativeEvent() end

function ASTExtraTrackVehicle:OnRep_IsBrake() end

function ASTExtraTrackVehicle:OnRep_InAssistantState() end

function ASTExtraTrackVehicle:OnRep_CurrentDir() end

function ASTExtraTrackVehicle:GetAndSetPath() end

---@param Roll number
function ASTExtraTrackVehicle:SetCameraRoll(Roll) end

---@param DeltaTime number
function ASTExtraTrackVehicle:TickCameraYaw(DeltaTime) end

---@param NewValue number
function ASTExtraTrackVehicle:UpdateDriverSprintValue(NewValue) end

function ASTExtraTrackVehicle:OnRep_DriverSprintValue() end

---@param NewValue number
function ASTExtraTrackVehicle:UpdatePassengerSprintValue(NewValue) end

function ASTExtraTrackVehicle:OnRep_PassengerSprintValue() end

function ASTExtraTrackVehicle:OnRep_StopMoving() end

---@param DeltaTime number
---@param SprintInput number
function ASTExtraTrackVehicle:ProcessSprint(DeltaTime, SprintInput) end

function ASTExtraTrackVehicle:AddSprintMash() end

function ASTExtraTrackVehicle:ResetSprint() end

---@param DeltaSeconds number
function ASTExtraTrackVehicle:DecaySprint(DeltaSeconds) end

---@return number
function ASTExtraTrackVehicle:GetSprintBufferMinThrottle() end

---@return number
function ASTExtraTrackVehicle:GetSprintThrottleMax() end

---@param SprintInput number
---@return number
function ASTExtraTrackVehicle:GetCurSprintThrottle(SprintInput) end

---@param DriverInput number
function ASTExtraTrackVehicle:SyncDriverInputToServer(DriverInput) end

---@param PassengerSeatInput number
function ASTExtraTrackVehicle:SyncBoostSeatInputToServer(PassengerSeatInput) end

---@param DelatTime number
function ASTExtraTrackVehicle:ProcessInputDampingToZero(DelatTime) end

function ASTExtraTrackVehicle:PlayBrakeEffect() end

---@return boolean
function ASTExtraTrackVehicle:CanPlayAudioNativeEvent() end

---@param RepLoc FVector
---@param RepRot FRotator
function ASTExtraTrackVehicle:PostNetReceiveLocationAndRotationNativeEvent(RepLoc, RepRot) end
