---@meta

---@class UDeviceScreenType
---@field ScreenType_Short number
---@field ScreenType_Normal number
---@field ScreenType_Long number
UDeviceScreenType = {}


---@class FObjectMemInfo
---@field SerialMemory number
---@field TotalMemory number
---@field UnknownMemoryBytes number
---@field SubMemoryBytes number
---@field TotalMemoryIncludeDepend number
FObjectMemInfo = {}


---@class FObjectInfo
---@field ObjName string
---@field LoadTime number
---@field LoadTimeIncludeDepend number
---@field MemInfo FObjectMemInfo
FObjectInfo = {}


---大厅工具类
---@class ULobbyUtils: UBlueprintFunctionLibrary
local ULobbyUtils = {}

function ULobbyUtils:ClearBPInstance() end

---@param InAnimIns UAnimInstance
---@param NodeTag string
---@param Position number
---@param bNeedTriggerNotifyEnd boolean
function ULobbyUtils:SetSeqPlayerAnimPosition(InAnimIns, NodeTag, Position, bNeedTriggerNotifyEnd) end

---@param InAnimIns UAnimInstance
---@param NodeTag string
---@param Position number
---@param bNeedTriggerNotifyEnd boolean
function ULobbyUtils:SetSeqPlayerAnimPositionWithoutBPInstance(InAnimIns, NodeTag, Position, bNeedTriggerNotifyEnd) end

---@param InPSC UParticleSystemComponent
---@return boolean
function ULobbyUtils:ReactivatePSC(InPSC) end

---@param InPSC UParticleSystemComponent
---@return boolean
function ULobbyUtils:ReactivatePSCWithoutBPInstance(InPSC) end

---@param InMesh UObject
---@return number
function ULobbyUtils:GetMeshBoneNum(InMesh) end

---@param InMesh UObject
function ULobbyUtils:GetMeshBoneTrans(InMesh) end

---@param InMesh UObject
---@param LodIndex number
---@return number
function ULobbyUtils:GetMeshFaceNum(InMesh, LodIndex) end

---@param InMesh UObject
---@return number
function ULobbyUtils:GetMeshDrawCallNum(InMesh) end

---@param InMesh UObject
---@return number
function ULobbyUtils:GetMeshTranslucentMaterialNum(InMesh) end

---@param InParticleComp UParticleSystemComponent
function ULobbyUtils:GetParticleCompRefMesh(InParticleComp) end

---@param InParticleComp UParticleSystemComponent
function ULobbyUtils:GetParticleCompRefMat(InParticleComp) end

---@param ObjName2PackagePathMap ULuaMapHelper<string, string>
---@param bIsExclusiveLoadTime boolean
---@param bIncludeDependcies boolean
---@param bMemIncludeDepencies boolean
function ULobbyUtils:GetObjectInfo(ObjName2PackagePathMap, bIsExclusiveLoadTime, bIncludeDependcies, bMemIncludeDepencies) end

---@param PackagePath string
function ULobbyUtils:GetPackageDependencies(PackagePath) end

---@param InSoftObjPtr UObject
---@return string
function ULobbyUtils:GetPathFromSoftObjectPtr(InSoftObjPtr) end

---@param InSoftObjPtr UObject
---@return string
function ULobbyUtils:GetPathFromSoftObjectPtrWithoutBPInstance(InSoftObjPtr) end

---@return number
function ULobbyUtils:GetDeviceGrade() end

---@return FVector2D
function ULobbyUtils:GetViewportSize() end

---@return UDeviceScreenType
function ULobbyUtils:GetScreenType() end

---@param InActor ALobbySceneMgr
function ULobbyUtils:SetLobbySceneMgr(InActor) end

---@param GameRelativePath string
---@param NoGameRelativePath string
---@param PathHead string
---@param FilterString string
function ULobbyUtils:ScanHandleByPath(GameRelativePath, NoGameRelativePath, PathHead, FilterString) end

---@param InMesh USkeletalMeshComponent
---@param bTickAnim boolean
---@param bRefreshBoneTrans boolean
---@param bForceUpdate boolean
function ULobbyUtils:RefreshMeshBoneTrans(InMesh, bTickAnim, bRefreshBoneTrans, bForceUpdate) end


---@class ULobbyBlueprintUtils: UObject
local ULobbyBlueprintUtils = {}

---@param InPSC UParticleSystemComponent
---@return boolean
function ULobbyBlueprintUtils:ReactivatePSC(InPSC) end

---@param InAnimIns UAnimInstance
---@param NodeTag string
---@param Position number
---@param bNeedTriggerNotifyEnd boolean
function ULobbyBlueprintUtils:SetSeqPlayerAnimPosition(InAnimIns, NodeTag, Position, bNeedTriggerNotifyEnd) end

---@param InMesh UObject
---@return number
function ULobbyBlueprintUtils:GetMeshBoneNum(InMesh) end

---@param InMesh UObject
function ULobbyBlueprintUtils:GetMeshBoneTrans(InMesh) end

---@param InMesh UObject
---@param LodIndex number
---@return number
function ULobbyBlueprintUtils:GetMeshFaceNum(InMesh, LodIndex) end

---@param InMesh UObject
---@return number
function ULobbyBlueprintUtils:GetMeshDrawCallNum(InMesh) end

---@param InMesh UObject
---@return number
function ULobbyBlueprintUtils:GetMeshTranslucentMaterialNum(InMesh) end

---@param InParticleComp UParticleSystemComponent
function ULobbyBlueprintUtils:GetParticleCompRefMesh(InParticleComp) end

---@param InParticleComp UParticleSystemComponent
function ULobbyBlueprintUtils:GetParticleCompRefMat(InParticleComp) end

---@param ObjName2PackagePathMap ULuaMapHelper<string, string>
---@param bIsExclusiveLoadTime boolean
---@param bIncludeDepencies boolean
---@param bMemIncludeDepencies boolean
function ULobbyBlueprintUtils:GetObjectInfo(ObjName2PackagePathMap, bIsExclusiveLoadTime, bIncludeDepencies, bMemIncludeDepencies) end

---@param ObjNameList ULuaArrayHelper<string>
function ULobbyBlueprintUtils:GetObjectMemeory(ObjNameList) end

---@param PackagePath string
function ULobbyBlueprintUtils:GetPackageDependencies(PackagePath) end

---@param InSoftObjPtr UObject
---@return string
function ULobbyBlueprintUtils:GetPathFromSoftObjectPtr(InSoftObjPtr) end

---@return number
function ULobbyBlueprintUtils:GetDeviceGrade() end

---@param InMesh USkeletalMeshComponent
---@param bTickAnim boolean
---@param bRefreshBoneTrans boolean
---@param bForceUpdate boolean
function ULobbyBlueprintUtils:RefreshMeshBoneTrans(InMesh, bTickAnim, bRefreshBoneTrans, bForceUpdate) end

---@param GameRelativePath string
---@param NoGameRelativePath string
---@param PathHead string
---@param FilterString string
function ULobbyBlueprintUtils:ScanHandleByPath(GameRelativePath, NoGameRelativePath, PathHead, FilterString) end
