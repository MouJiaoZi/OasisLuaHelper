---@meta

---Structure storing user facing properties, and is used to identify profiles at the SkeletalMesh level
---@class FSkinWeightProfileInfo
---@field Name string @Name of the Skin Weight Profile
---@field DefaultProfile boolean @Whether or not this Profile should be considered the Default loaded for specific LODs rather than the original Skin Weights of the Skeletal Mesh
---@field DefaultProfileFromLODIndex number @When DefaultProfile is set any LOD below this LOD Index will override the Skin Weights of the Skeletal Mesh with the Skin Weights from this Profile
FSkinWeightProfileInfo = {}
