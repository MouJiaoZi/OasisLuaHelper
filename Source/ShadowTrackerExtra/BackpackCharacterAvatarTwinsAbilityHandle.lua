---@meta

---@class FCharacterAvatarChangeTwinsDataForAbility
---@field OtherClothID number
---@field CharacterAvatarChangeTwinsData FCharacterAvatarChangeTwinsData
FCharacterAvatarChangeTwinsDataForAbility = {}


---@class FCharacterAvatarChangeTwinsBlackList
---@field DisablePawnStates ULuaArrayHelper<EPawnState>
---@field DisableDynamicPawnState ULuaArrayHelper<FGameplayTag>
---@field DisableSkills ULuaArrayHelper<AUTSkill>
---@field DisableBuffs ULuaArrayHelper<string>
---@field BlackChildrenActors ULuaArrayHelper<AActor>
---@field DisableTipID number
FCharacterAvatarChangeTwinsBlackList = {}


---@class UBackpackCharacterAvatarTwinsAbilityHandle: UBackpackCharacterAvatarAbilityHandle
---@field CharacterAvatarChangeTwinsDataForAbilityMale ULuaMapHelper<number, FCharacterAvatarChangeTwinsDataForAbility>
---@field CharacterAvatarChangeTwinsDataForAbilityFemale ULuaMapHelper<number, FCharacterAvatarChangeTwinsDataForAbility>
---@field TwinsMap ULuaMapHelper<number, number>
---@field CharacterAvatarChangeTwinsBlackList FCharacterAvatarChangeTwinsBlackList
---@field ParticleSystemDeviceRoleBehaviorParam ULuaMapHelper<number, FParticleSystemDeviceRoleBehaviorParam>
---@field BountyHunterClothID ULuaArrayHelper<number>
---@field SuperPeopleClothID ULuaArrayHelper<number>
local UBackpackCharacterAvatarTwinsAbilityHandle = {}

function UBackpackCharacterAvatarTwinsAbilityHandle:ServerModifyFocusTarget() end

function UBackpackCharacterAvatarTwinsAbilityHandle:ServerRestoreFocusTarget() end

---@param InCharacter ASTExtraPlayerCharacter
function UBackpackCharacterAvatarTwinsAbilityHandle:ClientModifyFocusTarget(InCharacter) end

---@param InCharacter ASTExtraPlayerCharacter
function UBackpackCharacterAvatarTwinsAbilityHandle:ClientRestoreFocusTarget(InCharacter) end

---@param InClothID number
---@param InGender number
---@param InCharacter ASTExtraPlayerCharacter
---@return FCharacterAvatarChangeTwinsDataForAbility
function UBackpackCharacterAvatarTwinsAbilityHandle:GetAllConfigByClothID(InClothID, InGender, InCharacter) end

---@param InCharacter ASTExtraPlayerCharacter
---@param InClothID number
---@param PlayerCameraMode EPlayerCameraMode
function UBackpackCharacterAvatarTwinsAbilityHandle:GetResourceByDeviceRole(InCharacter, InClothID, PlayerCameraMode) end
