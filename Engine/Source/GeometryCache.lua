---@meta

---A Geometry Cache is a piece/set of geometry that consists of individual Mesh/Transformation samples. In contrast with Static Meshes they can have their vertices animated in certain ways. *
---@class UGeometryCache: UObject, IInterface_AssetUserData
---@field Materials ULuaArrayHelper<UMaterialInterface> @Importing data and options used for this Geometry cache object
---@field Tracks ULuaArrayHelper<UGeometryCacheTrack> @GeometryCache track defining the samples/geometry data for this GeomCache instance
local UGeometryCache = {}
