---@meta

---@class AShadowPuppetCharacter: ACharacter
---@field bEnableInputWithoutPossess boolean
local AShadowPuppetCharacter = {}

function AShadowPuppetCharacter:InitShadowPuppet() end

---@param InNetRole ENetRole
function AShadowPuppetCharacter:SetClientRole(InNetRole) end
