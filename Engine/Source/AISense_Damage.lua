---@meta

---@class FAIDamageEvent
---@field Amount number @Damage taken by DamagedActor.
---@field Location FVector @Event's "Location", or what will be later treated as the perceived location for this sense. If not set, HitLocation will be used, if that is unset too DamagedActor's location
---@field HitLocation FVector @Event's additional spatial information
FAIDamageEvent = {}


---@class UAISense_Damage: UAISense
---@field RegisteredEvents ULuaArrayHelper<FAIDamageEvent>
local UAISense_Damage = {}

---EventLocation will be reported as Instigator's location at the moment of event happening
---@param WorldContextObject UObject
---@param DamagedActor AActor
---@param Instigator AActor
---@param DamageAmount number
---@param EventLocation FVector
---@param HitLocation FVector
function UAISense_Damage:ReportDamageEvent(WorldContextObject, DamagedActor, Instigator, DamageAmount, EventLocation, HitLocation) end
