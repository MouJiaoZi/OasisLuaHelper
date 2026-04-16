---@meta

---FABTV short for FAvatarBodyTypeVariant
---@class FABTV_BaseVariant_Param
---@field SkeletalMeshVariantMap ULuaMapHelper<USkeletalMesh, USkeletalMesh>
---@field AnimBPClassVariantMap ULuaMapHelper<UAnimInstance, UAnimInstance>
---@field StaticMeshVariantMap ULuaMapHelper<UStaticMesh, UStaticMesh>
FABTV_BaseVariant_Param = {}


---@class FABTV_HeadVariant_Param
---@field VariantAnimSocketName string
---@field VariantAnimBPClass UAnimInstance
---@field SkeletalMeshVariantMap ULuaMapHelper<USkeletalMesh, USkeletalMesh>
FABTV_HeadVariant_Param = {}


---@class FAvatarBodyTypeVariantParam
---@field TargetBodyType number
---@field BodyTypeVariantClass UAvatarBodyTypeVariant
---@field BaseVarientParam FABTV_BaseVariant_Param
---@field HeadVarientParam FABTV_HeadVariant_Param
FAvatarBodyTypeVariantParam = {}
