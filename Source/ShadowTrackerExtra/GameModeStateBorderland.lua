---@meta

---@class FOnReviveDisabledDelegate : ULuaSingleDelegate
FOnReviveDisabledDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnReviveDisabledDelegate:Bind(Callback, Obj) end

---执行委托
function FOnReviveDisabledDelegate:Execute() end


---@class AGameModeStateBorderland: ASTExtraGameStateBase
---@field PersistentOriginRadius number
---@field ReviveColdDown ULuaArrayHelper<number>
---@field ReviveTimeLimit number
---@field ReviveTipTimeLimit number
---@field RevivePreTipEnable boolean
---@field ReviveTipEnable boolean
---@field ReviveEnable boolean
---@field ReviveTipID number
---@field PreReviveTipID number
---@field OnReviveDisabledDelegate FOnReviveDisabledDelegate
---@field MatchLeftTimeRepPeriod number
---@field GameModeWinScore number
---@field MatchLeftTime number
---@field MatchTime number
---@field RespawnLeftTime number
---@field ResetRespawnLeftTime boolean
---@field LastRespawnTimeUpdateTimeSecond number
local AGameModeStateBorderland = {}

function AGameModeStateBorderland:SetLastRespawnTimeUpdateTimeSecond() end

function AGameModeStateBorderland:OnGameEnterFight() end

function AGameModeStateBorderland:HandleReviveTip() end

function AGameModeStateBorderland:OnRep_MatchLeftTime() end

function AGameModeStateBorderland:OnRep_MatchTime() end

function AGameModeStateBorderland:OnRep_RespawnLeftTime() end

function AGameModeStateBorderland:OnRep_WinScore() end

function AGameModeStateBorderland:OnRep_ReviveColdDown() end

function AGameModeStateBorderland:OnRep_ReviveEnable() end

function AGameModeStateBorderland:OnRep_ReviveTimeLimit() end

function AGameModeStateBorderland:OnRep_ReviveTipTimeLimit() end

function AGameModeStateBorderland:UpdateRespawnCountDownUI() end

function AGameModeStateBorderland:OnRep_LastRespawnTimeUpdateTimeSecond() end
