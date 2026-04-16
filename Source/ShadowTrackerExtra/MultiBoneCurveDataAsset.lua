---@meta

---Single bone curve entry, containing bone hierarchy info and curve references. Entries are stored in topological order (parent before children) sorted by BoneIndex ascending.
---@class FBoneCurveEntry
---@field BoneName string @Bone name from FReferenceSkeleton
---@field BoneIndex number @Bone index in FReferenceSkeleton
---@field ParentBoneIndex number @Parent bone index from FReferenceSkeleton::GetParentIndex(), INDEX_NONE for root
---@field ParentBoneName string @Parent bone name, NAME_None for root
FBoneCurveEntry = {}


---DataAsset that holds multi-bone curve data with hierarchy information. All bone entries are stored in topological order (BoneIndex ascending), so parent bones are always processed before their children.
---@class UMultiBoneCurveDataAsset: UDataAsset
---@field BoneCurveEntries ULuaArrayHelper<FBoneCurveEntry> @Array of bone curve entries, sorted by BoneIndex ascending (topological order)
---@field SourceAnimSequence UAnimSequence @Soft reference to the source AnimSequence
---@field CurveAnimSequence UAnimSequence @Soft reference to the curve AnimSequence (root-motion-cleared copy, if generated)
---@field PositionCurveDeviation number @Position curve deviation used during export
---@field RotationCurveDeviation number @Rotation curve deviation used during export
---@field ScaleCurveDeviation number @Scale curve deviation used during export
local UMultiBoneCurveDataAsset = {}

---Find bone curve entry by bone name. Returns true if found, fills OutEntry.
---@param InBoneName string
---@param OutEntry FBoneCurveEntry
---@return boolean
function UMultiBoneCurveDataAsset:FindEntryByBoneName(InBoneName, OutEntry) end

---Get all child entries whose ParentBoneIndex matches the given BoneIndex
---@param InBoneIndex number
function UMultiBoneCurveDataAsset:GetChildEntries(InBoneIndex) end

---Get root bone entry (ParentBoneIndex == INDEX_NONE). Returns true if found, fills OutEntry.
---@param OutEntry FBoneCurveEntry
---@return boolean
function UMultiBoneCurveDataAsset:GetRootEntry(OutEntry) end

---Get the maximum curve duration across all bone entries
---@return number
function UMultiBoneCurveDataAsset:GetMaxCurveDuration() end
