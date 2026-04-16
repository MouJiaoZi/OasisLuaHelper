---@meta

---@class AOnGroundBoxActor: AUAERegionActor
---@field ProduceID number
---@field MaxBoxHP number
---@field IntervalDestoryTime number
---@field IntervalDropAwardsTime number
---@field BoomedAnim UAnimationAsset
---@field bOpenDispappearEffect boolean
---@field DispapearStartTime number
---@field DisappearEffectTime number
---@field bAllowNoneInstigator boolean
---@field CurHP number
local AOnGroundBoxActor = {}

function AOnGroundBoxActor:ShowDisappearEffect() end

function AOnGroundBoxActor:SetDisappearEffect() end

---@param LastHP number
function AOnGroundBoxActor:OnRepCurBoxHP(LastHP) end

---@param EventInstigator AController
function AOnGroundBoxActor:ProduceAwardItems(EventInstigator) end

function AOnGroundBoxActor:OnAsyncLoadBoomedAnim() end

---@param DamagedActor AActor
---@param Damage number
---@param DamageType UDamageType
---@param InstigatedBy AController
---@param DamageCauser AActor
function AOnGroundBoxActor:HandleReceiveAnyDamage(DamagedActor, Damage, DamageType, InstigatedBy, DamageCauser) end
