---@meta

---A custom component that efficiently renders multiple instances of the same StaticMesh.
---@class UCustomInstancedStaticMeshComponent: UStaticMeshComponent
---@field bUseCustomBounds boolean
---@field PerInstanceSMData ULuaArrayHelper<FInstancedStaticMeshInstanceData> @Array of instances, bulk serialized.
---@field PerInstanceSMCustomData ULuaArrayHelper<FVector4> @Array of custom data for instances. This will contains NumCustomDataFloats*InstanceCount entries. The entries are represented sequantially, in instance order. Can be read in a material and manipulated through Blueprints. Example: If NumCustomDataFloats is 1, then each entry will belong to an instance. Custom data 0 will belong to Instance 0. Custom data 1 will belong to Instance 1 etc. Example: If NumCustomDataFloats is 2, then each pair of sequential entries belong to an instance. Custom data 0 and 1 will belong to Instance 0. Custom data 2 and 3 will belong to Instance 2 etc.
---@field PerInstanceSMCustomDataAdd ULuaArrayHelper<FVector4>
---@field InstancingRandomSeed number @Value used to seed the random number stream that generates random numbers for each of this mesh's instances. The random number is stored in a buffer accessible to materials through the PerInstanceRandom expression. If this is set to zero (default), it will be populated automatically by the editor.
---@field InstanceStartCullDistance number @Distance from camera at which each instance begins to fade out.
---@field InstanceEndCullDistance number @Distance from camera at which each instance completely fades out.
---@field InstanceNearCullDistance number @Distance from camera at which each instance.
---@field InstanceReorderTable ULuaArrayHelper<number> @Mapping from PerInstanceSMData order to instance render buffer order. If empty, the PerInstanceSMData order is used.
---@field RemovedInstances ULuaArrayHelper<number>
---@field InstanceVisibilityMapping ULuaMapHelper<number, FInstanceVisibilityData>
---@field UseDynamicInstanceBuffer boolean @Set to true to permit updating the vertex buffer used in the instance buffer without recreating it completely. This should be used if you plan on dynamically changing the instances at run-time.
---@field KeepInstanceBufferCPUAccess boolean @Set to true to keep instance buffer accessible by the CPU, otherwise it's discarded and considered never changing, only GPU has a copy of the data.
---@field StashInstanceTransform ULuaMapHelper<number, FMatrix>
---@field NumPendingLightmaps number @Number of pending lightmaps still to be calculated (Apply()'d).
local UCustomInstancedStaticMeshComponent = {}

---Add an instance to this component. Transform is given in local space of this component.
---@param InstanceTransform FTransform
---@return number
function UCustomInstancedStaticMeshComponent:AddInstance(InstanceTransform) end

---Add an instance to this component. Transform is given in world space.
---@param WorldTransform FTransform
---@return number
function UCustomInstancedStaticMeshComponent:AddInstanceWorldSpace(WorldTransform) end

---Update custom data for specific instance
---@param InstanceIndex number
---@param CustomDataValue FVector4
---@param CustomDataAddValue FVector4
---@param bMarkRenderStateDirty boolean
---@return boolean
function UCustomInstancedStaticMeshComponent:SetCustomDataValue(InstanceIndex, CustomDataValue, CustomDataAddValue, bMarkRenderStateDirty) end

---Get the transform for the instance specified. Instance is returned in local space of this component unless bWorldSpace is set.  Returns True on success.
---@param InstanceIndex number
---@param OutInstanceTransform FTransform
---@param bWorldSpace boolean
---@return boolean
function UCustomInstancedStaticMeshComponent:GetInstanceTransform(InstanceIndex, OutInstanceTransform, bWorldSpace) end

---Update the transform for the instance specified.
---@param InstanceIndex number
---@param NewInstanceTransform FTransform
---@param bWorldSpace boolean
---@param bMarkRenderStateDirty boolean
---@param bTeleport boolean
---@return boolean
function UCustomInstancedStaticMeshComponent:UpdateInstanceTransform(InstanceIndex, NewInstanceTransform, bWorldSpace, bMarkRenderStateDirty, bTeleport) end

---@param StartInstanceIndex number
---@param NumInstances number
---@param StartCustomData ULuaArrayHelper<FVector4>
---@param StartCustomDataAdd ULuaArrayHelper<FVector4>
---@param bMarkRenderStateDirty boolean
---@param bTeleport boolean
---@return boolean
function UCustomInstancedStaticMeshComponent:BatchUpdateInstancesData(StartInstanceIndex, NumInstances, StartCustomData, StartCustomDataAdd, bMarkRenderStateDirty, bTeleport) end

---Remove the instance specified. Returns True on success. Note that this will leave the array in order, but may shrink it.
---@param InstanceIndex number
---@return boolean
function UCustomInstancedStaticMeshComponent:RemoveInstance(InstanceIndex) end

---Clear all instances being rendered by this component.
function UCustomInstancedStaticMeshComponent:ClearInstances() end

---Get the number of instances in this component.
---@return number
function UCustomInstancedStaticMeshComponent:GetInstanceCount() end

---Sets the fading start and culling end distances for this component.
---@param StartCullDistance number
---@param EndCullDistance number
function UCustomInstancedStaticMeshComponent:SetCullDistances(StartCullDistance, EndCullDistance) end

---Sets the cull near distance for this component.
---@param CullDistance number
function UCustomInstancedStaticMeshComponent:SetNearCullDistance(CullDistance) end

---Returns the instances with instance bounds overlapping the specified sphere. The return value is an array of instance indices.
---@param Center FVector
---@param Radius number
---@param bSphereInWorldSpace boolean
function UCustomInstancedStaticMeshComponent:GetInstancesOverlappingSphere(Center, Radius, bSphereInWorldSpace) end

---Returns the instances with instance bounds overlapping the specified box. The return value is an array of instance indices.
---@param Box FBox
---@param bBoxInWorldSpace boolean
function UCustomInstancedStaticMeshComponent:GetInstancesOverlappingBox(Box, bBoxInWorldSpace) end

---Update the transform for the instance specified.
---@param InstanceIndices ULuaArrayHelper<number>
---@param bForceLocalLocation boolean
---@return boolean
function UCustomInstancedStaticMeshComponent:HideInstance(InstanceIndices, bForceLocalLocation) end

---@param InstanceIndices ULuaArrayHelper<number>
---@return boolean
function UCustomInstancedStaticMeshComponent:ShowInstance(InstanceIndices) end
