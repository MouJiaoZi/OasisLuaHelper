---@meta

---@class FBattleFieldMapItem
---@field LocationX number
---@field LocationY number
---@field LocationZ number
---@field bVisible number
FBattleFieldMapItem = {}


---@class FBattleFieldCharacterMapItem
---@field bInFight number
---@field PlayerKey number
---@field TeamID number
FBattleFieldCharacterMapItem = {}


---@class FBattleFieldLocalCharacterMapItem
---@field MarkingPlayerKey number
FBattleFieldLocalCharacterMapItem = {}


---@class FBattleFieldVehicleMapItem
---@field bFullStrength number
---@field bHasAnyCampPlayer number
---@field VehicleType number
---@field RotationYaw number
---@field UID number
---@field VehicleHealthState ESTExtraVehicleHealthState
FBattleFieldVehicleMapItem = {}


---@class ABattleFieldCampActor: ACampActor
---@field VehicleClassToVehicleType ULuaMapHelper<ASTExtraVehicleBase, number>
---@field MyCampCharacterMapItemsRepDelegate FBattleFieldCampActorNotifyDelegate
---@field EnemyCampCharacterMapItemsRepDelegate FBattleFieldCampActorNotifyDelegate
---@field MyCampVehicleMapItemsRepDelegate FBattleFieldCampActorNotifyDelegate
---@field EnemyCampVehicleMapItemsRepDelegate FBattleFieldCampActorNotifyDelegate
---@field MyCampCharacterMapItems ULuaArrayHelper<FBattleFieldCharacterMapItem>
---@field EnemyCampCharacterMapItems ULuaArrayHelper<FBattleFieldCharacterMapItem>
---@field bIsAlwaysShowEnemyInMap boolean
---@field MyCampCharacterMapItems_Local ULuaArrayHelper<FBattleFieldCharacterMapItem>
---@field MyCampVehicleMapItems ULuaArrayHelper<FBattleFieldVehicleMapItem>
---@field EnemyCampVehicleMapItems ULuaArrayHelper<FBattleFieldVehicleMapItem>
---@field PendingUpdateVisibilityEnemyCampVehicleMapItems ULuaArrayHelper<FBattleFieldVehicleMapItem>
---@field VisualFieldFrame FVisualFieldFrame
---@field ManualVisualFieldFrame FVisualFieldFrame
---@field ManualVisualFieldUpdatedId number
---@field bVisualFieldFrameConsumed boolean
local ABattleFieldCampActor = {}

function ABattleFieldCampActor:OnRep_MyCampCharacterMapItems() end

function ABattleFieldCampActor:OnRep_EnemyCampCharacterMapItems() end

function ABattleFieldCampActor:OnRep_MyCampVehicleMapItems() end

function ABattleFieldCampActor:OnRep_EnemyCampVehicleMapItems() end

---@param InPlayerController APlayerController
function ABattleFieldCampActor:OnPlayerPostLogin(InPlayerController) end

---@param InPlayerController APlayerController
function ABattleFieldCampActor:OnPlayerLogout(InPlayerController) end

---@param InPlayerKey number
---@param InFakePlayerAIController AFakePlayerAIController
function ABattleFieldCampActor:OnAIAdded(InPlayerKey, InFakePlayerAIController) end

---@param InFakePlayerAIController AFakePlayerAIController
---@param InEndPlayReason EEndPlayReason
function ABattleFieldCampActor:OnFakePlayerAIControllerEndPlay(InFakePlayerAIController, InEndPlayReason) end

---@param InActor AActor
function ABattleFieldCampActor:OnActorInitialized(InActor) end

---@param InActor AActor
---@param InEndPlayReason EEndPlayReason
function ABattleFieldCampActor:OnActorEndPlay(InActor, InEndPlayReason) end

---@param InSTExtraVehicleBase ASTExtraVehicleBase
function ABattleFieldCampActor:OnVehicleBegunPlay(InSTExtraVehicleBase) end

---@param InSTExtraVehicleBase ASTExtraVehicleBase
function ABattleFieldCampActor:OnVehicleEndPlay(InSTExtraVehicleBase) end

---@param Sender UBattleFieldVisualFieldComponent
---@param InVisualFieldFrame FVisualFieldFrame
function ABattleFieldCampActor:OnVisualFieldFrameMerged(Sender, InVisualFieldFrame) end

---@param MarkingPlayerKey string
---@param MarkedPlayerKey string
---@param Msg string
---@param Reasons string
function ABattleFieldCampActor:OnManualVisualFieldUpdated(MarkingPlayerKey, MarkedPlayerKey, Msg, Reasons) end

---@param VehicleClass ASTExtraVehicleBase
---@return boolean
function ABattleFieldCampActor:FindVehicleType(VehicleClass) end
