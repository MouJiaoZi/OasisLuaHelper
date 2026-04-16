---@meta

---@class FMeleeDebugRepData
---@field AbsorbCommonData FMeleeAbsorbCommonData
---@field AbsorbCommonDataAttrs ULuaArrayHelper<string>
---@field OverrideCommonDataID number
---@field ControllerDataAttrs ULuaArrayHelper<string>
---@field ControllerDataValues ULuaArrayHelper<string>
---@field OverrideChargePercent number
FMeleeDebugRepData = {}


---@class AMeleeAttackDebugActor: AActor
---@field DebugControllerClsPtr UMeleeAttackController
---@field bUseAttrDocsFilter boolean
---@field AttrDocs ULuaMapHelper<string, string>
---@field DebugRepData FMeleeDebugRepData
---@field LastAppliedDebugDataTime number
local AMeleeAttackDebugActor = {}

---@param InData FMeleeDebugRepData
function AMeleeAttackDebugActor:ReqSetDebugDataClient(InData) end

---@param InData FMeleeDebugRepData
function AMeleeAttackDebugActor:SetDebugDataServer(InData) end

---@param InObject UObject
---@param DataMap ULuaMapHelper<string, string>
function AMeleeAttackDebugActor:ExportBasePropertyData(InObject, DataMap) end

---@param DataMap ULuaMapHelper<string, string>
function AMeleeAttackDebugActor:ExportAbsorbCommonDataPropertyData(DataMap) end

---@param FilePath string
---@param bUseContentDir boolean
function AMeleeAttackDebugActor:SaveDebugDataToFile(FilePath, bUseContentDir) end

---@param InSampleData FMeleeAttackMontageSampleData
---@param OutData FMeleeAttackExtractData
---@return boolean
function AMeleeAttackDebugActor:LoadMeleeAttackShapeData(InSampleData, OutData) end

---@param AttrName string
---@param OutDoc string
---@return boolean
function AMeleeAttackDebugActor:FindAttrDocByName(AttrName, OutDoc) end

---@param OwnerChar ACharacter
---@param OtherChar ACharacter
---@param ExtractedData FMeleeAttackExtractData
---@param OutLocs ULuaArrayHelper<FVector>
---@param OutRadiusList ULuaArrayHelper<number>
function AMeleeAttackDebugActor:CalculateValueByDamageShape(OwnerChar, OtherChar, ExtractedData, OutLocs, OutRadiusList) end

---@param Point FVector
---@param Radius number
---@param Color FLinearColor
---@param Duration number
function AMeleeAttackDebugActor:ServerShowDebugPoint(Point, Radius, Color, Duration) end

function AMeleeAttackDebugActor:OnRep_DebugRepData() end
