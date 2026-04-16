---@meta

---@class FSeeker_DetectInstanceStruct
---@field CachedPlayerHadBeenDetected ULuaArrayHelper<ASTExtraBaseCharacter>
FSeeker_DetectInstanceStruct = {}


---@class USTExtraBuffAction_Seeker_Detect: USTExtraBuffAction
---@field TickInterval number
---@field DetectionRadius number
---@field ObjectTypes ULuaArrayHelper<EObjectTypeQuery>
---@field ActorClassFilter ASTExtraBaseCharacter
---@field HiderDetectedTipsID number
---@field AttachedSocketName string
local USTExtraBuffAction_Seeker_Detect = {}
