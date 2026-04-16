---@meta

---@class FDrawCapsuleRepData
---@field Center FVector
---@field Rotation FRotator
---@field CapsuleRadius number
---@field CapsuleHeight number
FDrawCapsuleRepData = {}


---@class UPartHitComponentBase: UActorComponent, IObjectPoolInterface
local UPartHitComponentBase = {}


---@class UPartHitComponent: UPartHitComponentBase
---@field UpdateHitBoxDeltaTime number
---@field bActivePartHit boolean
---@field LastPartHitRefreshBoxCollisionFrameNum number
---@field bOptimizeBulletCache boolean
---@field bOptimizeBulletCache_Server boolean
---@field HitBoxs_Stand_Tran ULuaArrayHelper<FTransform>
---@field HitBoxs_Prone_Tran ULuaArrayHelper<FTransform>
---@field HitBoxs_Stand ULuaArrayHelper<UPrimitiveComponent>
---@field HitBoxs_Prone ULuaArrayHelper<UPrimitiveComponent>
---@field bEnableBoxEar boolean
---@field ClientHitPartJudgment EHitPartJugementType
---@field DSHitPartJudgment EHitPartJugementType
---@field bSwitchHitBoxByPose boolean
---@field HitBox_Stand_Tag string
---@field HitBox_Prone_Tag string
---@field Server_HitBox_Stand_HalfHeight number
---@field Server_HitBox_Stand_Radius number
---@field Server_HitBox_Crouch_HalfHeight number
---@field Server_HitBox_Crouch_Radius number
---@field Server_HitBox_Prone_HalfHeight number
---@field Server_HitBox_Prone_Radius number
---@field ProneBodyDef FBodyTypeDef
---@field StandBodyDef FBodyTypeDef
---@field CrouchBodyDef FBodyTypeDef
---@field DyingBodyDef FBodyTypeDef
---@field VechicleBodyDef FBodyTypeDef
---@field NewStandHitBodyBoxScale FVector
---@field NewProneHitBodyBoxScale FVector
---@field NewHitBodyPosMap ULuaMapHelper<string, EAvatarDamagePosition>
---@field PawnCollisionCountdown number
---@field IsRefreshPawnCollision boolean
---@field BoxCollisionCountdown number
---@field IsRefreshBoxCollision boolean
---@field DrawCapsuleInterval number
---@field DrawCapsuleColor FLinearColor
---@field bDisableDrawCapsuleDepthTest boolean
---@field DrawCapsuleThickness number
---@field DrawCapsuleRepData_Stand FDrawCapsuleRepData
---@field DrawCapsuleRepData_Prone FDrawCapsuleRepData
---@field CurDrawCapsuleInterval number
local UPartHitComponent = {}

function UPartHitComponent:OnRep_DrawCapsuleRepData_Stand() end

function UPartHitComponent:OnRep_DrawCapsuleRepData_Prone() end

---@param PoseState ESTEPoseState
function UPartHitComponent:InitBodyHitBox(PoseState) end

function UPartHitComponent:CloseBodyBulletCollision() end

---@param PoseState ESTEPoseState
function UPartHitComponent:UpdatePoseCollisionShapes(PoseState) end

---@param InHitPos FVector
---@param InImpactVec FVector
---@param InBoneName string
---@return EAvatarDamagePosition
function UPartHitComponent:GetHitBodyType(InHitPos, InImpactVec, InBoneName) end

---@param InHitPos FVector
---@return EAvatarDamagePosition
function UPartHitComponent:GetHitBodyTypeByHitPos(InHitPos) end

---@param InBoneName string
---@return EAvatarDamagePosition
function UPartHitComponent:GetHitBodyTypeByBoneName(InBoneName) end

---@param hitPos FVector
---@param Projvec FVector
---@param centerPos FVector
---@param bodyDef FBodyTypeDef
---@return EAvatarDamagePosition
function UPartHitComponent:CalcHitBodyType(hitPos, Projvec, centerPos, bodyDef) end

---@return EHitPartJugementType
function UPartHitComponent:GetCurHitPartJugementType() end

function UPartHitComponent:ResetData() end

---@param Countdown number
function UPartHitComponent:RefreshWorldBoxCollision(Countdown) end

---@param Countdown number
function UPartHitComponent:RefreshSelfBoxCollision(Countdown) end

---@param Countdown number
function UPartHitComponent:RefreshWorldPawnCollision(Countdown) end

---@param Type number
function UPartHitComponent:UpdateAllInstanceBodyTransform(Type) end
