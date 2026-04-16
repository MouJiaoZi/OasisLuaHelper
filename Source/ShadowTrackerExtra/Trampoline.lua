---@meta

---@class ATrampoline: AActor
---@field bTrampolineEnable boolean
---@field bEnableTickPlayer boolean
---@field FlyTime number
---@field TrampolineIndex number
---@field EnableTime number
---@field LaunchTarget FVector @The destination of this trampoline
---@field JoystickSensitivity number
---@field LaunchedActors ULuaArrayHelper<ASTExtraBaseCharacter> @Ѿ͵Ľɫײظ
local ATrampoline = {}

---@param NewChar ACharacter
---@param AnimMontage UAnimMontage
function ATrampoline:AddPlayer(NewChar, AnimMontage) end

function ATrampoline:TickPlayer() end

---@param EnableLastTime number
function ATrampoline:EnableTrampolineState(EnableLastTime) end

---@param bEnable boolean
---@param EnableLastTime number
function ATrampoline:OnTrampolineStateChanged(bEnable, EnableLastTime) end
