---@meta

---The valid BoneVisibilityStates values; A bone is only visible if it is *exactly* 1
---@class EBoneVisibilityStatus
---@field BVS_HiddenByParent number @Bone is hidden because it's parent is hidden.
---@field BVS_Visible number @Bone is visible.
---@field BVS_ExplicitlyHidden number @Bone is hidden directly.
---@field BVS_MAX number
EBoneVisibilityStatus = {}


---PhysicsBody options when bone is hidden
---@class EPhysBodyOp
---@field PBO_None number @Don't do anything.
---@field PBO_Term number @Terminate - if you terminate, you won't be able to re-init when unhidden.
---@field PBO_MAX number
EPhysBodyOp = {}


---Skinned Mesh Update Flag based on rendered or not.
---@class EMeshComponentUpdateFlag
---@field AlwaysTickPoseAndRefreshBones number @Always Tick and Refresh BoneTransforms whether rendered or not.
---@field AlwaysTickPose number @Always Tick, but Refresh BoneTransforms only when rendered.
---@field OnlyTickMontagesWhenNotRendered number @When rendered Tick Pose and Refresh Bone Transforms, otherwise, just update montages and skip everything else. (AnimBP graph will not be updated).
---@field OnlyTickPoseWhenRendered number @Tick only when rendered, and it will only RefreshBoneTransforms when rendered.
---@field StartNoTickPose number
EMeshComponentUpdateFlag = {}


---Values for specifying bone space.
---@class EBoneSpaces
---@field WorldSpace number @Set absolute position of bone in world space.
---@field ComponentSpace number @Set position of bone in components reference frame.
EBoneSpaces = {}


---Vertex skin weight info supplied for a component override.
---@class FSkelMeshSkinWeightInfo
FSkelMeshSkinWeightInfo = {}


---LOD specific setup for the skeletal mesh component.
---@class FSkelMeshComponentLODInfo
---@field HiddenMaterials ULuaArrayHelper<boolean> @Material corresponds to section. To show/hide each section, use this.
FSkelMeshComponentLODInfo = {}


---Skinned mesh component that supports bone skinned mesh rendering. This class does not support animation.
---@class FSkinWeightInfoForFPP
---@field SourceBoneName string
---@field TargetBoneName string
---@field WeightScale number
FSkinWeightInfoForFPP = {}


---@class FOnAnimUpdateRateParamsCreated : ULuaSingleDelegate
FOnAnimUpdateRateParamsCreated = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FAnimUpdateRateParameters) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAnimUpdateRateParamsCreated:Bind(Callback, Obj) end

---执行委托
---@param Param1 FAnimUpdateRateParameters
function FOnAnimUpdateRateParamsCreated:Execute(Param1) end


