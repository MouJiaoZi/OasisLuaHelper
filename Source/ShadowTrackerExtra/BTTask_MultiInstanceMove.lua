---@meta

---MultiInstanceMove Moves the AI pawn to the specified Actor/Location
---@class UBTTask_MultiInstanceMove: UBTTask_FollowMove, ILuaInterface
---@field bApplyInstanceOffset number @if set, path will apply instance offset
---@field ApplyInstanceAdditiveOffset FVector @the offset additive used when apply instance offset
local UBTTask_MultiInstanceMove = {}

---@return string
function UBTTask_MultiInstanceMove:GetLuaModule() end
