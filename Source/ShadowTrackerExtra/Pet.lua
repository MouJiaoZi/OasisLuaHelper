---@meta

---@class FPetIDData
---@field PetID number
---@field PetRandomID number
FPetIDData = {}


---@class APet: ASTAnimalCharacter
---@field PetIDData FPetIDData
---@field IsCalledOut boolean
---@field CallbackDisappearRes UParticleSystem
---@field DisappearDuration number
---@field bEnableProcessMeshLODBias boolean
local APet = {}

---@param EmoteID number
function APet:PlayEmote(EmoteID) end

function APet:ProcessMeshLODBias() end

function APet:OnRep_PetIDData() end

function APet:Init_BP() end

function APet:OnRep_IsCalledOut() end
