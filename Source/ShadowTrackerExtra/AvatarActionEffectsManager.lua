---@meta

---@class UAvatarActionEffectsManager: UAvatarSubSystem
---@field AvatarActionEffectsObjectsMap ULuaMapHelper<FAvatarActionEffectsKey, FAvatarActionEffectsValue> @可能会存在衣服冲刺，鞋子也冲刺 此时对应的Object是不同的 故需要用复杂的Key来区分
---@field AvatarActionEffectsDataMap ULuaMapHelper<FAvatarActionEffectsKey, FAvatarActionEffectsDataItem>
---@field CacheParticleComponents ULuaMapHelper<FAvatarActionEffectsKey, FCacheComponent>
---@field CacheAkAudioComponents ULuaMapHelper<FAvatarActionEffectsKey, FCacheComponent>
---@field BlackIDList ULuaArrayHelper<number>
---@field bExistBlackID boolean
---@field BlackIDListValidMap ULuaArrayHelper<FBlackIDList>
---@field bUseWhiteList boolean
---@field bPlaySound boolean
---@field bPlayParticle boolean
---@field BlackBuffList ULuaArrayHelper<string>
---@field bOpenInspection boolean
---@field InspectionFrequency number
---@field InspectionDelta number
---@field PendingActions ULuaMapHelper<number, boolean>
---@field bOpenTick boolean
---@field EffectTransformInVehicleMap ULuaMapHelper<number, FEffectTransformInVehicle>
local UAvatarActionEffectsManager = {}

---@param DeltaTime number
function UAvatarActionEffectsManager:TickSubSystem(DeltaTime) end

---@param DeltaTime number
function UAvatarActionEffectsManager:BP_Tick(DeltaTime) end

---@param InPlayerCharacter ASTExtraPlayerCharacter
function UAvatarActionEffectsManager:SetPlayerCharacter(InPlayerCharacter) end

---@param InAvatarComponent UAvatarComponent
function UAvatarActionEffectsManager:Init(InAvatarComponent) end

function UAvatarActionEffectsManager:InitBindDelegate() end

function UAvatarActionEffectsManager:UnBindDelegate() end

---@param SlotID number
---@param IsEquipped boolean
function UAvatarActionEffectsManager:OnAvatarEquipped(SlotID, IsEquipped) end

---@param AsyncLoadID number
---@param LoadEventFrom UAvatarComponent
function UAvatarActionEffectsManager:OnAvatarAsyncLoadingFinished(AsyncLoadID, LoadEventFrom) end

---@param InSlotID number
---@param InMeshComp UMeshComponent
---@param InItemHandle UBattleItemHandleBase
function UAvatarActionEffectsManager:RegisterItemHandleData(InSlotID, InMeshComp, InItemHandle) end

---@param InSlotID number
function UAvatarActionEffectsManager:UnRegisterItemHandleData(InSlotID) end

---@return boolean
function UAvatarActionEffectsManager:IsInBattle() end

---@param InAvatarActionEffectsKey FAvatarActionEffectsKey
---@param InAvatarActionEffectsValue FAvatarActionEffectsValue
function UAvatarActionEffectsManager:AddItemToAvatarActionEffectsObjectsMap(InAvatarActionEffectsKey, InAvatarActionEffectsValue) end

---@param InAvatarActionEffectsKey FAvatarActionEffectsKey
function UAvatarActionEffectsManager:ActiveItemFromAvatarActionEffectsObjectsMap(InAvatarActionEffectsKey) end

---@param InSlotID number
function UAvatarActionEffectsManager:DeactiveItemFromAvatarActionEffectsObjectsMap(InSlotID) end

---@param InState number
---@param bInUseWhiteList boolean
---@param bInTriggeredByAnimation boolean
---@param InSocket string
function UAvatarActionEffectsManager:DoAction(InState, bInUseWhiteList, bInTriggeredByAnimation, InSocket) end

---@param bSound boolean
---@param bParticle boolean
function UAvatarActionEffectsManager:ReDoAllAction(bSound, bParticle) end

---@param bSound boolean
---@param bParticle boolean
function UAvatarActionEffectsManager:CancelAllAction(bSound, bParticle) end

---@param InState number
function UAvatarActionEffectsManager:CancelActionByState(InState) end

---@param InSlotID number
function UAvatarActionEffectsManager:CancelActionBySlot(InSlotID) end

---@param InState number
---@param bInUseWhiteList boolean
---@param bInTriggeredByAnimation boolean
---@return boolean
function UAvatarActionEffectsManager:CanDoAction(InState, bInUseWhiteList, bInTriggeredByAnimation) end

function UAvatarActionEffectsManager:GetAvatarActionEffectsClassMap() end

---@param InState number
---@return string
function UAvatarActionEffectsManager:ConvertEnumValueToString(InState) end

---@param InAvatarActionEffectsKey FAvatarActionEffectsKey
---@param InAvatarActionEffectsDataItem FAvatarActionEffectsDataItem
function UAvatarActionEffectsManager:AddItemToAvatarActionEffectsDataMap(InAvatarActionEffectsKey, InAvatarActionEffectsDataItem) end

---@param InSlotID number
function UAvatarActionEffectsManager:RemoveItemFromAvatarActionEffectsDataMap(InSlotID) end

---@param InNum number
---@param InAvatarActionEffectsKey FAvatarActionEffectsKey
function UAvatarActionEffectsManager:CreateCacheComponents(InNum, InAvatarActionEffectsKey) end

---@param InState number
---@return boolean
function UAvatarActionEffectsManager:CanBeInterrupted(InState) end

---@param InState number
function UAvatarActionEffectsManager:GetInterruptOtherStates(InState) end

---@param InCacheType ECacheType
---@param InCacheComponent FCacheComponent
---@param InAvatarActionEffectsKey FAvatarActionEffectsKey
function UAvatarActionEffectsManager:UpdateCacheComponents(InCacheType, InCacheComponent, InAvatarActionEffectsKey) end

function UAvatarActionEffectsManager:GetBlackIDList() end

---@param InExistBlackID boolean
---@param InItemID number
function UAvatarActionEffectsManager:SetExistBlackID(InExistBlackID, InItemID) end

function UAvatarActionEffectsManager:GetWhiteList() end

---@param InBuffName string
---@param InBuffFastShapeParamMap ULuaMapHelper<string, FAvatarFastShapeParam>
---@param State number
---@return boolean
function UAvatarActionEffectsManager:CanDoActionByCheckBuff(InBuffName, InBuffFastShapeParamMap, State) end

function UAvatarActionEffectsManager:GetBuffFastShapeParamMap() end
