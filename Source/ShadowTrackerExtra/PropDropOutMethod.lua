---@meta

---@class IPropDropOutMethodInterface
IPropDropOutMethodInterface = {}

---@param PropData ULuaArrayHelper<FDropPropData>
---@param KillerPawn ACharacter
---@param DeadPawn AActor
---@param BoxName string
function IPropDropOutMethodInterface:DropOutProps(PropData, KillerPawn, DeadPawn, BoxName) end

---@param DefineID FItemDefineID
---@param Count number
---@param Backpack UBackpackComponent
function IPropDropOutMethodInterface:DropToTarget(DefineID, Count, Backpack) end

---@param PropData ULuaArrayHelper<FPickUpItemData>
---@param DeadPawn ACharacter
---@param BoxName string
function IPropDropOutMethodInterface:DropToTombBox(PropData, DeadPawn, BoxName) end

---@param PropData ULuaArrayHelper<FDropPropData>
---@param TargetActor AActor
---@param BoxName string
---@param BoxType EPickUpBoxType
---@param SpawnLoc FVector
---@param ShouldTreasureBoxHidden boolean
---@param InLifeTime number
---@param bAddToNewRegion boolean
---@return boolean
function IPropDropOutMethodInterface:DropToTreasureBox(PropData, TargetActor, BoxName, BoxType, SpawnLoc, ShouldTreasureBoxHidden, InLifeTime, bAddToNewRegion) end

---@param PropDatas ULuaArrayHelper<FPickUpItemData>
---@param PawnTrans FTransform
---@param IgnoreActor AActor
---@param KillerActor AActor
function IPropDropOutMethodInterface:NineGridDrop(PropDatas, PawnTrans, IgnoreActor, KillerActor) end

---@param PropDatas ULuaArrayHelper<FPickUpItemData>
---@param PawnTrans FTransform
---@param IgnorePawn AActor
---@param KillerActor AActor
function IPropDropOutMethodInterface:RandomCircleDrop(PropDatas, PawnTrans, IgnorePawn, KillerActor) end

---@param PropData FPickUpItemData
---@param WrapperTrans FTransform
---@param CenterPos FVector
---@param ShowGroundEffect boolean
---@return AActor
function IPropDropOutMethodInterface:DropToGround(PropData, WrapperTrans, CenterPos, ShowGroundEffect) end
