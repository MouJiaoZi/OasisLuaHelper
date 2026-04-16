---@meta

---@class FVehicleWarDogsActivatedContext
---@field WarDogActor AActor
---@field IsHidden boolean
FVehicleWarDogsActivatedContext = {}


---@class FVehicleWarDogsCollisionContext
---@field WarDogCollisionType ULuaMapHelper<UPrimitiveComponent, ECollisionEnabled>
FVehicleWarDogsCollisionContext = {}


---@class UVehicleWarDogsSkillHandle: UVehicleSeatOccupyingSkillHandle
---@field ValidWarDogLeanOutVehicleType ULuaArrayHelper<ESTExtraVehicleType>
---@field WardogEnterVehicleSocketOffset FVector
---@field WardogEnterVehicleSocketOffsetOverwrite ULuaMapHelper<ESTExtraVehicleType, FVector>
---@field WardogLeaveVehicleSocketOffset FVector
---@field WardogBackseatLeaveVehicleSocketOffset FVector
---@field WardogSidewayJumpoutOffset number
---@field ActivatedWarDogActors ULuaArrayHelper<FVehicleWarDogsActivatedContext>
---@field OldActivatedWarDogActors ULuaArrayHelper<FVehicleWarDogsActivatedContext>
---@field WarDogActorCollisionsBackup ULuaMapHelper<AActor, FVehicleWarDogsCollisionContext>
local UVehicleWarDogsSkillHandle = {}

---@param ItemHandle UBattleItemHandleBase
function UVehicleWarDogsSkillHandle:OnVehicleAvatarHandleEquipped(ItemHandle) end

function UVehicleWarDogsSkillHandle:OnRep_ActivatedWarDogActor() end

function UVehicleWarDogsSkillHandle:ClientDestroyCleanup() end

---@return boolean
function UVehicleWarDogsSkillHandle:CanWarDogLeanOut() end

---@param Skill FSeatOccupyingSkillMeta
---@param SeatIndex number
function UVehicleWarDogsSkillHandle:MoveWarDogToTargetSeat(Skill, SeatIndex) end

---@param Skill FSeatOccupyingSkillMeta
---@return number
function UVehicleWarDogsSkillHandle:ServerRequestWarDogEnterSeat(Skill) end

---@param Owner ASTExtraPlayerCharacter
---@param WarDog AActor
function UVehicleWarDogsSkillHandle:ServerRequestWarDogWantEnterSeat(Owner, WarDog) end

---@param Owner ASTExtraPlayerCharacter
---@param WarDog AActor
function UVehicleWarDogsSkillHandle:ServerRequestWarDogLeaveSeat(Owner, WarDog) end

---@param OldOwner ASTExtraPlayerCharacter
---@param NewOwner ASTExtraPlayerCharacter
---@param WarDog AActor
function UVehicleWarDogsSkillHandle:ServerRequestTransferWarDogOwnership(OldOwner, NewOwner, WarDog) end
