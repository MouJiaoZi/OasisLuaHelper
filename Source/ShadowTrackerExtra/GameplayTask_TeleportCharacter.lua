---@meta

---@class FGT_TeleportCharacter
---@field TargetLocation FVector
---@field bTargetRotation boolean
---@field TargetRotation FRotator
---@field PreLoadLevelRadius number
---@field Param string
FGT_TeleportCharacter = {}


---@class FGT_TeleportLevelChange
---@field UnLoadLevelList ULuaArrayHelper<string>
---@field LoadLevelList ULuaArrayHelper<string>
FGT_TeleportLevelChange = {}


---@class FGT_TeleportConfig
---@field RelevanceInAdvanceTime number
---@field LevelChangeConfig FGT_TeleportLevelChange
---@field CustomNetRelevantClass UCustomNetRelevantBase
FGT_TeleportConfig = {}


---@class UTeleportEffectBase: UPersistEffectBase
---@field TeleportConfig FGT_TeleportConfig
---@field TeleportCharacters ULuaArrayHelper<ASTExtraBaseCharacter>
---@field SelfCharacter FGT_TeleportCharacter
local UTeleportEffectBase = {}

function UTeleportEffectBase:AfterApplyData_BP() end

---@param DelayTimeUnApply number
function UTeleportEffectBase:Teleport_BP(DelayTimeUnApply) end

---@param Character ASTExtraBaseCharacter
---@param InViewLoc FVector
---@param InViewTarget AActor
---@param InViewTime number
function UTeleportEffectBase:NetRelevanceInAdvance(Character, InViewLoc, InViewTarget, InViewTime) end

function UTeleportEffectBase:OnBPRep_TeleportCharacter() end


---@class UGameplayTask_TeleportCharacter: UUAEGameplayTask
---@field TeleportEffectCache ULuaMapHelper<ASTExtraBaseCharacter, UTeleportEffectBase>
local UGameplayTask_TeleportCharacter = {}

---@param DelayTimeUnApply number
function UGameplayTask_TeleportCharacter:ActuallyTeleportAndEndTask(DelayTimeUnApply) end
