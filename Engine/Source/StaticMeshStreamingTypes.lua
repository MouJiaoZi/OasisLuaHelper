---@meta

---Information about a streaming StaticMesh that a primitive uses for rendering.
---@class FStreamingStaticMeshPrimitiveInfo
---@field Bounds FBoxSphereBounds @The streaming bounds of the StaticMesh, usually the component material bounds. Usually only valid for registered component, as component bounds are only updated when the components are registered. otherwise only PackedRelativeBox can be used.Irrelevant when the component is not registered, as the component could be moved by ULevel::ApplyWorldOffset() In that case, only PackedRelativeBox is meaningful.
FStreamingStaticMeshPrimitiveInfo = {}
