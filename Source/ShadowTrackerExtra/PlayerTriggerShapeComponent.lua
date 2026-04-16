---@meta

---玩家进入触发配置项，出去取消配置项， 销毁时统一清 例如忽略毒圈的区域，监控所有不吃毒的人
---@class UPlayerTriggerShapeComponent: UBoxComponent
---@field bIgnoreBlueCircle boolean
---@field bDamageFree boolean
---@field BuffNameArray ULuaArrayHelper<string>
---@field RelatedPlayers ULuaArrayHelper<ASTExtraBaseCharacter>
local UPlayerTriggerShapeComponent = {}

---@param InCha ASTExtraBaseCharacter
function UPlayerTriggerShapeComponent:PlayerEnter(InCha) end

---@param InCha ASTExtraBaseCharacter
function UPlayerTriggerShapeComponent:PlayerLeave(InCha) end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex number
---@param bFromSweep boolean
---@param SweepResult FHitResult
function UPlayerTriggerShapeComponent:OnBoxBeginOverlap(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex number
function UPlayerTriggerShapeComponent:OnBoxEndOverlap(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end
