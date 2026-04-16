---@meta

---@class EInspectedOperation
---@field EIO_None number
---@field EIO_PoseSwitch number
---@field EIO_Climb number @姿态切换
---@field EIO_SwitchWeapon number @攀爬
---@field EIO_OpenDoor number @武器切换
---@field EIO_Rescue number @开门
---@field EIO_Picth number @救援
---@field EIO_PickItem number @探头
---@field EIO_ThrowItem number @拾取物品
---@field EIO_UseItem number @丢弃物品
---@field EIO_GrenadeSwitch number @使用物体
---@field EIO_GrenadeThrow number @换手雷
---@field EIO_MeleeAttack number @扔手雷
---@field EIO_EnterVehicle number @拳击
---@field EIO_ExitVehicle number @上车
---@field EIO_VehiclePicth number @下车
---@field EIO_VehicleChangeSeat number @载具探头
EInspectedOperation = {}


---@class ESuperPeopleSkillType
---@field ESPST_None number
---@field ESPST_Buff number
---@field ESPST_Throw number
---@field ESPST_Shoot number
---@field ESPST_Build number
ESuperPeopleSkillType = {}


---@class ESuperPeopleSkillActionType
---@field ESPSAT_None number
---@field ESPSAT_Immediately number
---@field ESPSAT_Hold number
---@field ESPSAT_Exec number
---@field ESPSAT_Cancel number
ESuperPeopleSkillActionType = {}


---@class EAIActionSkillTargetType
---@field None number
---@field Direction number
---@field Actor number
---@field Player number
---@field Position number
EAIActionSkillTargetType = {}


---@class EAIActionSkillActionType
---@field None number
---@field Active number
---@field Next number
---@field Cancel number
EAIActionSkillActionType = {}


---@class UAIActionExecuteComponent: UActorComponent
---@field SearchPickupItemRadius number
---@field SearchPickupItemMaxBox number
---@field SearchPickupItemMaxItems number
---@field SearchDoorSwitchRadius number
---@field StandPitchRange FVector2D
---@field CrouchPitchRange FVector2D
---@field PronePitchRange FVector2D
---@field FreeFallPitchRange FVector2D
---@field bUpdatePitchAfterSwitchPose boolean
---@field SearchUseVehicleRadius number
---@field DriveVehicleStuckSampleInterval number
---@field DriveVehicleStuckSampleCount number
---@field DriveVehicleStuckCheckDistance number
---@field DriveVehicleHitTriggerInterval number
---@field DriveVehicleFreqHitStatInterval number
---@field DriveVehicleHitStatTimes number
local UAIActionExecuteComponent = {}

---@param Forward number
---@param Right number
---@param Up number
---@param SwimUpRate number
---@param bSprint boolean
---@param bQuietStep boolean
function UAIActionExecuteComponent:StartMove(Forward, Right, Up, SwimUpRate, bSprint, bQuietStep) end

function UAIActionExecuteComponent:StopMove() end

---@param bSprint boolean
function UAIActionExecuteComponent:Sprint(bSprint) end

---@param InYaw number
---@param InPitch number
---@param InRoll number
function UAIActionExecuteComponent:SetFocus(InYaw, InPitch, InRoll) end

---@param InPoseState number
function UAIActionExecuteComponent:SwitchPoseState(InPoseState) end

function UAIActionExecuteComponent:Jump() end

function UAIActionExecuteComponent:JumpWall() end

function UAIActionExecuteComponent:StartFire() end

function UAIActionExecuteComponent:StopFire() end

---@param bAim boolean
function UAIActionExecuteComponent:Aim(bAim) end

---@param WeaponSlot number
function UAIActionExecuteComponent:SwitchWeapon(WeaponSlot) end

---@param ShootType number
function UAIActionExecuteComponent:SetWeaponShootType(ShootType) end

function UAIActionExecuteComponent:ReloadWeapon() end

---@param AmmoID number
function UAIActionExecuteComponent:SwitchAmmo(AmmoID) end

---@param ItemID number
---@param UID number
---@param bUseEscapePickup boolean
---@param Count number
function UAIActionExecuteComponent:PickupItem(ItemID, UID, bUseEscapePickup, Count) end

---@param ItemID number
---@param WeaponSlot number
function UAIActionExecuteComponent:UseItem(ItemID, WeaponSlot) end

---@param ItemID number
---@param Count number
---@param InstanceID number
function UAIActionExecuteComponent:DropItem(ItemID, Count, InstanceID) end

---@param ItemID number
function UAIActionExecuteComponent:HoldThrownItem(ItemID) end

function UAIActionExecuteComponent:CancelThrow() end

---@param ThrowType number
---@param bAim boolean
function UAIActionExecuteComponent:ThrowProjectile(ThrowType, bAim) end

