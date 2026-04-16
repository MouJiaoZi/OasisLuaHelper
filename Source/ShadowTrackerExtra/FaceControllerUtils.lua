---@meta

---@class UFaceControllerUtils: UObject
local UFaceControllerUtils = {}

---@param PosMin FVector
---@param PosMax FVector
---@param Value number
---@param BoneTrans FTransform
function UFaceControllerUtils:ComputeBonePostion(PosMin, PosMax, Value, BoneTrans) end

---@param RotMin FQuat
---@param RotMax FQuat
---@param Value number
---@param BoneTrans FTransform
function UFaceControllerUtils:ComputeBoneRotation(RotMin, RotMax, Value, BoneTrans) end

---@param ScaMin FVector
---@param ScaMax FVector
---@param Value number
---@param BoneTrans FTransform
function UFaceControllerUtils:ComputeBoneScale(ScaMin, ScaMax, Value, BoneTrans) end

---@param SourceTransform FTransform
---@param DestTransform FTransform
function UFaceControllerUtils:GetSymmetryBoneTransform(SourceTransform, DestTransform) end

---@param Filename string
function UFaceControllerUtils:LoadFaceControllerList(Filename) end

---@param Filename string
function UFaceControllerUtils:LoadFaceBoneList(Filename) end

---@param InFaceControllerList FFaceControllerList
function UFaceControllerUtils:ParseFaceControllerConfig(InFaceControllerList) end

---@param InFaceBoneList FFaceBoneList
function UFaceControllerUtils:ParseFaceBoneConfig(InFaceBoneList) end

---@return boolean
function UFaceControllerUtils:GetIsParsed() end
