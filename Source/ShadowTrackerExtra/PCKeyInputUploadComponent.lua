---@meta

---@class UPCKeyInputUploadComponent: UActorComponent
---@field bAutoTurnOn boolean
---@field bAutoStartRecording boolean
---@field bEnableRecordAnyKey boolean
---@field MaxKeyCodeInfoCount number
---@field IgnoredKeys ULuaArrayHelper<FKey>
---@field bEnableRecordActionName boolean
---@field ActionNameMapToRecord ULuaMapHelper<string, number>
---@field MaxActionInfoCount number
---@field MaxBlankInputTimeBeforeUpload number
---@field KeyCodeInfos ULuaArrayHelper<FPCKeyInputUploadCodeInfo>
---@field ActionInfos ULuaArrayHelper<FPCKeyInputUploadActionInfo>
---@field KeyDownTickSecondCache ULuaMapHelper<number, number>
---@field bToUploadFlag boolean
---@field LastInputTime number
---@field IgnoredKeyCodeCache ULuaSetHelper<number>
local UPCKeyInputUploadComponent = {}

function UPCKeyInputUploadComponent:StartRecording() end

function UPCKeyInputUploadComponent:StopRecording() end

---@return boolean
function UPCKeyInputUploadComponent:IsRecording() end

function UPCKeyInputUploadComponent:TurnOn() end

function UPCKeyInputUploadComponent:TurnOff() end

function UPCKeyInputUploadComponent:Toggle() end

---@return boolean
function UPCKeyInputUploadComponent:IsOn() end

---@return boolean
function UPCKeyInputUploadComponent:IsRecReplay() end

---@return boolean
function UPCKeyInputUploadComponent:IsRecordAnyKeyEnabled() end

---@return boolean
function UPCKeyInputUploadComponent:IsRecordActionNameEnabled() end

---@param Key FKey
function UPCKeyInputUploadComponent:OnAnyKeyDown(Key) end

---@param Key FKey
function UPCKeyInputUploadComponent:OnAnyKeyUp(Key) end

---@param KeyCodeInfos ULuaArrayHelper<FPCKeyInputUploadCodeInfo>
---@param ActionInfos ULuaArrayHelper<FPCKeyInputUploadActionInfo>
---@param RecordSectionIndex number
---@param CurWorldTimeSecond number
---@param ClientUploadTime number
function UPCKeyInputUploadComponent:ServerUploadRecord(KeyCodeInfos, ActionInfos, RecordSectionIndex, CurWorldTimeSecond, ClientUploadTime) end

---@return boolean
function UPCKeyInputUploadComponent:IsAutonomous() end

---@param Key FKey
---@return number
function UPCKeyInputUploadComponent:GetKeyCodeFromKey(Key) end

---@return number
function UPCKeyInputUploadComponent:GetTime() end

---@return boolean
function UPCKeyInputUploadComponent:IsBlankInputTimeOut() end

---@param bWithSlack boolean
function UPCKeyInputUploadComponent:ClearRecord(bWithSlack) end

function UPCKeyInputUploadComponent:UploadRecord() end

---@param KeyCode number
---@param KeyDownTickSecond number
---@param KeyUpTickSecond number
---@return boolean
function UPCKeyInputUploadComponent:TryAddKeyCodeInfo(KeyCode, KeyDownTickSecond, KeyUpTickSecond) end

---@param ActionNameValue number
---@param ActionTickSecond number
---@return boolean
function UPCKeyInputUploadComponent:TryAddActionInfo(ActionNameValue, ActionTickSecond) end

---@return boolean
function UPCKeyInputUploadComponent:AutoStartRecordingPredicate() end

---@return boolean
function UPCKeyInputUploadComponent:AutoStopRecordingPredicate() end

---@return boolean
function UPCKeyInputUploadComponent:UploadPredicate() end

---@return boolean
function UPCKeyInputUploadComponent:HasContentToRecord() end

---@param ActionName string
function UPCKeyInputUploadComponent:OnExecutedInputActionNameNotify(ActionName) end