---@class USkinnedMeshComponent: UMeshComponent
---@field MasterPoseComponent USkinnedMeshComponent @If set, this SkeletalMeshComponent will not use its SpaceBase for bone transform, but will use the component space transforms from the MasterPoseComponent. This is used when constructing a character using multiple skeletal meshes sharing the same skeleton within the same Actor.
---@field ComponentSpaceBoneExtraTransform ULuaArrayHelper<FTransform> @const getters for previous transform idea
---@field bUseBoundsFromMasterPoseComponent number @When true, we will just using the bounds from our MasterPoseComponent.  This is useful for when we have a Mesh Parented to the main SkelMesh (e.g. outline mesh or a full body overdraw effect that is toggled) that is always going to be the same bounds as parent.  We want to do no calculations in that case.
---@field bOverrideMinLod number @Whether we should use the min lod specified in MinLodModel for this component instead of the min lod in the mesh
---@field ForcedLodModel number @If 0, auto-select LOD level. if >0, force to (ForcedLodModel-1).
---@field MinLodModel number @This is the min LOD that this component will use.  (e.g. if set to 2 then only 2+ LOD Models will be used.) This is useful to set on meshes which are known to be a certain distance away and still want to have better LODs when zoomed in on them.
---@field MaxLodModel number
---@field LODDynamicMask ULuaArrayHelper<boolean>
---@field LODInfo ULuaArrayHelper<FSkelMeshComponentLODInfo> @LOD array info. Each index will correspond to the LOD index *
---@field StreamingDistanceMultiplier number @Allows adjusting the desired streaming distance of streaming textures that uses UV 0. 1.0 is the default, whereas a higher value makes the textures stream in sooner from far away. A lower value (0.0-1.0) makes the textures stream in later (you have to be closer). Value can be < 0 (from legcay content, or code changes)
---@field WireframeColor FColor @Wireframe color
---@field bForceWireframe number @Forces the mesh to draw in wireframe mode.
---@field bDisplayBones_DEPRECATED number @Draw the skeleton hierarchy for this skel mesh.
---@field bDisableMorphTarget number @Disable Morphtarget for this component.
---@field bHideSkin number @Don't bother rendering the skin.
---@field bPerBoneMotionBlur number @If true, use per-bone motion blur on this skeletal mesh (requires additional rendering, can be disabled to save performance).
---@field UpdateBoundsRate number
---@field bComponentUseFixedSkelBounds number @When true, skip using the physics asset etc. and always use the fixed bounds defined in the SkeletalMesh.
---@field bConsiderAllBodiesForBounds number @If true, when updating bounds from a PhysicsAsset, consider _all_ BodySetups, not just those flagged with bConsiderForBounds.
---@field bFixCachedLocalBoundsIssue number @If true, cache correct local bounds. Otherwise cache a bounds transformed twice. See USkeletalMeshComponent::CalcBounds() --lyonarzhang
---@field MeshComponentUpdateFlag EMeshComponentUpdateFlag @This is update frequency flag even when our Owner has not been rendered recently SMU_AlwaysTickPoseAndRefreshBones,			// Always Tick and Refresh BoneTransforms whether rendered or not SMU_AlwaysTickPose,							// Always Tick, but Refresh BoneTransforms only when rendered SMU_OnlyTickPoseWhenRendered,				// Tick only when rendered, and it will only RefreshBoneTransforms when rendered
---@field NeedUpdateEveryFrame boolean
---@field NeedRateTickWhenNoRender boolean
---@field bIndirectLightingCachePositionUsingActorPosition number @If true, IndirectLightingCache will use actor postion to sample
---@field bForceMeshObjectUpdate number @If true, UpdateTransform will always result in a call to MeshObject->Update.
---@field bCanHighlightSelectedSections number @Whether or not we can highlight selected sections - this should really only be done in the editor
---@field bRecentlyRendered number @true if mesh has been recently rendered, false otherwise
---@field CustomSortAlternateIndexMode number @Editor only. Used for manually selecting the alternate indices for TRISORT_CustomLeftRight sections.
---@field bCastCapsuleDirectShadow number @Whether to use the capsule representation (when present) from a skeletal mesh's ShadowPhysicsAsset for direct shadowing from lights. This type of shadowing is approximate but handles extremely wide area shadowing well.  The softness of the shadow depends on the light's LightSourceAngle / SourceRadius. This flag will force bCastInsetShadow to be enabled.
---@field bCastCapsuleIndirectShadow number @Whether to use the capsule representation (when present) from a skeletal mesh's ShadowPhysicsAsset for shadowing indirect lighting (from lightmaps or skylight).
---@field CapsuleIndirectShadowMinVisibility number @Controls how dark the capsule indirect shadow can be.
---@field bCPUSkinning number @Whether or not to CPU skin this component, requires render data refresh after changing
---@field CachedLocalBounds FBoxSphereBounds @LocalBounds cached, so they're computed just once.
---@field bCachedLocalBoundsUpToDate boolean @true when CachedLocalBounds is up to date.
---@field bEnableUpdateRateOptimizations boolean @if TRUE, Owner will determine how often animation will be updated and evaluated. See AnimUpdateRateTick() This allows to skip frames for performance. (For example based on visibility and size on screen).
---@field bDisplayDebugUpdateRateOptimizations boolean @Enable on screen debugging of update rate optimization. Red = Skipping 0 frames, Green = skipping 1 frame, Blue = skipping 2 frames, black = skipping more than 2 frames.
---@field bRenderStatic number @If true, render as static in reference pose.
---@field bUseBoneVisibilityPropagateFeature boolean @Engine modify Start +++++++++
---@field bOverrideAnimUpdateRateParameters boolean
---@field bOverrideAnimUpdateRateParameters_ByComponent boolean
---@field bRunWithOverrideAnimUpdateRateParameters boolean
---@field CustomAnimUpdateRateParams any
local USkinnedMeshComponent = {}

---Override the Physics Asset of the mesh. It uses SkeletalMesh.PhysicsAsset, but if you'd like to override use this function
---@param NewPhysicsAsset UPhysicsAsset
---@param bForceReInit boolean
function USkinnedMeshComponent:SetPhysicsAsset(NewPhysicsAsset, bForceReInit) end

---Get the number of LODs on this component
---@return number
function USkinnedMeshComponent:GetNumLODs() end

---Set MinLodModel of the mesh component
---@param InNewMinLOD number
function USkinnedMeshComponent:SetMinLOD(InNewMinLOD) end