---@param PlayerKey number
function UAIActionExecuteComponent:RescueOther(PlayerKey) end

function UAIActionExecuteComponent:CancelRescue() end

---@param bLeft boolean
---@param bButtonDown boolean
function UAIActionExecuteComponent:SetPeekState(bLeft, bButtonDown) end

---@param bOpen boolean
function UAIActionExecuteComponent:DoorSwitch(bOpen) end

---@param bOn boolean
function UAIActionExecuteComponent:MeleeAttack(bOn) end

---@param VehicleID number
---@param bGetOn boolean
---@param bDriver boolean
function UAIActionExecuteComponent:UseVehicle(VehicleID, bGetOn, bDriver) end

---@param VehicleID number
---@param GasOn number
---@param Turn number
---@param Up number
---@param bBrake boolean
---@param bBoosting boolean
function UAIActionExecuteComponent:VehicleMove(VehicleID, GasOn, Turn, Up, bBrake, bBoosting) end

---@param bOn boolean
function UAIActionExecuteComponent:VehicleProbe(bOn) end

---@param SeatIndex number
function UAIActionExecuteComponent:VehicleChangeSeat(SeatIndex) end

---@param bHornOn boolean
function UAIActionExecuteComponent:VehicleUseHorn(bHornOn) end

---@param MarkPlayerID number
---@param MarkItemID number
---@param MarkVehicleID number
---@param X number
---@param Y number
---@param Z number
function UAIActionExecuteComponent:Mark(MarkPlayerID, MarkItemID, MarkVehicleID, X, Y, Z) end

function UAIActionExecuteComponent:DropPlane() end

---@param X number
---@param Y number
---@param Z number
function UAIActionExecuteComponent:FlightMark(X, Y, Z) end

function UAIActionExecuteComponent:OpenParachute() end

---@param Forward number
---@param Right number
function UAIActionExecuteComponent:ParachuteStartMove(Forward, Right) end

function UAIActionExecuteComponent:ParachuteStopMove() end

---@param Leader number
function UAIActionExecuteComponent:ParachuteFollow(Leader) end

---@param Follower number
function UAIActionExecuteComponent:ParachuteInvite(Follower) end

---@param Leader number
function UAIActionExecuteComponent:ParachuteTransfer(Leader) end

function UAIActionExecuteComponent:ParachuteFollowCancel() end

---@param InRotYaw number
---@param InRotPitch number
---@param InRotRoll number
---@param bOn boolean
function UAIActionExecuteComponent:FreeCamera(InRotYaw, InRotPitch, InRotRoll, bOn) end

---@param Type number
---@param InteractableID number
---@param ParamInts ULuaArrayHelper<number>
---@param ParamFloats ULuaArrayHelper<number>
---@param ParamStrings ULuaArrayHelper<string>
---@param ParamVectors ULuaArrayHelper<FVector>
function UAIActionExecuteComponent:DoInteract(Type, InteractableID, ParamInts, ParamFloats, ParamStrings, ParamVectors) end

---@param EmoteID number
---@param Type number
---@param TargetPlayerKey number
---@param bOpenCost boolean
function UAIActionExecuteComponent:DoEmote(EmoteID, Type, TargetPlayerKey, bOpenCost) end

---@param EnemyObjectID number
function UAIActionExecuteComponent:DoBreakFree(EnemyObjectID) end

---@param EnemyObjectID number
function UAIActionExecuteComponent:DoAssassinate(EnemyObjectID) end

---@param EmoteID number
function UAIActionExecuteComponent:CancelEmote(EmoteID) end

function UAIActionExecuteComponent:UseCable() end

function UAIActionExecuteComponent:OpenShrines() end

---@param Msg string
---@param bSuccess boolean
---@param OpType EInspectedOperation
function UAIActionExecuteComponent:LogAndReport(Msg, bSuccess, OpType) end

function UAIActionExecuteComponent:StartStepMute() end

function UAIActionExecuteComponent:EndStepMute() end

function UAIActionExecuteComponent:StartPlantBlastingBomb() end

function UAIActionExecuteComponent:EndPlantBlastingBomb() end

---@param SlotTag string
---@param ActionType number
---@param TargetType number
---@param TargetID number
---@param TargetDir FVector
---@param TargetPos FVector
function UAIActionExecuteComponent:TriggerSkillBySlot(SlotTag, ActionType, TargetType, TargetID, TargetDir, TargetPos) end

---@param SkillUid number
---@param ActionType number
function UAIActionExecuteComponent:SuperPeopleTriggerSkill(SkillUid, ActionType) end

---@param BuildId number
---@param InstanceId number
function UAIActionExecuteComponent:SuperPeopleTriggerBuildingSkill(BuildId, InstanceId) end

---@param BehaviorStr string
function UAIActionExecuteComponent:UpdateBehaviorStr(BehaviorStr) end
