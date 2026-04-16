---@meta

---@class UVoiceChannelGroupingComponent: UActorComponent
---@field ID number
local UVoiceChannelGroupingComponent = {}

---@param InCharacter ASTExtraPlayerCharacter
function UVoiceChannelGroupingComponent:AddPlayerToGroup(InCharacter) end

---@param InCharacter ASTExtraPlayerCharacter
function UVoiceChannelGroupingComponent:RemovePlayerFromGroup(InCharacter) end

---@return number
function UVoiceChannelGroupingComponent:GetChannelID() end


---@class UVoiceChannelManager: UObject
local UVoiceChannelManager = {}
