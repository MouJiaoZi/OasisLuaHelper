---@meta

---@class UCharacterAircraftPetManager: UAvatarSubSystem
---@field AircraftPetActorClass AAircraftPetActor
---@field CharacterAircraftPetConfig FCharacterAircraftPetConfig
---@field bNeedSpawnAircraftPet boolean
---@field ParachuteFollowStateForPet EParachuteFollowStateForPet
local UCharacterAircraftPetManager = {}

---@param DeltaTime number
function UCharacterAircraftPetManager:TickSubSystem(DeltaTime) end

---@param DeltaTime number
function UCharacterAircraftPetManager:BP_Tick(DeltaTime) end

function UCharacterAircraftPetManager:ActiveSystem() end

function UCharacterAircraftPetManager:DeactiveSystem() end

function UCharacterAircraftPetManager:InitBindDelegate() end

function UCharacterAircraftPetManager:UnBindDelegate() end

---@param LastFollowState EFollowState
---@param NowFollowState EFollowState
function UCharacterAircraftPetManager:OnParachuteFollowStateChanged(LastFollowState, NowFollowState) end

---@param PreState EParachuteState
---@param CurState EParachuteState
function UCharacterAircraftPetManager:OnParachuteStateChanged(PreState, CurState) end

function UCharacterAircraftPetManager:ParachuteStateNoneToFreeFall() end

function UCharacterAircraftPetManager:ParachuteStateFreeFallToOpening() end

function UCharacterAircraftPetManager:ParachuteStateOpeningToLanding() end

function UCharacterAircraftPetManager:ParachuteStateLandingToNone() end

---@param AsyncLoadID number
---@param LoadAvatar UAvatarComponent
function UCharacterAircraftPetManager:OnAvatarLoadingFinished(AsyncLoadID, LoadAvatar) end

---@param AsyncLoadID number
---@param LoadAvatar UAvatarComponent
function UCharacterAircraftPetManager:BP_OnAvatarLoadingFinished(AsyncLoadID, LoadAvatar) end

---@param bActiveManager boolean
function UCharacterAircraftPetManager:ResetDate(bActiveManager) end

function UCharacterAircraftPetManager:UpdateAircraftPetForMultiAircraft() end

function UCharacterAircraftPetManager:SpawnAircraftPet() end

function UCharacterAircraftPetManager:RefreshAircraftPet() end

function UCharacterAircraftPetManager:RegisterAbilityResources() end

---@param bActivate boolean
function UCharacterAircraftPetManager:UpdateOpenParachuteEffect(bActivate) end

---@param bActivate boolean
function UCharacterAircraftPetManager:UpdateOpenParachuteAnim(bActivate) end

---@param bActivate boolean
function UCharacterAircraftPetManager:UpdateLandingEffect(bActivate) end

---@param bActivate boolean
function UCharacterAircraftPetManager:UpdateLandingAnim(bActivate) end

function UCharacterAircraftPetManager:HandleClientHasReactivated() end

---@return number
function UCharacterAircraftPetManager:GetAircraftID() end

---@return number
function UCharacterAircraftPetManager:GetMultiAircraftID() end

---@param InRole ENetRole
function UCharacterAircraftPetManager:SetRole(InRole) end

function UCharacterAircraftPetManager:TestAircraftPet() end

---@param Montage UAnimMontage
---@param bInterrupted boolean
function UCharacterAircraftPetManager:OnMontageEnded(Montage, bInterrupted) end

function UCharacterAircraftPetManager:AddOnMontageEndedDelegate() end

function UCharacterAircraftPetManager:RemoveOnMontageEndedDelegate() end

function UCharacterAircraftPetManager:SendUsePetInfo() end
