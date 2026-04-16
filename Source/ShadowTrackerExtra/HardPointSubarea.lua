---@meta

---@class EHardPoinRegionType
---@field Default number @默认
---@field MachineGunner number @机枪手占点
---@field Sniper number @狙击手占点
EHardPoinRegionType = {}


---@class AHardPointSubarea: AActor
---@field MaxAINumInSubArea number
---@field RegionWeight number
---@field Type EHardPoinRegionType
---@field AIWayPointDepth number
---@field Vertexs ULuaArrayHelper<FVector2D> @占点区域顶点
---@field TargetPoints ULuaArrayHelper<AActor>
---@field HardPointActiveTimeStamp number
---@field FirstActiveDuration number
---@field InBoxCollisionPlayers ULuaArrayHelper<ASTExtraBaseCharacter>
local AHardPointSubarea = {}

---@param BaseCharacter ASTExtraBaseCharacter
function AHardPointSubarea:OnPlayerEnterBoxCollision(BaseCharacter) end

---@param BaseCharacter ASTExtraBaseCharacter
function AHardPointSubarea:OnPlayerLeaveBoxCollision(BaseCharacter) end

---@param BaseCharacter ASTExtraBaseCharacter
function AHardPointSubarea:OnPlayerDeathInBoxCollision(BaseCharacter) end

---@param OverlappedComp UPrimitiveComponent
---@param Other AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex number
---@param bFromSweep boolean
---@param SweepResult FHitResult
function AHardPointSubarea:OnBoxCollisionBeginOverlap(OverlappedComp, Other, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

---@param OverlappedComp UPrimitiveComponent
---@param Other AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex number
function AHardPointSubarea:OnBoxCollisionEndOverlap(OverlappedComp, Other, OtherComp, OtherBodyIndex) end

---@param HardPointActor AHardPointActor
---@param IsActivate boolean
function AHardPointSubarea:OnHardPointActivateStateChange(HardPointActor, IsActivate) end

---@param Exiting APlayerController
function AHardPointSubarea:OnPlayerRealExit(Exiting) end

function AHardPointSubarea:DrawDebugInfo() end
