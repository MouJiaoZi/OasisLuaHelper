---@meta

---@class UNetAlienationData: UObject
---@field Owner UNetAlienationDataComponent
---@field bUsePC boolean
local UNetAlienationData = {}

---@param InOwner UNetAlienationDataComponent
function UNetAlienationData:ReciveInit(InOwner) end

function UNetAlienationData:ReceivePreDestroy() end

function UNetAlienationData:ReceiveObChange() end


---@class UTeamNetAlienationData: UNetAlienationData
---@field TeamID number
local UTeamNetAlienationData = {}


---@class UPlayerNetAlienationData: UNetAlienationData
local UPlayerNetAlienationData = {}

---@param PC APlayerController
function UPlayerNetAlienationData:InitPlayerKey(PC) end

---@return string
function UPlayerNetAlienationData:GetPlayerKey() end

---@param PC APlayerController
function UPlayerNetAlienationData:SetRelativePlayerController(PC) end


---@class UDsGlobalNetAlienationData: UNetAlienationData
local UDsGlobalNetAlienationData = {}


---@class URepViaPCNetAlienationData: UNetAlienationData
---@field RelevantPCs ULuaSetHelper<ASTExtraPlayerController>
---@field CacheConnections ULuaArrayHelper<UNetConnection>
local URepViaPCNetAlienationData = {}

---@param InPC ASTExtraPlayerController
function URepViaPCNetAlienationData:AddRelevantFor(InPC) end

---@param InPC ASTExtraPlayerController
function URepViaPCNetAlienationData:RemoveRelevantFor(InPC) end

function URepViaPCNetAlienationData:ClearRelevantFor() end

function URepViaPCNetAlienationData:OnRep_Owner() end

---@param PC ASTExtraPlayerController
function URepViaPCNetAlienationData:AddConnection(PC) end

---@param PC ASTExtraPlayerController
function URepViaPCNetAlienationData:RemoveConnection(PC) end

function URepViaPCNetAlienationData:RefreshConnections() end
