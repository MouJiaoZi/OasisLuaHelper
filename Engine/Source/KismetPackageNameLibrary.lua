---@meta

---@class UKismetPackageNameLibrary: UBlueprintFunctionLibrary
local UKismetPackageNameLibrary = {}

---Returns true if the path starts with a valid root (i.e. /Game/, /Engine/, etc) and contains no illegal characters.
---@param InLongPackageName string
---@param bIncludeReadOnlyRoots boolean
---@param OutReason string
---@return boolean
function UKismetPackageNameLibrary:IsValidLongPackageName(InLongPackageName, bIncludeReadOnlyRoots, OutReason) end

---Returns true if the path starts with a valid root (i.e. /Game/, /Engine/, etc) and contains no illegal characters. This validates that the packagename is valid, and also makes sure the object after package name is also correct. This will return false if passed a path starting with Classname'
---@param InObjectPath string
---@param OutReason string
---@return boolean
function UKismetPackageNameLibrary:IsValidObjectPath(InObjectPath, OutReason) end

---Checks if the package exists on disk.
---@param LongPackageName string
---@param Guid FGuid
---@param OutFilename string
---@return boolean
function UKismetPackageNameLibrary:DoesPackageExist(LongPackageName, Guid, OutFilename) end
