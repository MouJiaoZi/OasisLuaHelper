---@meta

---@class UFreeCombinationVoiceRootComponent: UFreeCombinationVoiceComponent
---@field PlayerComponentMap ULuaMapHelper<ASTExtraPlayerController, UFreeCombinationVoicePlayerComponent>
local UFreeCombinationVoiceRootComponent = {}

---@param PC ASTExtraPlayerController
function UFreeCombinationVoiceRootComponent:RemovePlayerComponent(PC) end

---@param VoiceID number
---@param Priority number
function UFreeCombinationVoiceRootComponent:PlayVoice(VoiceID, Priority) end
