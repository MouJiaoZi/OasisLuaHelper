---@meta

---@class FTargetPointConfig
---@field Point FVector
---@field Weight number
FTargetPointConfig = {}


---@class FAIDropConfig
---@field AIStartDropTimeLowerLimit number
---@field AIStartDropTimeUpperLimit number
---@field LowPlayerStartDropTimeLowerLimit number
---@field LowPlayerStartDropTimeUpperLimit number
---@field PlayerKillAICntLimit number
---@field NextDropTimeLowerLimit number
---@field NextDropTimeUpperLimit number
FAIDropConfig = {}


---@class UGamemodeAIDataAsset: UDataAsset
---@field SpawnEquipDataBase ULuaArrayHelper<FAIEquipSpawnGroupDataBase>
---@field RandomStartJumpTime number
---@field RandomEndJumpTime number
---@field JumpRadius number
---@field JumpHeight number
---@field RandomAccelerateStart number
---@field RandomAccelerateEnd number
---@field OpenParachuteHeight number
---@field OpenParachuteHeightVehicleCraft number
---@field CheckOpenParachuteFreq number
---@field CloseParachuteHeight number
---@field CheckCloseParachuteFreq number
---@field CheckNoPlayerRadiusSquare number
---@field TimeCanProne number
---@field TimeCanMedicine number
---@field StopdeliverTime number
---@field NoCirlceRadius number
---@field TraceHeight number
---@field RangeMin number
---@field RangeMax number
---@field OriginCheckSquare number
---@field DestCheckSquare number
---@field TraceHeight_MLAI number
---@field RangeMin_MLAI number
---@field RangeMax_MLAI number
---@field OriginCheckSquare_MLAI number
---@field DestCheckSquare_MLAI number
---@field FlyToCenterOfCircle FVector2D
---@field FlyToCircleRadius number
---@field FlyTeamSplitNum number
---@field FlyTeamSplitPerTeamNumLower number
---@field FlyTeamSplitPerTeamNumUpper number
---@field AITeamTargetPointConfigs ULuaArrayHelper<FTargetPointConfig>
---@field AIDropConfig FAIDropConfig
---@field FirstSupplyTime number
---@field SecondarySupplyTime number
local UGamemodeAIDataAsset = {}
