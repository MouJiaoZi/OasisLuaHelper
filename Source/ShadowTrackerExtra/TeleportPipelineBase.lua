---@meta

---@class FTeleportPlayerInfo
---@field Players ULuaArrayHelper<ASTExtraBaseCharacter>
---@field TeleportTime number
---@field bChecked boolean
---@field bRecovered boolean
FTeleportPlayerInfo = {}


---@class ATeleportPipelineBase: AActivityBaseActor
---@field CheckTime number
---@field RecoverTime number
---@field CacheTime number
---@field RejectState ULuaArrayHelper<EPawnState>
---@field CacheTeleportPlayerInfos ULuaArrayHelper<FTeleportPlayerInfo>
---@field bUseAutoOverlap boolean
---@field OverlapComponentName string
local ATeleportPipelineBase = {}

---@param CheckPlayerInfo FTeleportPlayerInfo
function ATeleportPipelineBase:OnTeleportCheckTime(CheckPlayerInfo) end

---@param CheckPlayerInfo FTeleportPlayerInfo
function ATeleportPipelineBase:OnRecoverTime(CheckPlayerInfo) end

---@param CurPlayer ASTExtraBaseCharacter
function ATeleportPipelineBase:RejectByPawnState(CurPlayer) end

---@param CurPlayer ASTExtraBaseCharacter
---@return boolean
function ATeleportPipelineBase:CheckPawnState(CurPlayer) end

---@param DeltaTime number
function ATeleportPipelineBase:CheckOverlapActor(DeltaTime) end

---@param OutActors ULuaArrayHelper<AActor>
function ATeleportPipelineBase:OnOverlapActor(OutActors) end
