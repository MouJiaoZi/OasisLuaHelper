---@meta

---@class USTExtraAnimInstance_LiveShow: USTExtraAnimInstanceBase
---@field DeltaViewOffsetLiveShow FRotator
---@field StandbyAnimTimeInterval number
---@field StandbyAnimPawnStateExclusion ULuaArrayHelper<EPawnState>
---@field StandbyGameModeType ULuaArrayHelper<EGameModeType>
---@field DanceEmoteIdArray ULuaArrayHelper<number>
local USTExtraAnimInstance_LiveShow = {}

function USTExtraAnimInstance_LiveShow:TryPlayStandbyAnim() end

---@param EmoteIndex number
---@param EndReason EEmoteEndReason
function USTExtraAnimInstance_LiveShow:OnEmoteAnimFinished(EmoteIndex, EndReason) end
