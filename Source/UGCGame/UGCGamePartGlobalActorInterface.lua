---@meta

---GamePart GlobalActor接口
---@class IUGCGamePartGlobalActorInterface
IUGCGamePartGlobalActorInterface = {}

---@param PlayerController ASTExtraPlayerController
function IUGCGamePartGlobalActorInterface:ReceivePlayerEnter(PlayerController) end

---@param PlayerController ASTExtraPlayerController
function IUGCGamePartGlobalActorInterface:ReceivePlayerExit(PlayerController) end

---@return string
function IUGCGamePartGlobalActorInterface:GetGamePartName() end
