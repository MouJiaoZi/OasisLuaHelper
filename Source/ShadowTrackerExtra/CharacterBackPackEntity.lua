---@meta

---@class UCharacterBackPackEntity: UCharacterAvatarEntity
local UCharacterBackPackEntity = {}

function UCharacterBackPackEntity:EnterLogicPipeline() end

function UCharacterBackPackEntity:EnterRenderPipeline() end

function UCharacterBackPackEntity:OnPostRender() end

---@param ForceClear boolean
function UCharacterBackPackEntity:ClearEntity(ForceClear) end

function UCharacterBackPackEntity:UpdateVisibility() end

function UCharacterBackPackEntity:ShowBackPackCapacity() end

function UCharacterBackPackEntity:RefreshBackPackCapacity() end

function UCharacterBackPackEntity:SyncBackPackCapacityToTeam() end

function UCharacterBackPackEntity:BindBackPackCapacityDelegate() end

---@param BackPackMeshComponent UMeshComponent
---@param bShowCapacity boolean
function UCharacterBackPackEntity:SetCapacityMaterialForBackPack(BackPackMeshComponent, bShowCapacity) end

function UCharacterBackPackEntity:OnBackpackCapacityChanged() end

---@param InItemHandle UBackpackAvatarHandle
function UCharacterBackPackEntity:CheckPendantForEquipmentPutOn(InItemHandle) end

---@param InItemHandle UBackpackAvatarHandle
function UCharacterBackPackEntity:CheckDefaultPendantForEquipmentPutOn(InItemHandle) end

function UCharacterBackPackEntity:CheckPendantForEquipmentPutOff() end

---@param CollectRes ULuaMapHelper<EResourceType, FResourceList>
---@param DisableCheck boolean
function UCharacterBackPackEntity:CollectDesiredResource(CollectRes, DisableCheck) end

---@param DisableCheck boolean
function UCharacterBackPackEntity:ResetEntityBeforePushToPool(DisableCheck) end

function UCharacterBackPackEntity:CheckBackpackHideCondition() end

---@param ItemHandle UBattleItemHandleBase
---@return boolean
function UCharacterBackPackEntity:PutOnEquipmentLogic(ItemHandle) end
