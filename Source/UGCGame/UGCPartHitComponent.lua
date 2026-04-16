---@meta

---@class FHitBoxData
---@field BodyTypeDef FBodyTypeDef
---@field HitBoxTag string
FHitBoxData = {}


---@class UUGCPartHitComponent: UPartHitComponentBase
---@field UpdateHitBoxDeltaTime number
---@field bActivePartHit boolean
---@field LastPartHitRefreshBoxCollisionFrameNum number
---@field HitBoxTagMapData ULuaMapHelper<ESTEPoseState, FHitBoxData>
---@field UseLessHitBoxData FHitBoxData
---@field HitBoxList ULuaArrayHelper<UPrimitiveComponent>
---@field NewHitBodyPosMap ULuaMapHelper<string, EAvatarDamagePosition>
---@field PawnCollisionCountdown number
---@field IsRefreshPawnCollision boolean
---@field BoxCollisionCountdown number
---@field IsRefreshBoxCollision boolean
---@field bDebugDrawHitPos boolean
---@field ClientHitPartJudgment EHitPartJugementType
---@field DSHitPartJudgment EHitPartJugementType
local UUGCPartHitComponent = {}

function UUGCPartHitComponent:InitBodyHitBox() end

function UUGCPartHitComponent:CloseBodyBulletCollision() end

---@param PoseState ESTEPoseState
function UUGCPartHitComponent:UpdatePoseCollisionShapes(PoseState) end

---@param InHitPos FVector
---@param InImpactVec FVector
---@param InBoneName string
---@return EAvatarDamagePosition
function UUGCPartHitComponent:GetHitBodyType(InHitPos, InImpactVec, InBoneName) end

---@param InBoneName string
---@return EAvatarDamagePosition
function UUGCPartHitComponent:GetHitBodyTypeByBoneName(InBoneName) end

---@param InHitPos FVector
---@return EAvatarDamagePosition
function UUGCPartHitComponent:GetHitBodyTypeByHitPos(InHitPos) end

---@param hitPos FVector
---@param Projvec FVector
---@param centerPos FVector
---@param bodyDef FBodyTypeDef
---@return EAvatarDamagePosition
function UUGCPartHitComponent:CalcHitBodyType(hitPos, Projvec, centerPos, bodyDef) end

function UUGCPartHitComponent:ResetData() end

---@param Countdown number
function UUGCPartHitComponent:RefreshWorldBoxCollision(Countdown) end

---@param Type number
function UUGCPartHitComponent:UpdateAllInstanceBodyTransform(Type) end

---@return EHitPartJugementType
function UUGCPartHitComponent:GetCurHitPartJugementType() end
