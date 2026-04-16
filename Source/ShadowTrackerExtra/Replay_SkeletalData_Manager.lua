---@meta

---@class UReplay_SkeletalData_Manager: UObject, FTickableGameObject
---@field EveryTicksBonesTransform ULuaArrayHelper<FTransform>
---@field BonesName ULuaArrayHelper<string>
---@field EveryTicktime ULuaArrayHelper<number>
---@field EveryTicksErrorBonesIndex ULuaArrayHelper<boolean>
---@field ErrorLog ULuaArrayHelper<string>
---@field FPSLog ULuaArrayHelper<string>
---@field OthersLog ULuaArrayHelper<string>
---@field OutFileNames ULuaArrayHelper<string>
---@field ReadInBonesTransform ULuaArrayHelper<FTransform>
---@field Meshes ULuaArrayHelper<UActorComponent>
---@field PreMaterials ULuaArrayHelper<UMaterialInterface>
---@field ReplaySkeletonGMUIClass UUserWidget
---@field AddtionalName string
---@field bPauseWhenCompareError boolean
---@field bUseErrorMaterial boolean
---@field Threshold number
---@field FixedFPS number
---@field bIsDebug boolean
local UReplay_SkeletalData_Manager = {}

---@return boolean
function UReplay_SkeletalData_Manager:BP_GetIsWrite() end

---@return boolean
function UReplay_SkeletalData_Manager:BP_GetCanShowCompare() end

---@param compare boolean
function UReplay_SkeletalData_Manager:BP_StartWriteOrCompareData(compare) end

function UReplay_SkeletalData_Manager:BP_ShowCompare() end

---@return string
function UReplay_SkeletalData_Manager:BP_OpenReplayFile() end

---@param fullpath string
function UReplay_SkeletalData_Manager:BP_SetReplayFile(fullpath) end

---@param fullpath string
function UReplay_SkeletalData_Manager:BP_SetDataFile(fullpath) end

---@param IsShow boolean
function UReplay_SkeletalData_Manager:ShowGMUI(IsShow) end

function UReplay_SkeletalData_Manager:PauseOrPlay() end

---@param replay_fullpath string
---@return boolean
function UReplay_SkeletalData_Manager:AutoTestWriteStart(replay_fullpath) end

---@param replay_fullpath string
---@param data_fullpath string
---@return boolean
function UReplay_SkeletalData_Manager:AutoTestCompareStart(replay_fullpath, data_fullpath) end

---@param tex UTexture
function UReplay_SkeletalData_Manager:DoBatchTexture(tex) end
