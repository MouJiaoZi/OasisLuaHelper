---@meta

---@class UCharacterHeadEntity: UCharacterAvatarEntity
local UCharacterHeadEntity = {}

---@param ItemHandle UBattleItemHandleBase
---@return boolean
function UCharacterHeadEntity:PutOnEquipmentLogic(ItemHandle) end

function UCharacterHeadEntity:UpdateVisibility() end

function UCharacterHeadEntity:EnterRenderPipeline() end

function UCharacterHeadEntity:MarkHairEntityDirtyByHideBone() end

---@param SoftPath FSoftObjectPath
---@return boolean
function UCharacterHeadEntity:CreateAndApplyResource(SoftPath) end

---@param bEnable boolean
function UCharacterHeadEntity:DrawOutline(bEnable) end

function UCharacterHeadEntity:RefreshSkinMaterial() end

---@param CollectRes ULuaMapHelper<EResourceType, FResourceList>
---@param DisableCheck boolean
function UCharacterHeadEntity:CollectDesiredResource(CollectRes, DisableCheck) end

function UCharacterHeadEntity:SetCustomFaceTexSwitch() end

---@param ForceClear boolean
function UCharacterHeadEntity:ClearEntity(ForceClear) end

---@param ItemHandle UBackpackAvatarHandle
function UCharacterHeadEntity:UpdateHeadEntityPriority(ItemHandle) end

---@param DisableCheck boolean
function UCharacterHeadEntity:ResetEntityBeforePushToPool(DisableCheck) end

function UCharacterHeadEntity:CheckEScapeAvatarDisplayCondition() end

function UCharacterHeadEntity:CheckShowOtherRingBodyEffectsCondition() end

function UCharacterHeadEntity:CheckLastRingBodyEffects() end

function UCharacterHeadEntity:CheckPetInfo() end

---@param InTargetSlotID number
---@param visibie boolean
---@param isForce boolean
---@param MaskValue number
function UCharacterHeadEntity:SetAvatarVisibility(InTargetSlotID, visibie, isForce, MaskValue) end

function UCharacterHeadEntity:MarkAllEntityDirty() end

---@param OutVariantResList ULuaArrayHelper<FSoftObjectPath>
function UCharacterHeadEntity:CollectAbilityHandleResource(OutVariantResList) end

---@param bSpecialHide boolean
function UCharacterHeadEntity:SetSpecialHideHead(bSpecialHide) end

function UCharacterHeadEntity:CheckNewFPPEnable() end

---@param PredictedLOD number
function UCharacterHeadEntity:OnHeadMeshLODChanged(PredictedLOD) end
