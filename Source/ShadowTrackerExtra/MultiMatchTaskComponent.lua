---@meta

---@class FMultiMatchTaskTarget
---@field TargetKillNum number
---@field TargetOrder number
FMultiMatchTaskTarget = {}


---@class FChallengerLoginDelegate : ULuaSingleDelegate
FChallengerLoginDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FChallengerLoginDelegate:Bind(Callback, Obj) end

---执行委托
function FChallengerLoginDelegate:Execute() end


---@class UMultiMatchTaskComponent: UActorComponent, ILuaInterface
---@field ChallengerLoginDelegate FChallengerLoginDelegate
---@field ChallengerUIDs ULuaArrayHelper<number>
---@field ChallengerControllers ULuaArrayHelper<ASTExtraPlayerController>
---@field ChallengerPlayerKeys ULuaArrayHelper<number>
---@field TaskTarget FMultiMatchTaskTarget
local UMultiMatchTaskComponent = {}

---@param Controller ASTExtraPlayerController
---@return boolean
function UMultiMatchTaskComponent:CheckPlayerIsChallenger(Controller) end

---@param Controller ASTExtraPlayerController
---@param TaskTarget FMultiMatchTaskTarget
---@return boolean
function UMultiMatchTaskComponent:GetTaskTarget(Controller, TaskTarget) end

---@param UID number
function UMultiMatchTaskComponent:Init(UID) end

---@param InPlayer APlayerController
function UMultiMatchTaskComponent:OnPlayerPostLogin(InPlayer) end

---@param Controller ASTExtraPlayerController
function UMultiMatchTaskComponent:PostChallengerLogin(Controller) end

---@param InPlayerKey number
---@param KillerKey number
---@param bIsAI boolean
function UMultiMatchTaskComponent:OnPlayerKilled(InPlayerKey, KillerKey, bIsAI) end

---@param Controller ASTExtraPlayerController
function UMultiMatchTaskComponent:PostChallengerKillPlayer(Controller) end

---@param Controller ASTExtraPlayerController
---@return boolean
function UMultiMatchTaskComponent:IfPlayerIsChallenger(Controller) end

---@return string
function UMultiMatchTaskComponent:GetLuaModule() end

function UMultiMatchTaskComponent:OnRep_ChallengerPlayerKeys() end
