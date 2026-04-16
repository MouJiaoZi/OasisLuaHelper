---@meta

---@class AAircraftPetActor: AActivityActorForClient
---@field CharacterAircraftPetConfig FCharacterAircraftPetConfig
local AAircraftPetActor = {}

---@param bActivate boolean
function AAircraftPetActor:UpdateOpenParachuteEffect(bActivate) end

---@param bActivate boolean
function AAircraftPetActor:UpdateOpenParachuteAnim(bActivate) end

---@param bActivate boolean
function AAircraftPetActor:UpdateLandingEffect(bActivate) end

---@param bActivate boolean
function AAircraftPetActor:UpdateLandingAnim(bActivate) end

function AAircraftPetActor:TestAircraftPet() end

---@param InRole ENetRole
function AAircraftPetActor:SetRole(InRole) end

function AAircraftPetActor:RefreshAircraftPet() end