---Set MinLodModel of the mesh component
---@param InNewForcedLOD number
function USkinnedMeshComponent:SetForcedLOD(InNewForcedLOD) end

---Get the LOD Bias of this component
---@param bNewValue boolean
function USkinnedMeshComponent:SetCastCapsuleDirectShadow(bNewValue) end

---@param bNewValue boolean
function USkinnedMeshComponent:SetCastCapsuleIndirectShadow(bNewValue) end

---@param NewValue number
function USkinnedMeshComponent:SetCapsuleIndirectShadowMinVisibility(NewValue) end

---Returns the number of bones in the skeleton.
---@return number
function USkinnedMeshComponent:GetNumBones() end

---Find the index of bone by name. Looks in the current SkeletalMesh being used by this SkeletalMeshComponent.
---@param BoneName string
---@return number
function USkinnedMeshComponent:GetBoneIndex(BoneName) end

---Get Bone Name from index
---@param BoneIndex number
---@return string
function USkinnedMeshComponent:GetBoneName(BoneIndex) end

---Returns bone name linked to a given named socket on the skeletal mesh component. If you're unsure to deal with sockets or bones names, you can use this function to filter through, and always return the bone name.
---@param InSocketName string
---@return string
function USkinnedMeshComponent:GetSocketBoneName(InSocketName) end

---Change the SkeletalMesh that is rendered for this Component. Will re-initialize the animation tree etc.
---@param NewMesh USkeletalMesh
---@param bReinitPose boolean
---@param bCheckBoneMap boolean
---@param bTickAnimationNow boolean
function USkinnedMeshComponent:SetSkeletalMesh(NewMesh, bReinitPose, bCheckBoneMap, bTickAnimationNow) end

---Get Parent Bone of the input bone
---@param BoneName string
---@return string
function USkinnedMeshComponent:GetParentBone(BoneName) end

function USkinnedMeshComponent:ClearBoneExtraOffset() end

---@param InputBoneName string
---@param InputTranslation FVector
---@return number
function USkinnedMeshComponent:OffsetBoneExtraOffsprings(InputBoneName, InputTranslation) end

---@param InputBoneName string
---@param InputRotation FRotator
---@return number
function USkinnedMeshComponent:RotateBoneExtraOffsprings(InputBoneName, InputRotation) end

---@param InputBoneName string
---@param InputScale FVector
---@return number
function USkinnedMeshComponent:ScaleBoneExtraOffsprings(InputBoneName, InputScale) end

---Allow override of vertex colors on a per-component basis, taking array of Blueprint-friendly LinearColors.
---@param LODIndex number
---@param VertexColors ULuaArrayHelper<FLinearColor>
function USkinnedMeshComponent:SetVertexColorOverride_LinearColor(LODIndex, VertexColors) end

---Clear any applied vertex color override
---@param LODIndex number
function USkinnedMeshComponent:ClearVertexColorOverride(LODIndex) end

---Allow override of skin weights on a per-component basis.
---@param LODIndex number
---@param SkinWeights ULuaArrayHelper<FSkelMeshSkinWeightInfo>
function USkinnedMeshComponent:SetSkinWeightOverride(LODIndex, SkinWeights) end

---Clear any applied skin weight override
---@param LODIndex number
function USkinnedMeshComponent:ClearSkinWeightOverride(LODIndex) end

---Setup an override Skin Weight Profile for this component
---@param InProfileName string
---@return boolean
function USkinnedMeshComponent:SetSkinWeightProfile(InProfileName) end

---Clear the Skin Weight Profile from this component, in case it is set
function USkinnedMeshComponent:ClearSkinWeightProfile() end

---Update Skin weight for remapping skeleton
---@param WeightInfo FSkinWeightInfoForFPP
function USkinnedMeshComponent:UpdateSkinWeightForRemapping(WeightInfo) end

---Unload a Skin Weight Profile's skin weight buffer (if created)
---@param InProfileName string
function USkinnedMeshComponent:UnloadSkinWeightProfile(InProfileName) end

---@param InProfileName string
---@return boolean
function USkinnedMeshComponent:HasSkinweightProfileByName(InProfileName) end

---@param LODIndex number
function USkinnedMeshComponent:SwitchToOverrideSkinWeights(LODIndex) end

---Invalidate Cached Bounds, when Mesh Component has been updated.
function USkinnedMeshComponent:InvalidateCachedBounds() end

---Recreates update rate params and internal tracker data
function USkinnedMeshComponent:RefreshUpdateRateParams() end

