---@meta

---@class FSpawnerMoveRangeInfo
FSpawnerMoveRangeInfo = {}


---刷怪器AI活动范围组件
---@class USpawnerMoveRangeComp: UActorComponent
---@field BoxTagName string
---@field EnterSoundBank string
---@field LeaveSoundBank string
---@field EnterSoundEventName string
---@field LeaveSoundEventName string
---@field PlaySoundCD number
---@field EnterTipsID number
---@field StopOverlap boolean
---@field InSpawnerPlayers ULuaArrayHelper<ASTExtraBaseCharacter>
---@field BoxComponents ULuaArrayHelper<UActorComponent>
local USpawnerMoveRangeComp = {}

---@param CheckLoc FVector
---@return boolean
function USpawnerMoveRangeComp:IsInMoveRange(CheckLoc) end

---@param Player ASTExtraBaseCharacter
---@param BankName string
---@param EventName string
function USpawnerMoveRangeComp:ClientPlayAudio(Player, BankName, EventName) end

function USpawnerMoveRangeComp:ClearOverlapInfo() end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex number
---@param bFromSweep boolean
---@param SweepResult FHitResult
function USpawnerMoveRangeComp:OnComponentBeginOverlap(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex number
function USpawnerMoveRangeComp:OnComponentEndOverlap(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end

---@param BaseCharacter ASTExtraBaseCharacter
function USpawnerMoveRangeComp:OnPlayerDeath(BaseCharacter) end

---@param BaseCharacter ASTExtraBaseCharacter
function USpawnerMoveRangeComp:OnPlayerEnter(BaseCharacter) end

---@param BaseCharacter ASTExtraBaseCharacter
function USpawnerMoveRangeComp:OnPlayerLeave(BaseCharacter) end

---@param OtherActor AActor
function USpawnerMoveRangeComp:BP_OnComponentBeginOverlap(OtherActor) end

---@param OtherActor AActor
function USpawnerMoveRangeComp:BP_OnComponentEndOverlap(OtherActor) end

---@param PC ASTExtraPlayerController
---@param bEnter boolean
function USpawnerMoveRangeComp:BP_DisplayInfo(PC, bEnter) end
