---@meta

---@class ECommonRevivalTriggerType
---@field None number
---@field RevivalByCommonCard number
ECommonRevivalTriggerType = {}


---@class ERevivalCardTipsType
---@field Invalid number
---@field HasRevivaled number
---@field NearOverTime number
---@field OverTime number
---@field HasRevivalCard number
---@field HasUsedSameTypeCard number
---@field UsedOut number
---@field EnableCard number
---@field DisableCard number
---@field AutoGiveRevivalCard number
ERevivalCardTipsType = {}


---@class UCommonRevivalComponent: UActorComponent
---@field TickInterval number
---@field RevivalCardItemLastTime number
---@field bRevivedByRevivalCard boolean
---@field bInRevival boolean
---@field RevivalCardUsefulTime number
---@field RevivalType ECommonRevivalTriggerType
---@field bInChecker boolean
---@field bHasRevivalCard boolean
---@field RevivalItemIDList ULuaArrayHelper<number>
---@field bCanRevivalMultiTimes boolean
---@field bForceUseWhenTimeOut boolean
---@field bRevivalSingleTimePerTypeCard boolean
---@field RevivalCardValidTime ULuaArrayHelper<number>
---@field CurRevivalCardTimeIndex number
---@field UsedRevivalCardTypeArray ULuaArrayHelper<number>
---@field LastTimeUsedRevivalCard number
---@field NearOverTimeLen number
---@field HasRevivaledTipID number
---@field NearOverTimeTipID number
---@field OverTimeTipID number
---@field HasRevivalCardTipID number
---@field HasUsedSameTypeCard number
---@field UseOutCard number
---@field EnableTipsID number
---@field DisableTipsID number
---@field AutoGiveCardID number
---@field bHasSendNearOverTime boolean
---@field bLastInTheme boolean
local UCommonRevivalComponent = {}

function UCommonRevivalComponent:EnableTickComponent() end

function UCommonRevivalComponent:DisableTickComponent() end

---״̬
function UCommonRevivalComponent:EnterRevivalState() end

---˳״̬
---@param SaviorKey number
function UCommonRevivalComponent:LeaveRevivalState(SaviorKey) end

function UCommonRevivalComponent:OnPlayerExitGame() end

---@param bIsPlayerAlive boolean
function UCommonRevivalComponent:OnPlayerEscapeWhenGameEnd(bIsPlayerAlive) end

---@param PlayerController AUAEPlayerController
function UCommonRevivalComponent:OnPlayerControllerRespawnedDelegate(PlayerController) end

function UCommonRevivalComponent:OnRep_RevivalCardItemLastTime() end

function UCommonRevivalComponent:OnRep_InRevival() end

---@return boolean
function UCommonRevivalComponent:IsRevivalCardCanBePickUp() end

---@return boolean
function UCommonRevivalComponent:ForceUseAllRevivalCard() end

---@param ItemID number
---@return boolean
function UCommonRevivalComponent:ForceUseRevivalCard(ItemID) end

function UCommonRevivalComponent:OnRep_bInChecker() end

function UCommonRevivalComponent:OnRep_LastTimeUsedRevivalCard() end

---@param TipsType ERevivalCardTipsType
function UCommonRevivalComponent:ShowGameTipsWithTipsType(TipsType) end

function UCommonRevivalComponent:DoRevive() end

---@param bInTheme boolean
function UCommonRevivalComponent:PostInTheme(bInTheme) end

function UCommonRevivalComponent:OnRep_RevivalPlaneClass() end
