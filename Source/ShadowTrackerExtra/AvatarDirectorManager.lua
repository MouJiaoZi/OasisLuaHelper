---@meta

---@class UAvatarDirectorManager: UActorComponent
---@field AvatarDisplayDirectorList ULuaArrayHelper<AAvatarDisplayDirectorBase>
local UAvatarDirectorManager = {}

---@param SceneDisplayDirector AAvatarDisplayDirectorBase
function UAvatarDirectorManager:RegisterSceneDisplayDirector(SceneDisplayDirector) end

---@param SceneDisplayDirector AAvatarDisplayDirectorBase
function UAvatarDirectorManager:UnRegisterSceneDisplayDirector(SceneDisplayDirector) end
