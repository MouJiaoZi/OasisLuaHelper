---@meta

---@class AAreaTagManagerActor: AActor
---@field FindVolumes ULuaArrayHelper<AAreaTagVolume>
---@field FindStructArray ULuaArrayHelper<FAreaTagFindStruct>
---@field Active_StructArray ULuaArrayHelper<number>
---@field AreaTagPossessSelector FAreaTagPossessSelector
---@field AllSpotDetailByTag ULuaMapHelper<string, FAreaTagDataDetail>
---@field WorldSpotDetail ULuaArrayHelper<FWorldAreaSpotDetail>
---@field MustHaveTag string
---@field FindTag ULuaArrayHelper<string>
---@field AddTags ULuaArrayHelper<string>
---@field RemoveTags ULuaArrayHelper<string>
---@field ReplaceTags ULuaArrayHelper<string>
---@field ReplaceSpotType ESpotType
---@field ReplaceGroupType ESpotGroupType
---@field CSV_AllSpotDetailByTag ULuaMapHelper<string, FAreaTagDataDetail>
local AAreaTagManagerActor = {}

function AAreaTagManagerActor:GetVolumeAreaTagDetail() end

function AAreaTagManagerActor:BP_GetVolumeAreaTagDetail() end

function AAreaTagManagerActor:AddVolumeAreaTag() end

function AAreaTagManagerActor:BP_AddVolumeAreaTag() end

function AAreaTagManagerActor:RemoveVolumeAreaTag() end

function AAreaTagManagerActor:BP_RemoveVolumeAreaTag() end

function AAreaTagManagerActor:ReplaceVolumeAreaTag() end

function AAreaTagManagerActor:BP_ReplaceVolumeAreaTag() end

function AAreaTagManagerActor:ReplaceVolumeAreaSpotType() end

function AAreaTagManagerActor:BP_ReplaceVolumeAreaSpotType() end

function AAreaTagManagerActor:ReplaceVolumeAreaGroupType() end

function AAreaTagManagerActor:BP_ReplaceVolumeAreaGroupType() end

function AAreaTagManagerActor:CheckAndAddVolumeMustHaveTag() end

---@param FindStruct FAreaTagFindStruct
function AAreaTagManagerActor:GetFindStructCompInVolume(FindStruct) end

---@param FindStruct FAreaTagFindStruct
function AAreaTagManagerActor:GetAllCompByFindStruct(FindStruct) end

---@param AllComp ULuaArrayHelper<USceneComponent>
function AAreaTagManagerActor:GetCompInVolume(AllComp) end

function AAreaTagManagerActor:GetWorldSpotDetail() end

function AAreaTagManagerActor:OutPutWorldSpotDetailToCSV() end

function AAreaTagManagerActor:OutPutWorldSpotDetailToCSV_BySpotDetail() end

function AAreaTagManagerActor:DoSpotTagCSV() end

---@param InSpotDetailByTag ULuaMapHelper<string, FAreaTagDataDetail>
function AAreaTagManagerActor:DoSpotStructDataToCSV(InSpotDetailByTag) end

function AAreaTagManagerActor:OutPutSpotDetailByTagToCSV_BySpotDetailByTag() end
