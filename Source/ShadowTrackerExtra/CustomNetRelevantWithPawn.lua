---@meta

---@class UCustomNetRelevantWithPawn: UCustomNetRelevantBase
---@field bIsRelevant boolean
---@field bForceNetRelevant boolean
---@field Characters ULuaArrayHelper<ACharacter>
local UCustomNetRelevantWithPawn = {}

---@param Character ACharacter
function UCustomNetRelevantWithPawn:AddRelevantPawn(Character) end

---@param Character ACharacter
function UCustomNetRelevantWithPawn:RemoveRelevantPawn(Character) end

function UCustomNetRelevantWithPawn:ClearRelevantPawn() end

function UCustomNetRelevantWithPawn:MarkAllConnectionDirty() end

function UCustomNetRelevantWithPawn:FinishForceNet() end
