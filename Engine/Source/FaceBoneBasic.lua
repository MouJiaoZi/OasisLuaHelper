---@meta

---@class FSymBoneCustomData
---@field LBoneName string
---@field RBoneName string
---@field LPositionValue FVector
---@field RPositionValue FVector
---@field LRotationValue FVector
---@field RRotationValue FVector
---@field LScaleValue FVector
---@field RScaleValue FVector
FSymBoneCustomData = {}


---@class FUnsymBoneCustomData
---@field BoneName string
---@field PositionValue FVector
---@field RotationValue FVector
---@field ScaleValue FVector
FUnsymBoneCustomData = {}


---@class FFaceBoneCustomData
---@field SymBoneCustomDataList ULuaArrayHelper<FSymBoneCustomData>
---@field UnsymBoneCustomDataList ULuaArrayHelper<FUnsymBoneCustomData>
FFaceBoneCustomData = {}


---@class FBoneValueRangeInfo
---@field PositionMinValue FVector
---@field PositionMaxValue FVector
---@field RotationMinValue FVector
---@field RotationMaxValue FVector
---@field ScaleMinValue FVector
---@field ScaleMaxValue FVector
FBoneValueRangeInfo = {}


---@class FSymmetryBone
---@field LBoneName string
---@field RBoneName string
---@field RangeInfo FBoneValueRangeInfo
FSymmetryBone = {}


---@class FUnsymmetryBone
---@field BoneName string
---@field RangeInfo FBoneValueRangeInfo
FUnsymmetryBone = {}


---@class FFaceBoneList
---@field SymmetryBoneList ULuaArrayHelper<FSymmetryBone>
---@field UnsymmetryBoneList ULuaArrayHelper<FUnsymmetryBone>
FFaceBoneList = {}


---@class FFaceController
---@field Name string
---@field SymmetryBoneList ULuaArrayHelper<FSymmetryBone>
---@field UnsymmetryBoneList ULuaArrayHelper<FUnsymmetryBone>
---@field SymmetryBonePositionMinValueList ULuaArrayHelper<FVector>
---@field SymmetryBoneqRotationMinValueList ULuaArrayHelper<FQuat>
---@field SymmetryBoneScaleMinValueList ULuaArrayHelper<FVector>
---@field SymmetryBonePositionMaxValueList ULuaArrayHelper<FVector>
---@field SymmetryBoneqRotationMaxValueList ULuaArrayHelper<FQuat>
---@field SymmetryBoneScaleMaxValueList ULuaArrayHelper<FVector>
---@field UnsymmetryBonePositionMinValueList ULuaArrayHelper<FVector>
---@field UnsymmetryBoneqRotationMinValueList ULuaArrayHelper<FQuat>
---@field UnsymmetryBoneScaleMinValueList ULuaArrayHelper<FVector>
---@field UnsymmetryBonePositionMaxValueList ULuaArrayHelper<FVector>
---@field UnsymmetryBoneqRotationMaxValueList ULuaArrayHelper<FQuat>
---@field UnsymmetryBoneScaleMaxValueList ULuaArrayHelper<FVector>
FFaceController = {}


---@class FFaceControllerList
---@field Controllers ULuaArrayHelper<FFaceController>
FFaceControllerList = {}


---@class UFaceBoneListDataAsset: UDataAsset
---@field SymBoneList ULuaArrayHelper<FSymmetryBone>
---@field UnSymBoneList ULuaArrayHelper<FUnsymmetryBone>
local UFaceBoneListDataAsset = {}


---@class UFaceControllerListDataAsset: UDataAsset
---@field FaceControllerList ULuaArrayHelper<FFaceController>
local UFaceControllerListDataAsset = {}
