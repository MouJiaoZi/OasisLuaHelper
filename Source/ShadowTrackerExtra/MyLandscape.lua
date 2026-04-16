---@meta

---@class AMyLandscape: AActor
---@field bUpdateHighQualityMesh boolean
local AMyLandscape = {}

function AMyLandscape:TryCreateHighQualityMesh() end

function AMyLandscape:GameEventFighting() end

function AMyLandscape:GameEventFlying() end

function AMyLandscape:GameEventAvatarDisplay() end

function AMyLandscape:AboutToSwitchViewTargetPlayer() end

---@param bUseLandedDistance boolean
---@param TempModifier number
function AMyLandscape:ModifyAllTilesStreamingDistance(bUseLandedDistance, TempModifier) end

---@param InValue boolean
function AMyLandscape:SetUpdateHighQualityMesh(InValue) end

---@param index number
---@param Material UMaterialInterface
function AMyLandscape:SetRuntimeMaterial(index, Material) end
