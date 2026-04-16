---@meta

---@class FOverlapCullingData
---@field UpperCullPlane number
---@field DownerCullPlane number
FOverlapCullingData = {}


---@class ICheapShapeComponentInterface
ICheapShapeComponentInterface = {}

---@return boolean
function ICheapShapeComponentInterface:ShouldDoLineTrace() end

---@return boolean
function ICheapShapeComponentInterface:ShouldGenerateEventWhileGenerateEventIsOff() end

---@return boolean
function ICheapShapeComponentInterface:ShouldDoPlanCulling() end

---@return FOverlapCullingData
function ICheapShapeComponentInterface:GetOverlapCullingData() end

---@param ShouldDoPlanCulling boolean
---@param bEnableTracing boolean
---@param owner AActor
---@param componentLoc FVector
---@param HitComp UPrimitiveComponent
---@param OverlapCullingData FOverlapCullingData
---@return boolean
function ICheapShapeComponentInterface:ShouldCullout(ShouldDoPlanCulling, bEnableTracing, owner, componentLoc, HitComp, OverlapCullingData) end
