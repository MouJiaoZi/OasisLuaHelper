---@meta

---Bone translation retargeting mode.
---@class EBoneTranslationRetargetingMode
---@field Animation number @Use translation from animation data.
---@field Skeleton number @Use fixed translation from Skeleton.
---@field AnimationScaled number @Use Translation from animation, but scale length by Skeleton's proportions.
---@field AnimationRelative number @Use Translation from animation, but also play the difference from retargeting pose as an additive.
EBoneTranslationRetargetingMode = {}


---This is a mapping table between bone in a particular skeletal mesh and bone of this skeleton set.
---@class FSkeletonToMeshLinkup
---@field SkeletonToMeshTable ULuaArrayHelper<number> @Mapping table. Size must be same as size of bone tree (not Mesh Ref Pose). No index should be more than the number of bones in this skeleton -1 indicates no match for this bone - will be ignored.
---@field MeshToSkeletonTable ULuaArrayHelper<number> @Mapping table. Size must be same as size of ref pose (not bone tree). No index should be more than the number of bones in this skeletalmesh -1 indicates no match for this bone - will be ignored.
FSkeletonToMeshLinkup = {}


---Each Bone node in BoneTree
---@class FBoneNode
---@field Name_DEPRECATED string @Name of bone, this is the search criteria to match with mesh bone. This will be NAME_None if deleted.
---@field ParentIndex_DEPRECATED number @Parent Index. -1 if not used. The root has 0 as its parent. Do not delete the element but set this to -1. If it is revived by other reason, fix up this link.
---@field TranslationRetargetingMode EBoneTranslationRetargetingMode @Retargeting Mode for Translation Component.
---@field PerBoneOverrideRetargetingModeConfig ULuaMapHelper<string, EBoneTranslationRetargetingMode>
FBoneNode = {}


---This is a mapping table between bone in a particular skeletal mesh and bone of this skeleton set.
---@class FReferencePose
---@field PoseName string
---@field ReferencePose ULuaArrayHelper<FTransform>
FReferencePose = {}


---@class FBoneReductionSetting
---@field BonesToRemove ULuaArrayHelper<string>
FBoneReductionSetting = {}


---@class FNameMapping
---@field NodeName string
---@field BoneName string
FNameMapping = {}


---@class FRigConfiguration
---@field BoneMappingTable ULuaArrayHelper<FNameMapping>
FRigConfiguration = {}


---@class FAnimSlotGroup
---@field GroupName string
---@field SlotNames ULuaArrayHelper<string>
FAnimSlotGroup = {}


---@class FVirtualBone
---@field SourceBoneName string
---@field TargetBoneName string
---@field VirtualBoneName string
FVirtualBone = {}


---@class FBoneOffset
---@field bTransition boolean
---@field bRotation boolean
---@field bScale boolean
FBoneOffset = {}


---@class FCustomSkeletonName
---@field SkeletonNameMap ULuaMapHelper<string, string>
---@field SkeletonNotOffsetName ULuaMapHelper<string, FBoneOffset>
FCustomSkeletonName = {}


---@class FOverrideBoneTranslationRetargetingModeConfig
---@field RetargetingModeConfig ULuaMapHelper<EBoneTranslationRetargetingMode, EBoneTranslationRetargetingMode>
FOverrideBoneTranslationRetargetingModeConfig = {}


---@class FAreAllSkeletonsCompatible : ULuaSingleDelegate
FAreAllSkeletonsCompatible = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAreAllSkeletonsCompatible:Bind(Callback, Obj) end

---执行委托
function FAreAllSkeletonsCompatible:Execute() end


---USkeleton : that links between mesh and animation - Bone hierarchy for animations - Bone/track linkup between mesh and animation - Retargetting related - Mirror table
---@class USkeleton: UObject, IInterface_AssetUserData
---@field BoneTree ULuaArrayHelper<FBoneNode> @Skeleton bone tree - each contains name and parent index*
---@field OverrideBoneTranslationRetargetingModeConfigMap ULuaMapHelper<string, FOverrideBoneTranslationRetargetingModeConfig>
---@field RefLocalPoses_DEPRECATED ULuaArrayHelper<FTransform> @Reference skeleton poses in local space
---@field VirtualBoneGuid FGuid @Guid for virtual bones. Separate so that we don't have to dirty the original guid when only changing virtual bones
---@field VirtualBones ULuaArrayHelper<FVirtualBone> @Array of this skeletons virtual bones. These are new bones are links between two existing bones and are baked into all the skeletons animations
---@field CompatibleSkeletons ULuaArrayHelper<USkeleton> @The list of compatible skeletons. This is an array of TSoftObjectPtr in order to prevent all skeletons to be loaded, as we only want to load things on demand. As this is EditAnywhere and an array of TSoftObjectPtr, checking validity of pointers is needed.
---@field MultiSkeletonNameMap ULuaMapHelper<USkeleton, FCustomSkeletonName>
---@field CustomSkeletonNameMap ULuaMapHelper<string, string>
---@field SkeletonNotOffsetName ULuaMapHelper<string, FBoneOffset>
---@field RefBoneNames ULuaArrayHelper<string>
---@field ExcludeBoneInfos ULuaArrayHelper<FSkinWeightInfoForFPP>
---@field ExcludeBoneNameForAvatar ULuaArrayHelper<string>
---@field bIsFPPSkeleton boolean @当骨架增加骨骼时，跳过 Guid 更新和 DDC 重新构建
---@field Sockets ULuaArrayHelper<USkeletalMeshSocket> @Array of named socket locations, set up in editor and used as a shortcut instead of specifying everything explicitly to AttachComponent in the SkeletalMeshComponent.
---@field SmartNames FSmartNameContainer
---@field BlendProfiles ULuaArrayHelper<UBlendProfile> @List of blend profiles available in this skeleton
---@field SlotGroups ULuaArrayHelper<FAnimSlotGroup>
---@field AssetUserData ULuaArrayHelper<UAssetUserData> @Array of user data stored with the asset
local USkeleton = {}

---Global compatibility delegate, used to override skeleton compatibility. If this returns true, no additional compatibility checks are made.
---@param SourceSkeleton USkeleton
function USkeleton:AddCompatibleSkeleton(SourceSkeleton) end

---@param SourceSkeleton USkeleton
function USkeleton:AddCompatibleSkeletonSoft(SourceSkeleton) end
