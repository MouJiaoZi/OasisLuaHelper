---@meta

---@class UGameplayTask_RegistShowFace: UUAEGameplayTask
---@field WorkDeviceLevels ULuaArrayHelper<number>
---@field ApplyDeviceLevel number
---@field CacheCharacters ULuaArrayHelper<ASTExtraPlayerCharacter>
local UGameplayTask_RegistShowFace = {}

---@param NewState boolean
---@param InSTExtraBaseCharacter ASTExtraPlayerCharacter
---@return boolean
function UGameplayTask_RegistShowFace:EnableHighResFaceInGame(NewState, InSTExtraBaseCharacter) end

function UGameplayTask_RegistShowFace:TickTaskEvent() end

function UGameplayTask_RegistShowFace:OnDestroyEvent() end
