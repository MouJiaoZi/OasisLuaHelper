---@meta

---僚机召唤器handle
---@class FWingmanEffect
---@field WingmanAirdropBoxEffectSEQActor AActor
---@field WingmanAirdropBoxEffectSEQActorPath string
FWingmanEffect = {}


---@class UWingmanCallerHandle: UBackpackSkillHandleBase
---@field WingmanEffect ULuaMapHelper<number, FWingmanEffect>
local UWingmanCallerHandle = {}

---@param ThePC ASTExtraPlayerController
---@param EffectID number
function UWingmanCallerHandle:InitSkillInfo(ThePC, EffectID) end

function UWingmanCallerHandle:TriggerSkill() end
