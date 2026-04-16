---@meta

---@class EVehicleCraftParachuteState
---@field EVehicleCraft_None number
---@field EVehicleCraft_FreeFall number
---@field EVehicleCraft_Opening number
---@field EVehicleCraft_Landed number
EVehicleCraftParachuteState = {}


---@class AVehicleCraftCharacter: APawn, ISTExtraInputInterface, IParachuteInterface, IPlayerLogicInterface
---@field Passengers ULuaArrayHelper<ASTExtraBaseCharacter>
---@field ReplicatedParchuteState FReplicatedParachuteState
---@field ReplicatedParachuteMove FReplicatedParachuteMove
---@field VehicleCraftParachuteState EVehicleCraftParachuteState
---@field VehicleTemplate ASTExtraVehicleBase
---@field VehicleAttachSocket string
---@field RelativeTransformToAttach FTransform
---@field VehicleInitialHP number
---@field bCanInteractInitially boolean
---@field bInvincibleInitially boolean
---@field DisablePawnStatesInVehicle ULuaArrayHelper<EPawnState>
---@field UnPossessCameraBlendTime number
---@field bFreeFallAcceptInput boolean
---@field PlayerSubAnimInstanceClass UAnimInstance
---@field CanOpenParachuteHeight number
---@field ForceOpenParachuteHeight number
---@field CloseParachuteHeight number
---@field NearClipPlane number
local AVehicleCraftCharacter = {}

---@param Vehicle ASTExtraVehicleBase
function AVehicleCraftCharacter:SetCachedVehicle(Vehicle) end

---@return number
function AVehicleCraftCharacter:GetCurHeight() end

---@param CheckingHeight number
---@return boolean
function AVehicleCraftCharacter:CheckingHeight(CheckingHeight) end

---@param bCanEnter boolean
---@param bCanExit boolean
---@param Invincible boolean
---@param bEnablePhys boolean
function AVehicleCraftCharacter:SetVehicleInteractEnableAndInvincible(bCanEnter, bCanExit, Invincible, bEnablePhys) end

---@param rate number
function AVehicleCraftCharacter:MoveForward(rate) end

---@param rate number
function AVehicleCraftCharacter:MoveRight(rate) end

function AVehicleCraftCharacter:OnRep_Passengers() end

---@param InThrottleInput number
---@param InSteeringInput number
---@param State number
---@param ControlRotation FRotator
function AVehicleCraftCharacter:ServerUpdateState(InThrottleInput, InSteeringInput, State, ControlRotation) end

---@param InThrottleInput FFloat_NetQuantize8
---@param InSteeringInput FFloat_NetQuantize8
---@param State number
---@param ControlRotation FRotator
function AVehicleCraftCharacter:ServerUpdateState_New(InThrottleInput, InSteeringInput, State, ControlRotation) end

---@param Timestamp number
---@param Position FVector_NetQuantize100
---@param Rotation FRotator
---@param Velocity FVector_NetQuantize100
function AVehicleCraftCharacter:SendClientMoveToServerUnreliaby(Timestamp, Position, Rotation, Velocity) end

---@param Timestamp number
---@param Position FVector
---@param Rotation FRotator
---@param Velocity FVector
function AVehicleCraftCharacter:SendClientMoveToServerReliaby(Timestamp, Position, Rotation, Velocity) end

---@param Timestamp number
---@param Position FVector
---@param Rotation FRotator
---@param Velocity FVector
function AVehicleCraftCharacter:SendServerMoveToClientUnreliaby(Timestamp, Position, Rotation, Velocity) end

---@param Timestamp number
---@param Position FVector
---@param Rotation FRotator
---@param Velocity FVector
function AVehicleCraftCharacter:SendServerMoveToClientReliaby(Timestamp, Position, Rotation, Velocity) end

---@param bCanEnter boolean
---@param Invincible boolean
function AVehicleCraftCharacter:OnVehicleEnterEnableAndInvincibleChanged(bCanEnter, Invincible) end

---@param PrevCachedVehicle ASTExtraVehicleBase
function AVehicleCraftCharacter:Onrep_CachedVehicle(PrevCachedVehicle) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function AVehicleCraftCharacter:OnVehicleEnterServerDelegate(Character, SeatType, IsSucc) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function AVehicleCraftCharacter:OnVehicleExitServerDelegate(Character, SeatType, IsSucc) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function AVehicleCraftCharacter:OnVehicleEnterClientDelegate(Character, SeatType, IsSucc) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function AVehicleCraftCharacter:OnVehicleExitClientDelegate(Character, SeatType, IsSucc) end

---@param PreState EParachuteState
---@param CurState EParachuteState
function AVehicleCraftCharacter:OnParachuteStateChanged(PreState, CurState) end

---@param Player ASTExtraPlayerCharacter
function AVehicleCraftCharacter:OnPlayerExitParachute(Player) end

function AVehicleCraftCharacter:OnRep_ReplicatedParachuteState() end

function AVehicleCraftCharacter:OnRep_ReplicatedParachuteMove() end

function AVehicleCraftCharacter:OnRep_ParachuteState() end
