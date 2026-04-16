---@meta

---@class UCustomNetRelevantWithTag: UCustomNetRelevantBase
---@field Characters ULuaSetHelper<ACharacter>
---@field Tags ULuaArrayHelper<string>
---@field bIgnoreSelfIsCharacter boolean
local UCustomNetRelevantWithTag = {}

---@param InConsiderCharacter ACharacter
function UCustomNetRelevantWithTag:AddConsiderCharacter(InConsiderCharacter) end

---@param InConsiderCharacter ACharacter
function UCustomNetRelevantWithTag:RemoveConsiderCharacter(InConsiderCharacter) end

function UCustomNetRelevantWithTag:ClearConsiderCharacters() end

---@param InCharacter ACharacter
---@return boolean
function UCustomNetRelevantWithTag:IsCharacterHasTag(InCharacter) end

---@param RealViewer AActor
---@param ViewTarget AActor
---@param SrcLocation FVector
---@param SelfActor AActor
---@return boolean
function UCustomNetRelevantWithTag:IsNetRelevantForNonCharacter(RealViewer, ViewTarget, SrcLocation, SelfActor) end
