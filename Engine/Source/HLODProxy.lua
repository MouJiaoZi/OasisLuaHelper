---@meta

---A mesh proxy entry
---@class FHLODProxyMesh
---@field LODActor TLazyObjectPtr<ALODActor> @The ALODActor that we were generated from
---@field Key string @The key generated from an ALODActor. If this differs from that generated from the ALODActor, then the mesh needs regenerating.
FHLODProxyMesh = {}


---This asset acts as a proxy to a static mesh for ALODActors to display
---@class UHLODProxy: UObject
---@field ProxyMeshes ULuaArrayHelper<FHLODProxyMesh> @All the mesh proxies we contain
local UHLODProxy = {}
