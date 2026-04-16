---@meta

---@class AEmergencyCallActor: AActivityBaseActor, IUAESkillInterface
---@field InteractingCharacters ULuaArrayHelper<ASTExtraBaseCharacter>
---@field DisablePawnStates ULuaArrayHelper<EPawnState>
---@field ConnectPlayerRange number
---@field EmergencyCallBagID number
---@field CheckCollisionRadius number
---@field CheckCollisionDelayTime number
---@field ForceGCTime number
---@field bHadGC boolean
---@field DynamicState FGameplayTag
---@field NewLocation FVector
---@field BuildingStateName string
---@field FirstStageStateName string
---@field SecondStateName string
---@field IdleStateName string
---@field FlyingStateName string
---@field FirstStateUpdateTime number
---@field FlyingStateUpdateTime number
---@field BalloonHeightCurveEndTime number
---@field RopeTopBones ULuaArrayHelper<string>
---@field RopeBottomBones ULuaArrayHelper<string>
---@field BagRingsName ULuaArrayHelper<string>
---@field RopeStartSocket string
---@field RopeEndSocket string
---@field RopeLengthPerPiece number
---@field PlaneClass APawn
---@field ExtensionCordLength number
---@field CircleModeJumpRadiusPercent number
---@field PlaneSpeed number
---@field CanOpenParachuteHeight number
---@field ForceOpenParachuteHeight number
---@field CloseParachuteHeight number
---@field SplineMeshComponents ULuaArrayHelper<USplineMeshComponent>
local AEmergencyCallActor = {}

---@param DeltaTime number
function AEmergencyCallActor:UpdateRope(DeltaTime) end

function AEmergencyCallActor:DestroyRope() end

---@param DeltaTime number
function AEmergencyCallActor:UpdateFunction(DeltaTime) end

---@param DeltaTime number
---@param bForceFinished boolean
function AEmergencyCallActor:UpdateBalloonLoc(DeltaTime, bForceFinished) end

function AEmergencyCallActor:CheckAirplaneLoc() end

function AEmergencyCallActor:UpdateSubBag() end

---@param DeltaTime number
function AEmergencyCallActor:UpdateFlyingOffset(DeltaTime) end

---@param CurStateName string
function AEmergencyCallActor:UpdateBoneVisible(CurStateName) end

---@param DeltaTime number
function AEmergencyCallActor:CheckCollision(DeltaTime) end

---@param AirPlaneHeight number
function AEmergencyCallActor:CallAirPlane(AirPlaneHeight) end

---@param ConnectedCharacter ASTExtraBaseCharacter
function AEmergencyCallActor:AddConnectedCharacter(ConnectedCharacter) end

---@param ConnectedCharacter ASTExtraBaseCharacter
function AEmergencyCallActor:RemoveConnectedCharacter(ConnectedCharacter) end

---@param ConnectedCharacter ASTExtraBaseCharacter
---@param bAdd boolean
function AEmergencyCallActor:UpdateEmergencyCallBag(ConnectedCharacter, bAdd) end

---@param TargetCharcter ASTExtraBaseCharacter
---@return boolean
function AEmergencyCallActor:WheatherCancelConnect(TargetCharcter) end

---@param bNeedHidden boolean
---@param Index number
---@param bApplyAll boolean
function AEmergencyCallActor:HideSubBag(bNeedHidden, Index, bApplyAll) end

function AEmergencyCallActor:BreakAwayAll() end

---@return string
function AEmergencyCallActor:GetAirPlaneRoute() end

function AEmergencyCallActor:OnRep_InteractingCharacters() end

function AEmergencyCallActor:OnRep_NewLocation() end
