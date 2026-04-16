---@meta

---@class FDecalIndex
FDecalIndex = {}


---@class UInfectionTDMDecalComponent: UActorComponent
---@field CoordX number
---@field CoordY number
---@field bIsFancy boolean
---@field FancyDecalDyeID number
---@field DecalScale FVector
---@field DecalRotation FRotator
---@field bOnlyLandscape boolean
---@field DefaultCameraTestLength number
---@field MaxDecalCount number
---@field DecalMaxSecond number
---@field bUpdate boolean
---@field bForceCreateComponent boolean
---@field bRemoveV2 boolean
---@field bWithCustmeXY boolean
---@field UVScale FVector2D
---@field DecalIndexArray ULuaArrayHelper<number>
---@field bOverrideScale boolean
---@field OverrideScale FVector
---@field bOverrideLocation boolean
---@field OverrideLocation FVector
---@field bOverrideRotation boolean
---@field OverrideRotation FRotator
---@field bOverrideTransform boolean
---@field OverrideTransform FTransform
---@field CameraTraceLength number
---@field DecalNum number
local UInfectionTDMDecalComponent = {}

function UInfectionTDMDecalComponent:TestDecal() end

---@return FTransform
function UInfectionTDMDecalComponent:GetDecalTransform() end

---@return FTransform
function UInfectionTDMDecalComponent:K2_GetDecalTransform() end

---@param InRotator FRotator
---@return boolean
function UInfectionTDMDecalComponent:DecalWithRotation(InRotator) end

---@param InLocation FVector
---@return boolean
function UInfectionTDMDecalComponent:DecalWithLocation(InLocation) end

---@param InScale FVector
---@return boolean
function UInfectionTDMDecalComponent:DecalWithScale(InScale) end

---@param InTransform FTransform
---@return boolean
function UInfectionTDMDecalComponent:DecalWithTransform(InTransform) end

---@return boolean
function UInfectionTDMDecalComponent:DecalInternal() end

---@param InLength number
function UInfectionTDMDecalComponent:SetCameraTraceLength(InLength) end

function UInfectionTDMDecalComponent:ClearAllDecal() end
