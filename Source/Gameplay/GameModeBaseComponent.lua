---@meta

---@class UGameModeBaseComponent: UActorComponent
---@field bHasInitialized boolean
---@field AssociatedDatas ULuaArrayHelper<EGMDataType>
local UGameModeBaseComponent = {}

function UGameModeBaseComponent:Init() end

function UGameModeBaseComponent:UnInit() end

---@param DeltaTime number
function UGameModeBaseComponent:Update(DeltaTime) end

---@param InSubSystemType ESubSystemType
function UGameModeBaseComponent:FinishCreateAssociatedDatas(InSubSystemType) end

---@return boolean
function UGameModeBaseComponent:IsAssociatedDatasValid() end
