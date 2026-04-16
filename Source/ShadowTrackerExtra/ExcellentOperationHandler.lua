---@meta

---@class UExcellentOperationHandler: UObject
---@field EffectRelatedActorDataMap ULuaMapHelper<EExcellentOperationResultType, FExcellentOperationActorData>
---@field EffectRelatedActorDataMapCustom ULuaMapHelper<number, FExcellentOperationActorData>
---@field OverrideMoveQueryParams ULuaMapHelper<EExcellentOperationResultType, FExcellentOperationMoveQueryParams>
---@field OverrideMoveQueryParamsCustom ULuaMapHelper<number, FExcellentOperationMoveQueryParams>
---@field DefaultMoveQueryParams FExcellentOperationMoveQueryParams
---@field CheckItemDownTraceZ number
---@field CheckItemUpperTraceZ number
---@field CheckItemOffsetZ number
---@field ExcellentOperationEffectMap ULuaMapHelper<EExcellentOperationResultType, UPersistEffectBase>
---@field ExcellentOperationEffectMapCustom ULuaMapHelper<number, UPersistEffectBase>
---@field bClearRecordByNormalKill boolean
---@field ValidEffectTypeTimeout number
---@field CurValidEffectType EExcellentOperationResultType
---@field CustomValidEffectType number
local UExcellentOperationHandler = {}

---@param SpecificType EExcellentOperationResultType
---@param bForceStart boolean
function UExcellentOperationHandler:StartExcellentOperationEffectSpecificServer(SpecificType, bForceStart) end

---@param bForceStart boolean
function UExcellentOperationHandler:StartExcellentOperationEffectCustomServer(bForceStart) end

---@param bForceStart boolean
---@param SpecifiedEffect UUExcellentOperationPersistEffect
function UExcellentOperationHandler:StartExcellentOperationEffectServer(bForceStart, SpecifiedEffect) end

function UExcellentOperationHandler:StopExcellentOperationEffectServer() end

---@return boolean
function UExcellentOperationHandler:ReqStartExcellentOperationEffectClient() end

function UExcellentOperationHandler:ReqStopExcellentOperationEffectClient() end

---@return boolean
function UExcellentOperationHandler:ReqStartKillOnceEffectClient() end

---@param bShowFailTip boolean
---@return boolean
function UExcellentOperationHandler:CanStartEffect(bShowFailTip) end

---@return boolean
function UExcellentOperationHandler:IsHandlerEnable() end

function UExcellentOperationHandler:OnResetValidEffectTypeTimeout() end

function UExcellentOperationHandler:OnInitBP() end

function UExcellentOperationHandler:OnUnInitBP() end

function UExcellentOperationHandler:OnInterruptEffectBP() end

---@param Result EExcellentOperationStartResult
function UExcellentOperationHandler:OnStartEffectServerBP(Result) end

---@param RetType number
---@return boolean
function UExcellentOperationHandler:GenerateCustomValidEffectTypeBP(RetType) end

---@param bShowFailTip boolean
---@return boolean
function UExcellentOperationHandler:CanStartEffectBP(bShowFailTip) end
