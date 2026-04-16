---@meta

---An enum type to describe the format that manifest data is stored
---@class EManifestFileHeader
---@field STORED_RAW number @Zero means raw data.
---@field STORED_COMPRESSED number @Flag for compressed.
EManifestFileHeader = {}


---A data structure that hold a manifests custom field. This is a key value pair of strings
---@class FCustomFieldData
---@field Key string
---@field Value string
FCustomFieldData = {}


---A UStruct wrapping SHA1 hash data for serialization
---@class FSHAHashData
FSHAHashData = {}


---A data structure describing a chunk file
---@class FChunkInfoData
---@field Guid FGuid
---@field Hash number
---@field ShaHash FSHAHashData
---@field FileSize number
---@field GroupNumber number
FChunkInfoData = {}


---A data structure describing the part of a chunk used to construct a file
---@class FChunkPartData
---@field Guid FGuid
---@field Offset number
---@field Size number
FChunkPartData = {}


---A data structure that describes a file's construction information
---@class FFileManifestData
---@field Filename string
---@field FileHash FSHAHashData
---@field FileChunkParts ULuaArrayHelper<FChunkPartData>
---@field InstallTags ULuaArrayHelper<string>
---@field bIsUnixExecutable boolean
---@field SymlinkTarget string
---@field bIsReadOnly boolean
---@field bIsCompressed boolean
FFileManifestData = {}


---This is the manifest UObject where all manifest data is stored
---@class UBuildPatchManifest: UObject
---@field ManifestFileVersion number
---@field bIsFileData boolean
---@field AppID number
---@field AppName string
---@field BuildVersion string
---@field LaunchExe string
---@field LaunchCommand string
---@field PrereqIds ULuaSetHelper<string>
---@field PrereqName string
---@field PrereqPath string
---@field PrereqArgs string
---@field FileManifestList ULuaArrayHelper<FFileManifestData>
---@field ChunkList ULuaArrayHelper<FChunkInfoData>
---@field CustomFields ULuaArrayHelper<FCustomFieldData>
local UBuildPatchManifest = {}
