---@meta

---@class UScratchCreatorFunctionLibrary: UBlueprintFunctionLibrary
local UScratchCreatorFunctionLibrary = {}

---@param TotalCount number
---@param MaxCount number
---@param OutStartIndex number
---@param OutEndIndex number
---@return boolean
function UScratchCreatorFunctionLibrary:GetScratchStartEndIndex(TotalCount, MaxCount, OutStartIndex, OutEndIndex) end

---@param LerpCount number
---@param StartLoc FVector
---@param ControlLoc FVector
---@param EndLoc FVector
function UScratchCreatorFunctionLibrary:GetBezierLerpLocs(LerpCount, StartLoc, ControlLoc, EndLoc) end

---@param Owner AActor
---@param HitterLoc FVector
---@param TargetActor AActor
---@param InLocs ULuaArrayHelper<FVector>
---@param LerpStep number
---@param OutSurfaceLocs ULuaArrayHelper<FVector>
---@param OutSurfaceNormals ULuaArrayHelper<FVector>
---@return boolean
function UScratchCreatorFunctionLibrary:GetAllSurfaceInfoFromLocs(Owner, HitterLoc, TargetActor, InLocs, LerpStep, OutSurfaceLocs, OutSurfaceNormals) end

---@param HitNormal FVector
---@param Direction FVector
---@return FRotator
function UScratchCreatorFunctionLibrary:GetScratchCreatorRotation(HitNormal, Direction) end

---@param TrackConfig FScratchDecalTrackConfig
---@param OutStartPoint FVector2D
---@param OutEndPoint FVector2D
---@return boolean
function UScratchCreatorFunctionLibrary:CollectStartEndPoint(TrackConfig, OutStartPoint, OutEndPoint) end
