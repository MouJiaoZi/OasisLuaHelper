---@meta

---@class UFaceControllerInfo: USceneComponent
---@field NeedInit boolean
---@field FaceControllerFilename string
---@field BoneNamesFilename string
---@field FaceBoneList FFaceBoneList
---@field SymBoneList ULuaArrayHelper<FSymmetryBone>
---@field UnsymBoneList ULuaArrayHelper<FUnsymmetryBone>
---@field FaceBoneTransforms ULuaArrayHelper<FTransform>
---@field FaceControllerList FFaceControllerList
---@field Controllers ULuaArrayHelper<FFaceController>
---@field ControllersNames ULuaArrayHelper<string>
---@field ControllersValues ULuaArrayHelper<number>
local UFaceControllerInfo = {}

---@param InBakeFaceSkeleton USkeletalMesh
function UFaceControllerInfo:InitEditMesh(InBakeFaceSkeleton) end

---@param Filename string
function UFaceControllerInfo:LoadFaceControllerList(Filename) end

---@param ControllerId number
---@param Value number
function UFaceControllerInfo:ChangeControllerValue(ControllerId, Value) end

---@param InBakeFaceSkeletalMesh USkeletalMesh
function UFaceControllerInfo:SetEditMesh(InBakeFaceSkeletalMesh) end

---@param skMeshComp USkeletalMeshComponent
function UFaceControllerInfo:UpdateFaceBoneTransformsToAnimInst(skMeshComp) end

function UFaceControllerInfo:Reset() end

function UFaceControllerInfo:InitBoneTransform() end
