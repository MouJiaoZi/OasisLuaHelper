---@meta

---@class FCACRule_CheckMoveLineTouchInfo
---@field force number
---@field TouchGameTime number
---@field FrameIndex number
---@field Location FVector
---@field TouchRealTime FDateTime
FCACRule_CheckMoveLineTouchInfo = {}


---@class FCACRule_CheckMoveLineTouchList
---@field MoveTouchIndex number
---@field MoveTouchCount number
---@field TouchList ULuaArrayHelper<FCACRule_CheckMoveLineTouchInfo>
FCACRule_CheckMoveLineTouchList = {}


---@class FCACRule_CheckMoveLineHitInfo
---@field HitStartGameTime number
---@field HitEndGameTime number
---@field HitStartFrameIndex number
---@field HitEndFrameIndex number
---@field HitStartRealTime FDateTime
---@field HitEndRealTime FDateTime
FCACRule_CheckMoveLineHitInfo = {}


---@class UCACRule_CheckMoveLine: UCheckAimCheatRule
---@field bIsBindInputEvent boolean
---@field MoveTouchMax number
---@field FrameProcessTouchCount number
---@field HitCheatingCount number
---@field HitCheatingFrameCount number
---@field HitCheatingTimeInterval number
---@field TouchMoveSizeSquared number
---@field TouchMoveFuzzyTolerance number
---@field TouchMoveFuzzyValue number
---@field TouchMoveFuzzyValueDestin number
---@field TouchMap ULuaMapHelper<number, FCACRule_CheckMoveLineTouchList>
---@field ProcessTouchList ULuaArrayHelper<FCACRule_CheckMoveLineTouchList>
---@field HitCheatingTouchList ULuaArrayHelper<FCACRule_CheckMoveLineHitInfo>
local UCACRule_CheckMoveLine = {}

---@return boolean
function UCACRule_CheckMoveLine:IsOpenCACRule_CheckMoveLine() end

function UCACRule_CheckMoveLine:InitCACRule_CheckMoveLine() end

function UCACRule_CheckMoveLine:EndCACRule_CheckMoveLine() end

---@param DeltaTime number
function UCACRule_CheckMoveLine:TickCACRule_CheckMoveLine(DeltaTime) end

function UCACRule_CheckMoveLine:InitScreenTouchMoveCheating() end

function UCACRule_CheckMoveLine:EndScreenTouchMoveCheating() end

---@param DeltaTime number
function UCACRule_CheckMoveLine:TickScreenTouchMoveCheating(DeltaTime) end

function UCACRule_CheckMoveLine:UpdateControllerInputEvent() end

function UCACRule_CheckMoveLine:UpdateProcessTouchList() end

---@param FingerIndex ETouchIndex
---@param Location FVector
---@param force number
function UCACRule_CheckMoveLine:InputTouchBegin(FingerIndex, Location, force) end

---@param FingerIndex ETouchIndex
---@param Location FVector
---@param force number
function UCACRule_CheckMoveLine:InputTouchEnd(FingerIndex, Location, force) end

---@param FingerIndex ETouchIndex
---@param Location FVector
---@param force number
function UCACRule_CheckMoveLine:InputTouchRepeat(FingerIndex, Location, force) end
