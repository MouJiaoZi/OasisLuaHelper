---@meta

---@class AAirForceEscort: AActor
local AAirForceEscort = {}

function AAirForceEscort:Escort() end

function AAirForceEscort:FlyAway() end

---@param FinishedMontage UAnimMontage
---@param bInterrupted boolean
function AAirForceEscort:HandleFlyAwayMontageFinished(FinishedMontage, bInterrupted) end
