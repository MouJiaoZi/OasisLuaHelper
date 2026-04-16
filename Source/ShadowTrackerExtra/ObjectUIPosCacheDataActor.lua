---@meta

---@class AObjectUIPosCacheDataActor: AActor
---@field CacheDataList ULuaArrayHelper<FObjectPosUIData>
local AObjectUIPosCacheDataActor = {}

---@param InTemplatePath string
---@param InActor AActor
---@param InPos FVector
---@param InParam string
---@return number
function AObjectUIPosCacheDataActor:AddCacheDataForPath(InTemplatePath, InActor, InPos, InParam) end

---@param InTemplateID number
---@param InActor AActor
---@param InPos FVector
---@param InTeamID number
---@param InParam number
---@return number
function AObjectUIPosCacheDataActor:AddCacheData(InTemplateID, InActor, InPos, InTeamID, InParam) end

---@param InInstanceID number
function AObjectUIPosCacheDataActor:RemoveCacheData(InInstanceID) end

function AObjectUIPosCacheDataActor:CleanData() end

---@param PosUIMgr UObjectPosUIMgr
function AObjectUIPosCacheDataActor:CopyToUIMgr(PosUIMgr) end

---@param InInstanceID number
---@return boolean
function AObjectUIPosCacheDataActor:IsInstanceValid(InInstanceID) end

---@param InInstanceID number
---@param InVisable boolean
function AObjectUIPosCacheDataActor:SetObjectWidgetVisable(InInstanceID, InVisable) end

---@param InInstanceID number
---@param InParam number
function AObjectUIPosCacheDataActor:SetExParam(InInstanceID, InParam) end

---@param InInstanceID number
---@param InPos FVector
function AObjectUIPosCacheDataActor:SetObjectPos(InInstanceID, InPos) end

---@param InInstanceID number
---@param InTarget AActor
function AObjectUIPosCacheDataActor:SetObjectTargetActor(InInstanceID, InTarget) end
