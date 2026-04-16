---@meta

---@class IPlaneReplaceInterface
IPlaneReplaceInterface = {}

function IPlaneReplaceInterface:ReplacePlane() end

---@return boolean
function IPlaneReplaceInterface:IfNeedReplace() end

function IPlaneReplaceInterface:TickCheck() end

---@param Plane AActor
function IPlaneReplaceInterface:ReplacePlaneServer(Plane) end

---@param Plane AActor
function IPlaneReplaceInterface:ReplacePlaneClient(Plane) end

---@param Parent AActor
---@param DisplayActor AActor
function IPlaneReplaceInterface:AddNewCmp(Parent, DisplayActor) end

---@param Parent AActor
---@param ExcludeCmps ULuaArrayHelper<UActorComponent>
function IPlaneReplaceInterface:HideCurrentCmp(Parent, ExcludeCmps) end

---@param Parent AActor
function IPlaneReplaceInterface:ModifyTransform(Parent) end

---@param Parent AActor
function IPlaneReplaceInterface:ModifyCamera(Parent) end

---@return FTransform
function IPlaneReplaceInterface:GetOriginRelativeTransform() end
