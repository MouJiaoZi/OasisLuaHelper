---@meta

---@class EUGCCommodityResponseType
---@field OrderID number
---@field CommodityID_Count number
---@field RechargeResult number
---@field TicketChanged number
---@field ActiveCoinChanged number
EUGCCommodityResponseType = {}


---@class EUGCCommodityCommandType
---@field None number
---@field Buy number
---@field Use number
---@field Compensate number
---@field Redeem number
---@field ClaimMail number
EUGCCommodityCommandType = {}


---@class FUGCCommodityCommand
---@field UGCCommodityCommandType EUGCCommodityCommandType
---@field Command string
---@field UGCCommodityData FUGCCommodityData
FUGCCommodityCommand = {}


---@class FUGCCommodityExecuteCommand
---@field Command string
---@field CommodityID number
---@field Count number
---@field SellingPriceAfterDiscount number
---@field bPlayerPrivilegeNeedChecked boolean
---@field Context string
FUGCCommodityExecuteCommand = {}


---@class UUGCCommodityCommands: UObject
---@field ReplicatedBuyCommands ULuaArrayHelper<FUGCCommodityCommand>
---@field ReplicatedUseCommands ULuaArrayHelper<FUGCCommodityCommand>
local UUGCCommodityCommands = {}

---@param UGCCommodityCommand FUGCCommodityCommand
function UUGCCommodityCommands:RegisterCommand(UGCCommodityCommand) end

---@param UGCCommodityCommandType EUGCCommodityCommandType
---@param Command string
---@param OutUGCCommodityCommand FUGCCommodityCommand
---@return boolean
function UUGCCommodityCommands:FindCommand(UGCCommodityCommandType, Command, OutUGCCommodityCommand) end

function UUGCCommodityCommands:OnRep_ReplicatedBuyCommands() end

function UUGCCommodityCommands:OnRep_ReplicatedUseCommands() end


---@class UUGCCommodityComponent: UActorComponent
---@field UGCCommodityPlayerData FUGCCommodityPlayerData
---@field UGCOasisTokenInGamePurchaseAndRecharge number
local UUGCCommodityComponent = {}

---@param UGCCommodityCommand FUGCCommodityCommand
function UUGCCommodityComponent:RegisterCommand(UGCCommodityCommand) end

---@param UGCCommodityCommandType EUGCCommodityCommandType
---@param ExecuteCommand FUGCCommodityExecuteCommand
function UUGCCommodityComponent:Server_ExecuteCommand(UGCCommodityCommandType, ExecuteCommand) end

---@param UGCCommodityCommandType EUGCCommodityCommandType
---@param ExecuteCommand FUGCCommodityExecuteCommand
function UUGCCommodityComponent:Local_ExecuteCommand(UGCCommodityCommandType, ExecuteCommand) end

---@param UGCCommodityCommandType EUGCCommodityCommandType
---@param ExecuteCommand FUGCCommodityExecuteCommand
function UUGCCommodityComponent:Local_ExecuteCommand_Implementation(UGCCommodityCommandType, ExecuteCommand) end

function UUGCCommodityComponent:OnRep_UGCCommodityPlayerData() end

function UUGCCommodityComponent:OnRep_UGCCommodityCommands() end

function UUGCCommodityComponent:OnRep_UGCOasisTokenInGamePurchaseAndRecharge() end

---@param ResponseUGCCommodityCommand FResponseUGCCommodityCommand
function UUGCCommodityComponent:OnResponseCommand(ResponseUGCCommodityCommand) end

---@param ResponseUGCCommodityCommand FResponseUGCCommodityCommand
---@param PlayerKey number
function UUGCCommodityComponent:Client_NotifyCommandResponsed(ResponseUGCCommodityCommand, PlayerKey) end

---@param PlayerController APlayerController
function UUGCCommodityComponent:OnPlayerPostLoginDelegate(PlayerController) end

---@param Result number
---@param UID number
---@param UGCProductDatas ULuaArrayHelper<FUGCCommodityData>
function UUGCCommodityComponent:ResponseUpdateProducts(Result, UID, UGCProductDatas) end
