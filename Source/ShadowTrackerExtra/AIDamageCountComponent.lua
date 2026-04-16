---@meta

---@class UAIDamageCountComponent: UActorComponent
local UAIDamageCountComponent = {}

---@param VictimKey number
---@param InstigatorKey number
---@param FinalDamage number
function UAIDamageCountComponent:ReceivedPlayerTakeDamage(VictimKey, InstigatorKey, FinalDamage) end

---@param PlayerKey number
function UAIDamageCountComponent:AddDamageDelegate(PlayerKey) end

function UAIDamageCountComponent:RemoveDamageDelegate() end
