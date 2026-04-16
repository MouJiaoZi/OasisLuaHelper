---@meta

---@class UChristmasSledGameplayComponent: UActorComponent, IObjectPoolInterface
---@field SledWeaponID number
---@field MaxComboValue number
---@field MaxComboSledSpeedUpRate number
---@field MaxComboValueLastTime number
---@field SecondsLosePreCombo number
---@field MaxComboRewardItemID number
---@field bIsInShootingGameplay boolean
---@field ComboValue number
---@field OnComboValueChangeDelegate FOnComboValueChange
---@field GetRewardPlayerList ULuaArrayHelper<ASTExtraPlayerCharacter>
local UChristmasSledGameplayComponent = {}

---@param bFromPersistentPool boolean
function UChristmasSledGameplayComponent:OnRespawned(bFromPersistentPool) end

---@param bToPersistentPool boolean
function UChristmasSledGameplayComponent:OnRecycled(bToPersistentPool) end

function UChristmasSledGameplayComponent:StartShootingGameplayOnServer() end

function UChristmasSledGameplayComponent:StopShootingGameplayOnServer() end

function UChristmasSledGameplayComponent:ResetComboValueOnServer() end

---@param bOldVal boolean
function UChristmasSledGameplayComponent:OnRep_IsInShootingGameplay(bOldVal) end

---@param OldVal number
function UChristmasSledGameplayComponent:OnRep_ComboValue(OldVal) end

function UChristmasSledGameplayComponent:HandleComboValueChange() end

---@param Value number
function UChristmasSledGameplayComponent:AddComboValue(Value) end

---@param bEquip boolean
function UChristmasSledGameplayComponent:SwitchToSledWeapon(bEquip) end

---@return number
function UChristmasSledGameplayComponent:GetCurComboStage() end

---@param Player ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function UChristmasSledGameplayComponent:HandlePlayerLeaveVehicleOnServer(Player, SeatType, IsSucc) end

---@param Player ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function UChristmasSledGameplayComponent:HandlePlayerEnterVehicleOnClient(Player, SeatType, IsSucc) end

---@param Player ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function UChristmasSledGameplayComponent:HandlePlayerLeaveVehicleOnClient(Player, SeatType, IsSucc) end

---@param TargetChangeSlot ESurviveWeaponPropSlot
function UChristmasSledGameplayComponent:HandleClientMainPlayerChangeCurrentUsingWeaponSlot(TargetChangeSlot) end

---@param Param FGISCCF_Param
---@return boolean
function UChristmasSledGameplayComponent:GISCheckShouldShowGamePlayUI(Param) end

---@param Param FGISCCF_Param
function UChristmasSledGameplayComponent:HandleGISShowGamePlayUI(Param) end

---@param Param FGISCCF_Param
function UChristmasSledGameplayComponent:HandleGISHideGamePlayUI(Param) end
