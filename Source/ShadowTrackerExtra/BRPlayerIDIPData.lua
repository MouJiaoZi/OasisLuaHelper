---@meta

---ų́洢
---@class UBRPlayerIDIPData: UPlayerIDIPData
---@field PersistKey ULuaArrayHelper<number>
---@field OnDataLoadDelegate FOnDataLoadDelegate
local UBRPlayerIDIPData = {}

---@return string
function UBRPlayerIDIPData:GetLuaModule() end

---@param PC APlayerController
function UBRPlayerIDIPData:OnPlayerPostLogin(PC) end

function UBRPlayerIDIPData:CollectPersistKey() end

---@param PC ASTExtraPlayerController
---@param IDIPKey number
---@param Param number
---@param bIsReady boolean
function UBRPlayerIDIPData:GetOrAddData_BR(PC, IDIPKey, Param, bIsReady) end

---@param PC ASTExtraPlayerController
---@param IDIPKey number
---@param Param number
function UBRPlayerIDIPData:UpdateData_BR(PC, IDIPKey, Param) end

---@param InOwner UNetAlienationDataComponent
function UBRPlayerIDIPData:BindDelegate_Implementation(InOwner) end

---@param UID string
---@param bIsPersist boolean
---@param IDIPKey number
function UBRPlayerIDIPData:BroadcastDataLoad(UID, bIsPersist, IDIPKey) end
