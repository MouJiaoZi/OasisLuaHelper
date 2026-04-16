---@meta

---@class ECheckPointType
---@field ECheckPointType_None number
---@field ECheckPointType_Start number @起点
---@field ECheckPointType_End number @终点
---@field ECheckPointType_Guide number @引导点
---@field ECheckPointType_CheckScore number @检查点
ECheckPointType = {}


---@class ACheckPointActor: AActor
---@field CheckPointID number
---@field CheckPointType ECheckPointType
---@field CheckPointName string
---@field bCheckScore boolean
---@field TargetScore number
---@field UpdateInterval number
local ACheckPointActor = {}

---@param BaseCharacter ASTExtraBaseCharacter
function ACheckPointActor:OnPlayerEnter(BaseCharacter) end

---@param BaseCharacter ASTExtraBaseCharacter
function ACheckPointActor:OnPlayerLeave(BaseCharacter) end

---@param OverlappedComp UPrimitiveComponent
---@param Other AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex number
---@param bFromSweep boolean
---@param SweepResult FHitResult
function ACheckPointActor:OnBeginOverlap(OverlappedComp, Other, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

---@param OverlappedComp UPrimitiveComponent
---@param Other AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex number
function ACheckPointActor:OnEndOverlap(OverlappedComp, Other, OtherComp, OtherBodyIndex) end

---@param Exiting APlayerController
function ACheckPointActor:OnPlayerRealExit(Exiting) end

---@param BaseCharacter ASTExtraBaseCharacter
function ACheckPointActor:OnPlayerDeath(BaseCharacter) end

function ACheckPointActor:CheckTeamMissionAchieved() end
