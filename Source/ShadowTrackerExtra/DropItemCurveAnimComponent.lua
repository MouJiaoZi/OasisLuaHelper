---@meta

---@class EItemCurveAnimState
---@field DelayStart number @ӳٳЧ
---@field Anim number @Ž׶
---@field DelayDestroy number @ӳЧ
---@field End number
EItemCurveAnimState = {}


---@class FItemCurveAnim
---@field CurState EItemCurveAnimState
---@field ShowGroundEffect boolean
---@field DropDuration number
---@field CurrentTime number
---@field DropStartSpeed number
---@field DelayDestroyParticleTime number
---@field DelayStartTime number
---@field DelayDestroyGroundParticleTime number
---@field StartPos FVector
---@field EndPos FVector
---@field TargetActor AActor
FItemCurveAnim = {}


---@class FDropGroupContainer
---@field GroupIndex number
---@field GroupTime number
---@field List ULuaArrayHelper<FItemCurveAnim>
FDropGroupContainer = {}


---@class UDropItemCurveAnimComponent: UActorComponent
---@field RangeHigh FVector2D
---@field CustomStartOffset FVector
---@field bUsePickUpSelfEffect boolean
---@field UseTrailParticle boolean
---@field ClientDropOneByOne boolean
---@field ClientDropOneByOneInterval number
---@field CustomGravity number
---@field TrailParticleDelayTime number
---@field LandDirectlyAfterTheReplicatedTime number
---@field ParticleScale number
---@field DropTailsParticle UParticleSystem
---@field bUseDropGroundParticle boolean
---@field DropGroundParticleLifeTime number
---@field DropGroundParticle UParticleSystem
---@field ItemGroupList ULuaArrayHelper<FDropGroupContainer>
---@field bUseAnimCurve boolean
local UDropItemCurveAnimComponent = {}

---@param PickUpWrapper AActor
---@param InStartPos FVector
---@param UserAddr number
function UDropItemCurveAnimComponent:AddDropActorServer(PickUpWrapper, InStartPos, UserAddr) end

---@param Group number
---@param InStartPos FVector
---@param InEndPos FVector
---@param Target AActor
function UDropItemCurveAnimComponent:AddItemClient(Group, InStartPos, InEndPos, Target) end

function UDropItemCurveAnimComponent:OnDropGroundLoadFinsh() end

---@param GroupID number
function UDropItemCurveAnimComponent:OnDropTailsLoadFinsh2(GroupID) end
