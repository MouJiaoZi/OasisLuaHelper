---@meta

---@class FLandscapeHeightfieldCollisionCreatePhysics : ULuaMulticastDelegate
FLandscapeHeightfieldCollisionCreatePhysics = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: ULandscapeHeightfieldCollisionComponent) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLandscapeHeightfieldCollisionCreatePhysics:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 ULandscapeHeightfieldCollisionComponent
function FLandscapeHeightfieldCollisionCreatePhysics:Broadcast(Param1) end


---@class FLandscapeHeightfieldCollisionDestroyPhysics : ULuaMulticastDelegate
FLandscapeHeightfieldCollisionDestroyPhysics = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: ULandscapeHeightfieldCollisionComponent) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLandscapeHeightfieldCollisionDestroyPhysics:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 ULandscapeHeightfieldCollisionComponent
function FLandscapeHeightfieldCollisionDestroyPhysics:Broadcast(Param1) end


---@class ULandscapeHeightfieldCollisionComponent: UPrimitiveComponent
---@field ComponentLayerInfos ULuaArrayHelper<ULandscapeLayerInfoObject> @List of layers painted on this component. Matches the WeightmapLayerAllocations array in the LandscapeComponent.
---@field SectionBaseX number @Offset of component in landscape quads
---@field SectionBaseY number
---@field CollisionSizeQuads number @Size of component in collision quads
---@field CollisionScale number @Collision scale: (ComponentSizeQuads) / (CollisionSizeQuads)
---@field SimpleCollisionSizeQuads number @Size of component's "simple collision" in collision quads
---@field CollisionQuadFlags ULuaArrayHelper<number> @The flags for each collision quad. See ECollisionQuadFlags.
---@field HeightfieldGuid FGuid @Guid used to share PhysX heightfield objects in the editor
---@field CachedLocalBox FBox @Cached local-space bounding box, created at heightmap update time
---@field RenderComponent TLazyObjectPtr<ULandscapeComponent> @Reference to render component
---@field bUseLandscapeDeform boolean
local ULandscapeHeightfieldCollisionComponent = {}
