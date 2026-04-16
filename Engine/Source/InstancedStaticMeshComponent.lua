---@meta

---@class FInstancedStaticMeshInstanceData
---@field Transform FMatrix
FInstancedStaticMeshInstanceData = {}


---@class FInstancedStaticMeshInstanceDataWithLightmap
FInstancedStaticMeshInstanceDataWithLightmap = {}


---@class FInstancedStaticMeshMappingInfo
FInstancedStaticMeshMappingInfo = {}


---@class FInstanceVisibilityData
---@field PVSHandlerID number
---@field InsVisibilityID number
FInstanceVisibilityData = {}


---@class FInstanceRecoverData
---@field InstanceRenderDataMap ULuaMapHelper<number, FInstancedStaticMeshInstanceDataWithLightmap>
FInstanceRecoverData = {}


---@class FISMAyncInstanceDataUpdateCompleteDel : ULuaSingleDelegate
FISMAyncInstanceDataUpdateCompleteDel = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: UInstancedStaticMeshComponent) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FISMAyncInstanceDataUpdateCompleteDel:Bind(Callback, Obj) end

---执行委托
---@param Param1 UInstancedStaticMeshComponent
function FISMAyncInstanceDataUpdateCompleteDel:Execute(Param1) end


---A component that efficiently renders multiple instances of the same StaticMesh.
---@class UInstancedStaticMeshComponent: UStaticMeshComponent
---@field PerInstanceSMData ULuaArrayHelper<FInstancedStaticMeshInstanceData> @Array of instances, bulk serialized.
---@field InstancingRandomSeed number @Value used to seed the random number stream that generates random numbers for each of this mesh's instances. The random number is stored in a buffer accessible to materials through the PerInstanceRandom expression. If this is set to zero (default), it will be populated automatically by the editor.
---@field InstanceStartCullDistance number @Distance from camera at which each instance begins to fade out.
---@field InstanceEndCullDistance number @Distance from camera at which each instance completely fades out.
---@field InstanceNearCullDistance number @Distance from camera at which each instance.
---@field bIsFlyType boolean
---@field bIsFoliage boolean
---@field bIsPCFoliage boolean
---@field InstanceReorderTable ULuaArrayHelper<number> @Mapping from PerInstanceSMData order to instance render buffer order. If empty, the PerInstanceSMData order is used.
---@field RemovedInstances ULuaArrayHelper<number>
---@field InstanceVisibilityMapping ULuaMapHelper<number, FInstanceVisibilityData>
---@field UseDynamicInstanceBuffer boolean @Set to true to permit updating the vertex buffer used in the instance buffer without recreating it completely. This should be used if you plan on dynamically changing the instances at run-time.
---@field KeepInstanceBufferCPUAccess boolean @Set to true to keep instance buffer accessible by the CPU, otherwise it's discarded and considered never changing, only GPU has a copy of the data.
---@field DynamicInstancingParametersValue ULuaArrayHelper<FVector4>
---@field PerInstanceDynamicInstancingParameterCount number @PerInstanceDynamicInstancingParameterCount
---@field StashInstanceTransform ULuaMapHelper<number, FMatrix>
---@field NumPendingLightmaps number @Number of pending lightmaps still to be calculated (Apply()'d).
---@field CachedMappings ULuaArrayHelper<FInstancedStaticMeshMappingInfo> @The mappings for all the instances of this component.
local UInstancedStaticMeshComponent = {}

---Add an instance to this component. Transform is given in local space of this component.
---@param InstanceTransform FTransform
---@return number
function UInstancedStaticMeshComponent:AddInstance(InstanceTransform) end

---Add an instance to this component. Transform is given in world space.
---@param WorldTransform FTransform
---@return number
function UInstancedStaticMeshComponent:AddInstanceWorldSpace(WorldTransform) end

---Get the transform for the instance specified. Instance is returned in local space of this component unless bWorldSpace is set.  Returns True on success.
---@param InstanceIndex number
---@param OutInstanceTransform FTransform
---@param bWorldSpace boolean
---@return boolean
function UInstancedStaticMeshComponent:GetInstanceTransform(InstanceIndex, OutInstanceTransform, bWorldSpace) end

---Update the transform for the instance specified.
---@param InstanceIndex number
---@param NewInstanceTransform FTransform
---@param bWorldSpace boolean
---@param bMarkRenderStateDirty boolean
---@param bTeleport boolean
---@return boolean
function UInstancedStaticMeshComponent:UpdateInstanceTransform(InstanceIndex, NewInstanceTransform, bWorldSpace, bMarkRenderStateDirty, bTeleport) end

---Remove the instance specified. Returns True on success. Note that this will leave the array in order, but may shrink it.
---@param InstanceIndex number
---@return boolean
function UInstancedStaticMeshComponent:RemoveInstance(InstanceIndex) end

---Clear all instances being rendered by this component.
function UInstancedStaticMeshComponent:ClearInstances() end

---Get the number of instances in this component.
---@return number
function UInstancedStaticMeshComponent:GetInstanceCount() end

---Sets the fading start and culling end distances for this component.
---@param StartCullDistance number
---@param EndCullDistance number
function UInstancedStaticMeshComponent:SetCullDistances(StartCullDistance, EndCullDistance) end

---Sets the cull near distance for this component.
---@param CullDistance number
function UInstancedStaticMeshComponent:SetNearCullDistance(CullDistance) end

---Returns the instances with instance bounds overlapping the specified sphere. The return value is an array of instance indices.
---@param Center FVector
---@param Radius number
---@param bSphereInWorldSpace boolean
function UInstancedStaticMeshComponent:GetInstancesOverlappingSphere(Center, Radius, bSphereInWorldSpace) end

---Returns the instances with instance bounds overlapping the specified box. The return value is an array of instance indices.
---@param Box FBox
---@param bBoxInWorldSpace boolean
function UInstancedStaticMeshComponent:GetInstancesOverlappingBox(Box, bBoxInWorldSpace) end

---Update the transform for the instance specified.
---@param InstanceIndices ULuaArrayHelper<number>
---@return boolean
function UInstancedStaticMeshComponent:HideInstance(InstanceIndices) end

---@param InstanceIndices ULuaArrayHelper<number>
---@return boolean
function UInstancedStaticMeshComponent:ShowInstance(InstanceIndices) end
