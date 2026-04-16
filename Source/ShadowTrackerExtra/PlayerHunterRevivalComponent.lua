---@meta

---赏金模式的复活组件，有两种复活模式 1.购买了复活信标后，自己死亡数秒后自动原地跳伞复活 2.没有信标时，等待队友在商店买活，直接商店位置跳伞复活 add by czcheng 2020.5.5
---@class UPlayerHunterRevivalComponent: UActorComponent
---@field RevivalCountDownTime number
---@field RevivalCircleBlackList ULuaArrayHelper<number>
---@field SelfRevivalTombBoxSkinID number
---@field GotoSpectatingTime number
---@field SelfRevivalGotoSpectatingTips string
---@field ShopRevivalGotoSpectatingTips string
local UPlayerHunterRevivalComponent = {}

---进入待复活状态
function UPlayerHunterRevivalComponent:EnterRevivalState() end

---@return boolean
function UPlayerHunterRevivalComponent:CanSelfRevival() end

function UPlayerHunterRevivalComponent:EnterSelfRevivalState() end

---@param SaviorKey number
function UPlayerHunterRevivalComponent:LeaveSelfReivalState(SaviorKey) end

---玩家被复活时响应函数
---@param SaviorPC ASTExtraPlayerController
function UPlayerHunterRevivalComponent:OnPlayerSelfRevived(SaviorPC) end

function UPlayerHunterRevivalComponent:EnterShopRevivalState() end

---@param SaviorKey number
function UPlayerHunterRevivalComponent:LeaveShopReivalState(SaviorKey) end

---玩家被复活时响应函数
---@param SaviorPC ASTExtraPlayerController
function UPlayerHunterRevivalComponent:OnPlayerShopRevived(SaviorPC) end

function UPlayerHunterRevivalComponent:OnPlayerExitGame() end

---@param PlayerKey number
function UPlayerHunterRevivalComponent:OnPlayerGotoSpectating(PlayerKey) end

---@param PlayerKey number
function UPlayerHunterRevivalComponent:OnPlayerQuitSpectating(PlayerKey) end

---@return boolean
function UPlayerHunterRevivalComponent:IsInWaittingRevivalState() end

---@param bIsPlayerAlive boolean
function UPlayerHunterRevivalComponent:OnPlayerEscapeWhenGameEnd(bIsPlayerAlive) end

---@param InFocusTarget UObject
function UPlayerHunterRevivalComponent:ShowSelfRevivalTombBoxSkin(InFocusTarget) end
