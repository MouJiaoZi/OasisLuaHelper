---@meta

---@class EInfectionPlayerInfectType
---@field InvalidInfectType number
---@field Human number
---@field Superman number
---@field InfectedMan number
---@field AdvancedInfectedMan number
---@field SpeedInfected number
---@field InvisInfected number
---@field HookInfected number
---@field PowerAdvInfected number
---@field FrozenAdvInfected number
---@field PowerSuperMan number
---@field DragonSuperMan number
---@field Faker number
---@field ForgingIron number
---@field Enchanting number
---@field IronFist number
---@field Phoenix number
---@field Titan number
---@field Yaokai number
---@field LingLong number
---@field Shouyeren number
EInfectionPlayerInfectType = {}


---@class EInfectionCampType
---@field InvalidCamp number
---@field HumanCamp number
---@field InfectedCamp number
EInfectionCampType = {}


---@class EInfectionRespawnReason
---@field InvalidReason number
---@field PlayerInit number
---@field RoundReset number
---@field InfectSelect number
---@field Infect number
---@field Death number
---@field Evolution number
---@field AdvancedConflict number
---@field Transfiguration number
EInfectionRespawnReason = {}


---@class EInfectionSupplyType
---@field AmmunitionSupply number
---@field Fortifier number
EInfectionSupplyType = {}


---@class EInfectionMeleeWeaponType
---@field Blunt number
---@field Fist number
---@field Blade number
---@field Claw number
EInfectionMeleeWeaponType = {}


---@class UInfectionTDMGameplayStatics: UBlueprintFunctionLibrary
local UInfectionTDMGameplayStatics = {}

---@param Actor AActor
---@return number
function UInfectionTDMGameplayStatics:GetInfectionTDMCampMaskFilter(Actor) end

---@param A AActor
---@param B AActor
---@return boolean
function UInfectionTDMGameplayStatics:IsSameInfectionTDMCamp(A, B) end
