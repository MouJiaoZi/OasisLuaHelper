---@meta

---@class EMobaHeroSubAreaType
---@field MOBA_SUBAREA_JUNGLE number @默认野区
---@field MOBA_SUBAREA_TOP_TOWER_1 number @上路一塔
---@field MOBA_SUBAREA_TOP_TOWER_2 number @上路二塔
---@field MOBA_SUBAREA_TOP_TOWER_3 number @上路三塔
---@field MOBA_SUBAREA_MID_TOWER_1 number @中路一塔
---@field MOBA_SUBAREA_MID_TOWER_2 number @中路二塔
---@field MOBA_SUBAREA_MID_TOWER_3 number @中路三塔
---@field MOBA_SUBAREA_BOT_TOWER_1 number @下路一塔
---@field MOBA_SUBAREA_BOT_TOWER_2 number @下路二塔
---@field MOBA_SUBAREA_BOT_TOWER_3 number @下路三塔
---@field MOBA_SUBAREA_BASE number @基地
---@field MOBA_SUBAREA_RIVER number @河道
EMobaHeroSubAreaType = {}


---@class AMobaHeroSubArea: AActor
---@field Type EMobaHeroSubAreaType
---@field AIWayPointDepth number
---@field InBoxCollisionPlayers ULuaArrayHelper<ASTExtraBaseCharacter>
local AMobaHeroSubArea = {}

---@param BaseCharacter ASTExtraBaseCharacter
function AMobaHeroSubArea:OnPlayerEnterBoxCollision(BaseCharacter) end

---@param BaseCharacter ASTExtraBaseCharacter
function AMobaHeroSubArea:OnPlayerLeaveBoxCollision(BaseCharacter) end

---@param OverlappedComp UPrimitiveComponent
---@param Other AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex number
---@param bFromSweep boolean
---@param SweepResult FHitResult
function AMobaHeroSubArea:OnBoxCollisionBeginOverlap(OverlappedComp, Other, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

---@param OverlappedComp UPrimitiveComponent
---@param Other AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex number
function AMobaHeroSubArea:OnBoxCollisionEndOverlap(OverlappedComp, Other, OtherComp, OtherBodyIndex) end

---@param BaseCharacter ASTExtraBaseCharacter
function AMobaHeroSubArea:OnPlayerDeathInBoxCollision(BaseCharacter) end

function AMobaHeroSubArea:GetInAreaPlayers() end
