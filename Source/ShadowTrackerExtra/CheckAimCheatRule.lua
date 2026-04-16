---@meta

---@class FCharacterScreenInfo
FCharacterScreenInfo = {}


---@class UCheckAimCheatRule: UObject
---@field Enable boolean
---@field WorkForEveryTick boolean
local UCheckAimCheatRule = {}

---@param Loc FVector2D
---@param MoveDir FVector2D
function UCheckAimCheatRule:OnTouchMoveEvent(Loc, MoveDir) end

---@param TLog string
function UCheckAimCheatRule:UploadTLog(TLog) end
