---@meta

---@class DragonBoatPathNodeType
---@field StandBy number
---@field PathNode number
---@field End number
---@field None number
DragonBoatPathNodeType = {}


---龙舟区域触发组件
---@class UDragonBoatAreaTriggerComponent: USphereComponent
---@field PathNodeType DragonBoatPathNodeType
---@field Group number
---@field index number
local UDragonBoatAreaTriggerComponent = {}

---@param OtherActor AActor
function UDragonBoatAreaTriggerComponent:OnTriggerEnter(OtherActor) end

---@param OtherActor AActor
function UDragonBoatAreaTriggerComponent:OnTriggerExit(OtherActor) end

---@param nomal UParticleSystemComponent
---@param pass UParticleSystemComponent
function UDragonBoatAreaTriggerComponent:SetEffect(nomal, pass) end
