---@meta

---@class FMRMeshConfiguration
FMRMeshConfiguration = {}


---@class UMeshReconstructorBase: UObject
local UMeshReconstructorBase = {}

function UMeshReconstructorBase:StartReconstruction() end

function UMeshReconstructorBase:StopReconstruction() end

function UMeshReconstructorBase:PauseReconstruction() end

---@return boolean
function UMeshReconstructorBase:IsReconstructionStarted() end

---@return boolean
function UMeshReconstructorBase:IsReconstructionPaused() end

---@param Mesh UMRMeshComponent
---@return FMRMeshConfiguration
function UMeshReconstructorBase:ConnectMRMesh(Mesh) end

function UMeshReconstructorBase:DisconnectMRMesh() end
