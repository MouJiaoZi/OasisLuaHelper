---@meta

---@class USTExtraAnimFMObj_Check: UAnimFunctionModule_ObjInstance
---@field bEnableDumpAnim boolean
---@field bEnableDumpSubAnims boolean
---@field bEnableDumpCharacter boolean
---@field CheckFrequency number
---@field MaxCheckDistance number
---@field MinMaintainDuration number
---@field bCheckAI boolean
---@field bCheckNoRecentlyRendered boolean
---@field bCheckLocallyControlled boolean
---@field OnlyCheckGameModeIDs ULuaArrayHelper<string>
---@field NotCheckGameModeIDs ULuaArrayHelper<string>
---@field MinUploadInterval number
---@field ExceptionUploadType string
---@field bReportToBugly boolean
---@field CheckElapsedTime number
---@field MaintainElapsedTime number
---@field UploadElapsedTime number
---@field CurObserveDistance number
---@field bNeedUpload boolean
local USTExtraAnimFMObj_Check = {}

---@param AnimInstance UAnimInstanceBase
---@return boolean
function USTExtraAnimFMObj_Check:NeedSkipCheck(AnimInstance) end

---@param AnimInstance UAnimInstanceBase
---@param DeltaSeconds number
---@return boolean
function USTExtraAnimFMObj_Check:CheckException(AnimInstance, DeltaSeconds) end

---@param AnimInstance UAnimInstanceBase
---@param DeltaSeconds number
---@return string
function USTExtraAnimFMObj_Check:CollectDumpStack(AnimInstance, DeltaSeconds) end

---@param AnimInstance UAnimInstanceBase
---@param DeltaSeconds number
---@return string
function USTExtraAnimFMObj_Check:CollectDumpException(AnimInstance, DeltaSeconds) end

---@param AnimInstance UAnimInstanceBase
---@param DeltaSeconds number
---@return string
function USTExtraAnimFMObj_Check:CollectDumpFile(AnimInstance, DeltaSeconds) end

---@param AnimInstance UAnimInstanceBase
---@param DeltaSeconds number
function USTExtraAnimFMObj_Check:PostUploadException(AnimInstance, DeltaSeconds) end
