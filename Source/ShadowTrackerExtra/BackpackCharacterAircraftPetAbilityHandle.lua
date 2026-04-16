---@meta

---@class EParachuteFollowStateForPet
---@field None number
---@field Leader number
---@field Follower number
---@field Passenger number
EParachuteFollowStateForPet = {}


---@class FCharacterAircraftPetConfig
---@field AircraftPetAirAnim UAnimSequenceBase
---@field AircraftPetLandingAnim UAnimSequenceBase
---@field AircraftPetTransform FTransform
---@field MultiAircraftPetTransform FTransform
---@field AircraftPetOpenParachuteEffect UParticleSystem
---@field AircraftPetOpenParachuteEffectSlot string
---@field AircraftPetLandingEffect UParticleSystem
---@field AircraftPetLandingEffectSlot string
FCharacterAircraftPetConfig = {}


---@class UBackpackCharacterAircraftPetAbilityHandle: UBackpackCharacterAvatarAbilityHandle
---@field DefaultCharacterAircraftPetManagerClass UCharacterAircraftPetManager
---@field CharacterAircraftPetConfig FCharacterAircraftPetConfig
local UBackpackCharacterAircraftPetAbilityHandle = {}

function UBackpackCharacterAircraftPetAbilityHandle:ServerModifyFocusTarget() end

---@param InCharacter ASTExtraPlayerCharacter
function UBackpackCharacterAircraftPetAbilityHandle:ClientModifyFocusTarget(InCharacter) end

---@param InCharacter ASTExtraPlayerCharacter
---@return boolean
function UBackpackCharacterAircraftPetAbilityHandle:CanActive(InCharacter) end

---@param InCharacter ASTExtraPlayerCharacter
---@return boolean
function UBackpackCharacterAircraftPetAbilityHandle:IsCharacterAircraftPetManagerValid(InCharacter) end

---@param InCharacter ASTExtraPlayerCharacter
function UBackpackCharacterAircraftPetAbilityHandle:CollectResources(InCharacter) end

---@param InCharacter ASTExtraPlayerCharacter
function UBackpackCharacterAircraftPetAbilityHandle:CheckPetInfo(InCharacter) end
