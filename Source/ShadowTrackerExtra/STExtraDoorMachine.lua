---@meta

---@class ESTExtraDoorMachineState
---@field None number @None
---@field Charging number @待机
---@field Follow number @跟随
---@field Dash number @突进
ESTExtraDoorMachineState = {}


---@class ESTExtraDoorMachineCameraMode
---@field Shooting number @射击
---@field Driving number @驾驶
ESTExtraDoorMachineCameraMode = {}


---@class FSTExtraDoorMachineStateInfo
---@field State ESTExtraDoorMachineState @当前状态
---@field Time number @切状态DS时间
FSTExtraDoorMachineStateInfo = {}


---@class FSTExtraDoorMachineHitBoneDamgeInfo
---@field BoneStr string
---@field DamgeScale number
FSTExtraDoorMachineHitBoneDamgeInfo = {}


---@class FSTExtraDoorMachineTriggerBoxInfo
---@field BoxTransform FTransform
---@field BoxExtent FVector
FSTExtraDoorMachineTriggerBoxInfo = {}


---门框机器人载具 继承自多足载具基类
---@class ASTExtraDoorMachine: ASTExtraMyriapodVehicle
---@field bEnableBatteryLevel boolean
---@field MaxBatteryLevel number
---@field InitialBatteryLevel number
---@field FollowBatteryLevel number
---@field AutoEnterChargingBatteryLevel number
---@field DashBatteryLevel number
---@field BatteryConfigMap ULuaMapHelper<ESTExtraDoorMachineState, number>
---@field BatteryLevelUpdateDeltaTime number
---@field DelayStartCharge number
---@field AutoCancelFollowDistance number
---@field bEnableCrowd boolean
---@field bCheckFollowWithArea boolean
---@field AllowArea_Island ULuaArrayHelper<FSTExtraDoorMachineTriggerBoxInfo>
---@field AllowArea_Escape ULuaArrayHelper<FSTExtraDoorMachineTriggerBoxInfo>
---@field MaxDashTime number
---@field bSetControlRotationIfNotTouching boolean
---@field bCanVehicleInteract boolean
---@field bCanJump boolean
---@field ChargingTime number
---@field bEnableUpdateChargeState boolean
---@field bEnableShieldSweepCheck boolean
---@field ShieldCheckInternal number
---@field ShieldCheckBoxExtent FVector
---@field ShieldCheckStartBone string
---@field ShieldCheckEndBone string
---@field bShieldCheckDebug boolean
---@field bEnableUpdateCamera boolean
---@field ModifyCameraLengthSpeedThreshold number
---@field WalkCameraLength number
---@field RunCameraLength number
---@field CameraSwitchTime number
---@field MaxCameraLengthChangeTime number
---@field WalkSocketOffset FVector
---@field RunSocketOffset FVector
---@field InitChangeCameraLengthTime number
---@field InitCameraSwitchTimeScale number
---@field EnterVehicleCameraLength number
---@field EnterVehicleSocketOffset FVector
---@field ModifyCameraLengthSpeedThreshold_Driving number
---@field WalkCameraLength_Driving number
---@field RunCameraLength_Driving number
---@field CameraSwitchTime_Driving number
---@field MaxCameraLengthChangeTime_Driving number
---@field WalkSocketOffset_Driving FVector
---@field RunSocketOffset_Driving FVector
---@field InitChangeCameraLengthTimet_Driving number
---@field InitCameraSwitchTimeScalet_Driving number
---@field EnterVehicleCameraLengtht_Driving number
---@field EnterVehicleSocketOffset_Driving FVector
---@field bHandleHitBoneDamage boolean
---@field HitBoneDamgeInfos ULuaArrayHelper<FSTExtraDoorMachineHitBoneDamgeInfo>
---@field bUseJoyStick boolean
---@field bEnableWeaponMeshTickWhenNoPassenger boolean
---@field bForceUpdateVehViewRotation boolean
---@field StartChargeTime number
---@field bStartShieldSweepCheck boolean
---@field bForceSetMeshFlag boolean
---@field bShieldActive boolean
---@field BatteryLevel number
---@field StateInfo FSTExtraDoorMachineStateInfo
---@field CameraMode ESTExtraDoorMachineCameraMode
---@field BatteryLevelUpdateTime number
---@field OpenShieldCheckUpdateTime number
local ASTExtraDoorMachine = {}

---@return number
function ASTExtraDoorMachine:GetNowTime() end

function ASTExtraDoorMachine:ReceiveBatteryLevelUpdate() end

function ASTExtraDoorMachine:ReceiveOutOfDistance() end

function ASTExtraDoorMachine:ReceiveDashTimeExpired() end

---@param OldState ESTExtraDoorMachineState
function ASTExtraDoorMachine:OnRep_RobotState(OldState) end

function ASTExtraDoorMachine:OnRep_BatteryLevel() end

---@param OldStateInfo FSTExtraDoorMachineStateInfo
function ASTExtraDoorMachine:OnRep_StateInfo(OldStateInfo) end

---@param OldCameraMode ESTExtraDoorMachineCameraMode
function ASTExtraDoorMachine:OnRep_CameraMode(OldCameraMode) end

function ASTExtraDoorMachine:OnRep_bShieldActive() end

---@param Damage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
---@return boolean
function ASTExtraDoorMachine:ExtraShouldTakeDamage(Damage, DamageEvent, EventInstigator, DamageCauser) end

---@param NewController AController
function ASTExtraDoorMachine:CustomPossessedBy(NewController) end

---@param BoneNames ULuaArrayHelper<string>
---@param bVisiable boolean
---@param bEnableCollision boolean
function ASTExtraDoorMachine:SetBoneVisibilityAndCollision(BoneNames, bVisiable, bEnableCollision) end

---@param BoneNames ULuaArrayHelper<string>
---@param bEnableCollision boolean
function ASTExtraDoorMachine:SetBonesCollision(BoneNames, bEnableCollision) end

function ASTExtraDoorMachine:ReceiveOpenShieldBlocked() end

---@param LastChargeTime number
function ASTExtraDoorMachine:ReceiveChargeTimeChanged(LastChargeTime) end

---@param Player ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function ASTExtraDoorMachine:HandlePlayerExitVehicleOnServer(Player, SeatType, IsSucc) end

---@param Player ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function ASTExtraDoorMachine:HandlePlayerEnterVehicleOnServer(Player, SeatType, IsSucc) end

function ASTExtraDoorMachine:HandleVehicleExplosionOnServer() end

---@param PC AUAEPlayerController
function ASTExtraDoorMachine:RecoverClientStateNetLoss(PC) end

function ASTExtraDoorMachine:HandleCancelFollowOnServer() end

---@return FRotator
function ASTExtraDoorMachine:GetViewRotation() end

function ASTExtraDoorMachine:ForceServerSetControlRotation() end

function ASTExtraDoorMachine:ResetClientMovePredictionData() end

function ASTExtraDoorMachine:ForceUpdateCrowdAgentState() end

---@return boolean
function ASTExtraDoorMachine:CheckOwnerLocValid() end

---@return boolean
function ASTExtraDoorMachine:IsEacapeGameMode() end

---@param Position FVector
---@return boolean
function ASTExtraDoorMachine:CheckCharacterPositionAllowFollow(Position) end

function ASTExtraDoorMachine:ReceiveOwnerOutOfAllowFollowArea() end
