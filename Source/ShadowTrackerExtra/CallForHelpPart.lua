---@meta

---@class UCallForHelpPart: UBasicLogicPart, ICallForHelpPartInterface
---@field CallForHelpIntervel number
---@field CallForHelpRange number
---@field AllyEntityTypeTags FGameplayTagContainer
---@field bCallForHelpFromDamageCauser boolean
local UCallForHelpPart = {}

---@param InDamage number
---@param InDamageEvent FDamageEvent
---@param InEventInstigator AController
---@param InDamageCauser AActor
---@return boolean
function UCallForHelpPart:CheckIsVaildAlly(InDamage, InDamageEvent, InEventInstigator, InDamageCauser) end

---@param InDamage number
---@param InDamageEvent FDamageEvent
---@param InEventInstigator AController
---@param InDamageCauser AActor
function UCallForHelpPart:OnTakeDamage(InDamage, InDamageEvent, InEventInstigator, InDamageCauser) end

function UCallForHelpPart:OnTargetFilterInfoUpdate() end
