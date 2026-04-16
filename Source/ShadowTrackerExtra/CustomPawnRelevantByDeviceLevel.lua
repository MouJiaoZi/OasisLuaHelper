---@meta

---@class FCustomNetRelevantCharacterCollection
---@field Characters ULuaSetHelper<ACharacter>
FCustomNetRelevantCharacterCollection = {}


---@class UCustomPawnRelevantByDeviceLevel: UActorComponent, ICustomNetRelevantInterface
---@field LowDeviceMaxRelevantNum number
---@field MiddleDeviceMaxRelevantNum number
---@field HighDeviceMaxRelevantNum number
---@field bReplace boolean
---@field Characters ULuaSetHelper<ACharacter>
---@field CharacterPriorityMap ULuaMapHelper<ACharacter, number>
---@field RelevantCharacterMap ULuaMapHelper<ACharacter, FCustomNetRelevantCharacterCollection>
---@field ListeningDeviceInfoReceivedControllers ULuaArrayHelper<ASTExtraPlayerController>
local UCustomPawnRelevantByDeviceLevel = {}

---@param Character ACharacter
function UCustomPawnRelevantByDeviceLevel:AddCharacter(Character) end

---@param Character ACharacter
function UCustomPawnRelevantByDeviceLevel:RemoveCharacter(Character) end

function UCustomPawnRelevantByDeviceLevel:ClearCharacters() end

---@param Character ACharacter
---@param Priority number
function UCustomPawnRelevantByDeviceLevel:SetCharacterPriority(Character, Priority) end

---@param PC ASTExtraPlayerController
function UCustomPawnRelevantByDeviceLevel:OnPlayerClientDeviceInfoReceived(PC) end
