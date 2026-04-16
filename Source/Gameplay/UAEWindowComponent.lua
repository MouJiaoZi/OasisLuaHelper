---@meta

---@class FUAEWindowRepData
---@field Transform FTransform
---@field PathToLoad string
---@field ID number
---@field bBroken boolean
FUAEWindowRepData = {}


---@class FUAEWindowPackageData
---@field HouseActor AUAEHouseActor
---@field WindowData FUAEWindowRepData
FUAEWindowPackageData = {}


---@class UUAEWindowComponent: UStaticMeshComponent
---@field ID number
---@field bBroken boolean
---@field BrokenMesh UStaticMesh
---@field BrokenEffect UParticleSystem
---@field CachedRepData FUAEWindowRepData
local UUAEWindowComponent = {}

---@return FUAEWindowRepData
function UUAEWindowComponent:GetRepData() end

---@param Instigator APlayerController
---@param bLocal boolean
---@param InCount boolean
function UUAEWindowComponent:HandleBroken(Instigator, bLocal, InCount) end

---@param bInitial boolean
---@param bLocal boolean
function UUAEWindowComponent:NotifyRepDataUpdated(bInitial, bLocal) end

---@param InCount boolean
function UUAEWindowComponent:NotifyServerBroken(InCount) end

---@param bInitial boolean
---@param bLocal boolean
function UUAEWindowComponent:LocalHandleWindowBroken(bInitial, bLocal) end

---@param bInitial boolean
---@param bLocal boolean
function UUAEWindowComponent:LocalHandleWindowBrokenBP(bInitial, bLocal) end

function UUAEWindowComponent:ReuseWindow() end

function UUAEWindowComponent:ReuseWindowBP() end

function UUAEWindowComponent:ReleaseWindow() end

function UUAEWindowComponent:ReleaseWindowBP() end