function USkinnedMeshComponent:RefreshUpdateRateParamsEnsureTrackerOrder() end

---Set MasterPoseComponent for this component
---@param NewMasterBoneComponent USkinnedMeshComponent
---@param bForceUpdate boolean
function USkinnedMeshComponent:SetMasterPoseComponent(NewMasterBoneComponent, bForceUpdate) end

function USkinnedMeshComponent:RemoveMasterPoseComponent() end

---@param DirtySlaveMeshComponent USkinnedMeshComponent
function USkinnedMeshComponent:TryRemoveDirtySlaveComponent(DirtySlaveMeshComponent) end

---Get Bone Transform from index
---@param BoneIndex number
---@return FTransform
function USkinnedMeshComponent:GetBoneTransform(BoneIndex) end

---Get Bone Location
---@param BoneName string
---@param Space EBoneSpaces
---@return FVector
function USkinnedMeshComponent:GetBoneLocation(BoneName, Space) end

---Tests if BoneName is child of (or equal to) ParentBoneName. Note - will return false if ChildBoneIndex is the same as ParentBoneIndex ie. must be strictly a child.
---@param BoneName string
---@param ParentBoneName string
---@return boolean
function USkinnedMeshComponent:BoneIsChildOf(BoneName, ParentBoneName) end

---Transform a location/rotation from world space to bone relative space. This is handy if you know the location in world space for a bone attachment, as AttachComponent takes location/rotation in bone-relative space.
---@param BoneName string
---@param InPosition FVector
---@param InRotation FRotator
---@param OutPosition FVector
---@param OutRotation FRotator
function USkinnedMeshComponent:TransformToBoneSpace(BoneName, InPosition, InRotation, OutPosition, OutRotation) end

---Transform a location/rotation in bone relative space to world space.
---@param BoneName string
---@param InPosition FVector
---@param InRotation FRotator
---@param OutPosition FVector
---@param OutRotation FRotator
function USkinnedMeshComponent:TransformFromBoneSpace(BoneName, InPosition, InRotation, OutPosition, OutRotation) end

---finds the closest bone to the given location
---@param TestLocation FVector
---@param BoneLocation FVector
---@param IgnoreScale number
---@param bRequirePhysicsAsset boolean
---@return string
function USkinnedMeshComponent:FindClosestBone_K2(TestLocation, BoneLocation, IgnoreScale, bRequirePhysicsAsset) end

---Hides the specified bone with name.  Currently this just enforces a scale of 0 for the hidden bones. Compoared to HideBone By Index - This keeps track of list of bones and update when LOD changes
---@param BoneName string
---@param PhysBodyOption EPhysBodyOp
function USkinnedMeshComponent:HideBoneByName(BoneName, PhysBodyOption) end

---UnHide the specified bone with name.  Currently this just enforces a scale of 0 for the hidden bones. Compoared to HideBone By Index - This keeps track of list of bones and update when LOD changes
---@param BoneName string
function USkinnedMeshComponent:UnHideBoneByName(BoneName) end

---Determines if the specified bone is hidden.
---@param BoneName string
---@return boolean
function USkinnedMeshComponent:IsBoneHiddenByName(BoneName) end

---@param BoneIndex number
---@param PhysBodyOption EPhysBodyOp
function USkinnedMeshComponent:PropagateBoneHidden(BoneIndex, PhysBodyOption) end

---@param BoneIndex number
function USkinnedMeshComponent:PropagateBoneUnHidden(BoneIndex) end

---Engine modify End -----------
---@param ClipPlane FPlane
---@param PlaneIndex number
function USkinnedMeshComponent:EnableMeshClipPlane(ClipPlane, PlaneIndex) end

---@param PlaneIndex number
function USkinnedMeshComponent:DisableMeshClipPlane(PlaneIndex) end

---@param ClipPlane FPlane
---@param ClipSphere FVector4
function USkinnedMeshComponent:EnableMeshClipArc(ClipPlane, ClipSphere) end

function USkinnedMeshComponent:DisableMeshClipArc() end

---Num of ClipPlanes is 4 0: Top Plane 1: Down Plane 2: Left Plane 3: Right Plane
---@param ClipPlanes ULuaArrayHelper<FPlane>
---@param bBox boolean
function USkinnedMeshComponent:EnableMeshClip4Planes(ClipPlanes, bBox) end

function USkinnedMeshComponent:DisableMeshClip4Planes() end

---Set whether this skinned mesh should be rendered as static mesh in a reference pose
---@param bNewValue boolean
function USkinnedMeshComponent:SetRenderStatic(bNewValue) end
