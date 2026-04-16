---@meta

---@class UInterpTrackInstVectorMaterialParam: UInterpTrackInst
---@field MaterialInstances ULuaArrayHelper<UMaterialInstanceDynamic> @MIDs we're using to set the desired parameter.
---@field ResetVectors ULuaArrayHelper<FVector> @Saved values for restoring state when exiting Matinee.
---@field PrimitiveMaterialRefs ULuaArrayHelper<FPrimitiveMaterialRef> @Primitive components on which materials have been overridden.
local UInterpTrackInstVectorMaterialParam = {}
