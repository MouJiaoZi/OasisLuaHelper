---@meta

---@class IUGCActorMarkExtraActionInterface
IUGCActorMarkExtraActionInterface = {}

function IUGCActorMarkExtraActionInterface:OnMapMarkShortcutButtonClicked() end

---@param InPlayerController ASTExtraPlayerController
---@return boolean
function IUGCActorMarkExtraActionInterface:CanTeleport(InPlayerController) end


---@class UUGCActorMarkComponent: UActorMarkComponent
local UUGCActorMarkComponent = {}

---@param ResID number
---@param bIsVisible boolean
function UUGCActorMarkComponent:OnUGCMapMarkVisibilityChanged(ResID, bIsVisible) end

---@param InMarkInstanceID number
function UUGCActorMarkComponent:OnUGCMapMarkShortcutButtonClicked(InMarkInstanceID) end
