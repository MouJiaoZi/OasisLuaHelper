---@meta

---@class UPlayerActionExecuteComponent: UActorComponent
---@field StandPitchRange FVector2D
---@field CrouchPitchRange FVector2D
---@field PronePitchRange FVector2D
---@field SearchUseVehicleRadius number
---@field SearchPickupItemRadius number
---@field SearchPickupItemMaxBox number
---@field SearchPickupItemMaxItems number
---@field SearchDoorSwitchRadius number
---@field bUpdatePitchAfterSwitchPose boolean
local UPlayerActionExecuteComponent = {}

---@param bOpen boolean
function UPlayerActionExecuteComponent:DoorSwitch(bOpen) end

---@param WeaponSlot number
function UPlayerActionExecuteComponent:SwitchWeapon(WeaponSlot) end

---@param CurDoor APUBGDoor
---@return boolean
function UPlayerActionExecuteComponent:OpenDoor(CurDoor) end

---@param CurDoor APUBGDoor
---@return boolean
function UPlayerActionExecuteComponent:CloseDoor(CurDoor) end

---@param InYaw number
---@param InPitch number
---@param InRoll number
function UPlayerActionExecuteComponent:SetFocus(InYaw, InPitch, InRoll) end

---@param VehicleID number
---@param bGetOn boolean
---@param bDriver boolean
function UPlayerActionExecuteComponent:UseVehicle(VehicleID, bGetOn, bDriver) end

---@param SeatIndex number
function UPlayerActionExecuteComponent:VehicleChangeSeat(SeatIndex) end

---@param MarkPlayerID number
---@param MarkItemID number
---@param MarkVehicleID number
---@param X number
---@param Y number
---@param Z number
function UPlayerActionExecuteComponent:Mark(MarkPlayerID, MarkItemID, MarkVehicleID, X, Y, Z) end

---@param Forward number
---@param Right number
---@param Up number
---@param SwimUpRate number
---@param bSprint boolean
---@param bQuietStep boolean
function UPlayerActionExecuteComponent:StartMove(Forward, Right, Up, SwimUpRate, bSprint, bQuietStep) end

function UPlayerActionExecuteComponent:StopMove() end

function UPlayerActionExecuteComponent:StartStepMute() end

function UPlayerActionExecuteComponent:EndStepMute() end

---@param PlayerKey number
function UPlayerActionExecuteComponent:RescueOther(PlayerKey) end

function UPlayerActionExecuteComponent:CancelRescue() end

---@param ItemID number
---@param UID number
function UPlayerActionExecuteComponent:PickupItem(ItemID, UID) end

---@param ItemID number
---@param WeaponSlot number
function UPlayerActionExecuteComponent:UseItem(ItemID, WeaponSlot) end

---@param ItemID number
---@param Count number
function UPlayerActionExecuteComponent:DropItem(ItemID, Count) end

---@param InPoseState number
function UPlayerActionExecuteComponent:SwitchPoseState(InPoseState) end

function UPlayerActionExecuteComponent:Jump() end

function UPlayerActionExecuteComponent:JumpWall() end

---@param EmoteID number
---@param bOpenCost boolean
function UPlayerActionExecuteComponent:DoEmote(EmoteID, bOpenCost) end
