---@meta

---@class FMultiPlayerEmoteGroupKey
---@field PlayerKey number
---@field NotifyName string
FMultiPlayerEmoteGroupKey = {}


---@class FMultiPlayerEmoteGroup
---@field FollowPlayerKey number
---@field PlayerList ULuaMapHelper<number, ASTExtraPlayerCharacter>
---@field bShouldPostSoundEvent boolean
---@field bIsPlayingSound boolean
---@field EmoteId number
---@field PreviousMontagePosition number
---@field NotifyStartPosition number
FMultiPlayerEmoteGroup = {}


---@class FEmotePlayerBlueprint
---@field PlayerKey number
---@field FollowPlayer number
---@field EmoteId number
---@field bCanCostSpecMotion boolean
---@field Pos FVector
---@field Time number
FEmotePlayerBlueprint = {}


---@class UMultiPlayerEmoteSubSystem: UTickableWorldSubsystem
---@field PlaySoundGroups ULuaMapHelper<FMultiPlayerEmoteGroupKey, FMultiPlayerEmoteGroup>
---@field EmoteAnimProgressScaleValue number
---@field bEnablePostTick boolean
---@field bEnablePostCreateOrAddGroup boolean
---@field bEnablePostRemoveFromGroup boolean
---@field bEnablePostUpdateGroup boolean
---@field SkipSeekLimitMs number
---@field FollowPlayerLookUpMap ULuaMapHelper<FMultiPlayerEmoteGroupKey, number>
local UMultiPlayerEmoteSubSystem = {}

---@param Player ASTExtraPlayerCharacter
---@param AkEvent UAkAudioEvent
---@param NotifyName string
---@param NotifyStartPos number
function UMultiPlayerEmoteSubSystem:CreateOrAddPlayerEmoteSoundGroup(Player, AkEvent, NotifyName, NotifyStartPos) end

---@param Outer UObject
---@return boolean
function UMultiPlayerEmoteSubSystem:NativeShouldCreateSubsystem(Outer) end

---@param Player ASTExtraPlayerCharacter
---@param NotifyName string
function UMultiPlayerEmoteSubSystem:RemoveFromPlayerEmoteSoundGroup(Player, NotifyName) end

function UMultiPlayerEmoteSubSystem:CleanPlayerEmoteSoundGroup() end

function UMultiPlayerEmoteSubSystem:UpdatePlayerEmoteSoundGroup() end

---@param EmoteID number
---@return number
function UMultiPlayerEmoteSubSystem:GetEmoteCullDistance(EmoteID) end

---@param PlayerCharacter ASTExtraPlayerCharacter
---@return FEmotePlayerBlueprint
function UMultiPlayerEmoteSubSystem:GetEmotePlayerForBlueprint(PlayerCharacter) end

function UMultiPlayerEmoteSubSystem:PostTick() end

---@param Player ASTExtraPlayerCharacter
---@param AkEvent UAkAudioEvent
function UMultiPlayerEmoteSubSystem:PostCreateOrAddGroup(Player, AkEvent) end

---@param Player ASTExtraPlayerCharacter
function UMultiPlayerEmoteSubSystem:PostPostRemoveFromGroup(Player) end

---@param Group FMultiPlayerEmoteGroup
function UMultiPlayerEmoteSubSystem:PostUpdateGroup(Group) end
