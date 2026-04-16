---@meta

---@class FHitBoxTagInfo
---@field BodyTypeDef FBodyTypeDef
---@field HitBoxTag string
FHitBoxTagInfo = {}


---@class UGeneralPartHitComponent: UPartHitComponentBase
---@field UpdateHitBoxDeltaTime number
---@field bActivePartHit boolean
---@field LastPartHitRefreshBoxCollisionFrameNum number
---@field TagToPoseMap ULuaMapHelper<FGameplayTag, ESTEPoseState>
---@field HitBoxTagMapData ULuaMapHelper<ESTEPoseState, FHitBoxTagInfo>
---@field UseLessHitBoxData FHitBoxTagInfo
---@field HitBoxList ULuaArrayHelper<UPrimitiveComponent>
---@field NewHitBodyPosMap ULuaMapHelper<string, EAvatarDamagePosition>
---@field PawnCollisionCountdown number
---@field IsRefreshPawnCollision boolean
---@field BoxCollisionCountdown number
---@field IsRefreshBoxCollision boolean
---@field bDebugDrawHitPos boolean
---@field ClientHitPartJudgment EHitPartJugementType
---@field DSHitPartJudgment EHitPartJugementType
local UGeneralPartHitComponent = {}

function UGeneralPartHitComponent:InitBodyHitBox() end

function UGeneralPartHitComponent:CloseBodyBulletCollision() end

---@param PoseState ESTEPoseState
function UGeneralPartHitComponent:UpdatePoseCollisionShapes(PoseState) end

---@param InHitPos FVector
---@param InImpactVec FVector
---@param InBoneName string
---@return EAvatarDamagePosition
function UGeneralPartHitComponent:GetHitBodyType(InHitPos, InImpactVec, InBoneName) end

---@param InBoneName string
---@return EAvatarDamagePosition
function UGeneralPartHitComponent:GetHitBodyTypeByBoneName(InBoneName) end

---@param InHitPos FVector
---@return EAvatarDamagePosition
function UGeneralPartHitComponent:GetHitBodyTypeByHitPos(InHitPos) end

---@param hitPos FVector
---@param Projvec FVector
---@param centerPos FVector
---@param bodyDef FBodyTypeDef
---@return EAvatarDamagePosition
function UGeneralPartHitComponent:CalcHitBodyType(hitPos, Projvec, centerPos, bodyDef) end

function UGeneralPartHitComponent:ResetData() end

---@param Countdown number
function UGeneralPartHitComponent:RefreshWorldBoxCollision(Countdown) end

---@param Type number
function UGeneralPartHitComponent:UpdateAllInstanceBodyTransform(Type) end

---@return EHitPartJugementType
function UGeneralPartHitComponent:GetCurHitPartJugementType() end

---@param StateComp IStateAbilityInterface
---@param State FGameplayTag
function UGeneralPartHitComponent:RefreshByStateChange(StateComp, State) end
