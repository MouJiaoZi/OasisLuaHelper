---@meta

---Use To Manage RollBack Avatar in Low Memory Machine
---@class UAvatarRollBackMod: UAvatarManagementModBase
---@field LimitNumber number @Limit ROLE_SimulatedProxy Number
---@field LimitGameModes ULuaSetHelper<EGameModeType>
---@field RegisteredAvatars ULuaSetHelper<UCharacterAvatarComponent> @Cache Register AvatarComponent
local UAvatarRollBackMod = {}

---@param InCharacterAvatarComponent UCharacterAvatarComponent
---@return boolean
function UAvatarRollBackMod:TryCharacterAvatarRollBack(InCharacterAvatarComponent) end

---@param InAvatarComponent UAvatarComponent
function UAvatarRollBackMod:TryUnRegisterCharacterAvatar(InAvatarComponent) end

---@return number
function UAvatarRollBackMod:TryGetCurrentRegisterAvatarNumber() end

---@param InGameId number
---@return boolean
function UAvatarRollBackMod:TryJudgeGameModeEnableRollBack(InGameId) end
