---@meta

---@class USTStrategyTiming_SphereTrigger: USTStrategyTiming
---@field FirstDelayDuration number
---@field bUseDoubleSphereCollision number
local USTStrategyTiming_SphereTrigger = {}

---@param Owner ASTSpawnerBase
function USTStrategyTiming_SphereTrigger:ActivateStrategy(Owner) end

function USTStrategyTiming_SphereTrigger:DeactivateStrategy() end

---@param DeltaTime number
function USTStrategyTiming_SphereTrigger:TickStrategy(DeltaTime) end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex number
---@param bFromSweep boolean
---@param SweepResult FHitResult
function USTStrategyTiming_SphereTrigger:OnComponentBeginOverlap(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex number
function USTStrategyTiming_SphereTrigger:OnComponentEndOverlap(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end

---@param BaseCharacter ASTExtraBaseCharacter
function USTStrategyTiming_SphereTrigger:OnPlayerDeath(BaseCharacter) end
