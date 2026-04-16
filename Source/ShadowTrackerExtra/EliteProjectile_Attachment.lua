---@meta

---@class AEliteProjectile_Attachment: AEliteProjectile, IPlayerLogicInterface
---@field ReplaceCustomNetRelevant ICustomNetRelevantInterface @Array of ActorComponents that have been added by the user on a per-instance basis.
---@field AddtiveCustomNetRelevant ULuaArrayHelper<ICustomNetRelevantInterface>
local AEliteProjectile_Attachment = {}

---@param Player ASTExtraCharacter
function AEliteProjectile_Attachment:OnPlayerAttachedToThisActor_BP(Player) end

---@param Player ASTExtraCharacter
function AEliteProjectile_Attachment:OnPlayerBeforeAttachedToThisActor_BP(Player) end

---@param Player ASTExtraCharacter
function AEliteProjectile_Attachment:OnPlayerDettachedToThisActor_BP(Player) end

function AEliteProjectile_Attachment:GetDetachScenes_BP() end

---@return string
function AEliteProjectile_Attachment:GetAttachSceneSocketName_BP() end

---@param Interface ICustomNetRelevantInterface
function AEliteProjectile_Attachment:AddCustomNetRelevantInterface(Interface) end

---@param Interface ICustomNetRelevantInterface
function AEliteProjectile_Attachment:RemoveCustomNetRelevantInterface(Interface) end

function AEliteProjectile_Attachment:ClearCustomNetRelevantInterface() end
