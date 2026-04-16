---@meta

---@class FZombieTimingTips
---@field TipsAppearanceTime number
---@field TipsID string
FZombieTimingTips = {}


---@class ABattleRoyaleGameModeEscape: ABattleRoyaleGameModeZombie
---@field FlareLocSyncInterval number
---@field TimerTips ULuaArrayHelper<FZombieTimingTips>
local ABattleRoyaleGameModeEscape = {}

---@param Params FGameModeStateChangedParams
function ABattleRoyaleGameModeEscape:SetUpTimerTips(Params) end

---@param TipsID string
function ABattleRoyaleGameModeEscape:SendTimerTips(TipsID) end
