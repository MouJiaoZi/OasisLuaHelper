---@meta

---@class FSearchViewInfo
---@field ViewRadius number
---@field ViewAngle number
---@field ViewAnglePitch number
FSearchViewInfo = {}


---(FakePlayerAI|MobAI|HostAI)
---@class UBTService_SimpleChooseEnemy: UBTService
---@field ViewConfig ULuaArrayHelper<FSearchViewInfo>
---@field TimeLockedInView number
---@field OutTargetEnemyActor any
---@field OutTargetIsVisible any
local UBTService_SimpleChooseEnemy = {}
