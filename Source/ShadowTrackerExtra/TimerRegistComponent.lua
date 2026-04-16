---@meta

---@class FRegisterTimer
---@field waveIndex number
---@field times ULuaArrayHelper<number>
FRegisterTimer = {}


---@class FRegisterCallerTimer
---@field waveIndex number
---@field times ULuaArrayHelper<number>
FRegisterCallerTimer = {}


---@class UTimerRegistComponent: UGameModeBaseComponent
---@field bEnable boolean
---@field TimerRegister ULuaArrayHelper<FRegisterTimer>
---@field TimerName string
---@field bEndTimerWhenGameFinish boolean
local UTimerRegistComponent = {}

function UTimerRegistComponent:StartTimer() end

function UTimerRegistComponent:EndTimer() end

function UTimerRegistComponent:OnGameEnterFight() end

function UTimerRegistComponent:OnGameEnterFinish() end
