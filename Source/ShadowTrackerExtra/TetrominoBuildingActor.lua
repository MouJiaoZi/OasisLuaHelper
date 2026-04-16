---@meta

---吸附类型枚举
---@class ETetrominoAttachType
---@field None number
---@field Front number
---@field Left number
---@field Right number
ETetrominoAttachType = {}


---@class ETetrominoType
---@field O_Tetromino number
---@field T_Tetromino number
---@field Z_Tetromino number
---@field J_Tetromino number
---@field I_Tetromino number
ETetrominoType = {}


---@class FTetrominoBuildingContext
---@field AttachType ETetrominoAttachType
---@field Buildpriority number
---@field TetrominoLocation FVector
---@field TetrominoRotation FRotator
---@field TetrominoType ETetrominoType
FTetrominoBuildingContext = {}


---@class FTetrominoDetectionOrder
---@field DetectionOrder ULuaArrayHelper<number>
FTetrominoDetectionOrder = {}


---@class FTetrominoDetectionConfigType
---@field DetectionOrderMap ULuaMapHelper<ETetrominoAttachType, FTetrominoDetectionOrder>
FTetrominoDetectionConfigType = {}


---@class ITetrominoBuildingInterface
ITetrominoBuildingInterface = {}

---@return FTetrominoBuildingContext
function ITetrominoBuildingInterface:GetServerBuildingContext() end

function ITetrominoBuildingInterface:GetIgnoredActor() end


---@class UTetrominoBuildingHelper: UBlueprintFunctionLibrary
local UTetrominoBuildingHelper = {}

---@param World UWorld
---@param BlockSize number
---@param Index number
---@param Location FVector
---@param Rotation FRotator
---@param TraceChannel ECollisionChannel
---@param IgnoredActors ULuaArrayHelper<AActor>
---@param IgnoredTags ULuaArrayHelper<string>
---@param bDrawDebug boolean
---@param ZoomRatio number
---@return boolean
function UTetrominoBuildingHelper:CheckTetrominoCanPlaceByIndex_T(World, BlockSize, Index, Location, Rotation, TraceChannel, IgnoredActors, IgnoredTags, bDrawDebug, ZoomRatio) end

---@param World UWorld
---@param BlockSize number
---@param Index number
---@param Location FVector
---@param Rotation FRotator
---@param TraceChannel ECollisionChannel
---@param IgnoredActors ULuaArrayHelper<AActor>
---@param IgnoredTags ULuaArrayHelper<string>
---@param bDrawDebug boolean
---@param ZoomRatio number
---@return boolean
function UTetrominoBuildingHelper:CheckTetrominoCanPlaceByIndex_O(World, BlockSize, Index, Location, Rotation, TraceChannel, IgnoredActors, IgnoredTags, bDrawDebug, ZoomRatio) end

---@param World UWorld
---@param BlockSize number
---@param Index number
---@param Location FVector
---@param Rotation FRotator
---@param TraceChannel ECollisionChannel
---@param IgnoredActors ULuaArrayHelper<AActor>
---@param IgnoredTags ULuaArrayHelper<string>
---@param bDrawDebug boolean
---@param ZoomRatio number
---@return boolean
function UTetrominoBuildingHelper:CheckTetrominoCanPlaceByIndex_Z(World, BlockSize, Index, Location, Rotation, TraceChannel, IgnoredActors, IgnoredTags, bDrawDebug, ZoomRatio) end

---@param World UWorld
---@param BlockSize number
---@param Index number
---@param Location FVector
---@param Rotation FRotator
---@param TraceChannel ECollisionChannel
---@param IgnoredActors ULuaArrayHelper<AActor>
---@param IgnoredTags ULuaArrayHelper<string>
---@param bDrawDebug boolean
---@param ZoomRatio number
---@return boolean
function UTetrominoBuildingHelper:CheckTetrominoCanPlaceByIndex_J(World, BlockSize, Index, Location, Rotation, TraceChannel, IgnoredActors, IgnoredTags, bDrawDebug, ZoomRatio) end

---@param World UWorld
---@param Type ETetrominoType
---@param BlockSize number
---@param Index number
---@param Location FVector
---@param Rotation FRotator
---@param TraceChannel ECollisionChannel
---@param IgnoredActors ULuaArrayHelper<AActor>
---@param IgnoredTags ULuaArrayHelper<string>
---@param bDrawDebug boolean
---@param ZoomRatio number
---@return boolean
function UTetrominoBuildingHelper:CheckTetrominoCanPlaceByIndex(World, Type, BlockSize, Index, Location, Rotation, TraceChannel, IgnoredActors, IgnoredTags, bDrawDebug, ZoomRatio) end

---@param TetrominoType ETetrominoType
---@param Index number
---@param BlockExtent number
---@param Location FVector
---@param Rotation FRotator
function UTetrominoBuildingHelper:GetRealTetrominoTransform(TetrominoType, Index, BlockExtent, Location, Rotation) end

---@param Index number
---@param BlockExtent number
---@param Location FVector
---@param Rotation FRotator
function UTetrominoBuildingHelper:GetRealTetrominoTransform_T(Index, BlockExtent, Location, Rotation) end

---@param Index number
---@param BlockExtent number
---@param Location FVector
---@param Rotation FRotator
function UTetrominoBuildingHelper:GetRealTetrominoTransform_O(Index, BlockExtent, Location, Rotation) end

---@param Index number
---@param BlockExtent number
---@param Location FVector
---@param Rotation FRotator
function UTetrominoBuildingHelper:GetRealTetrominoTransform_Z(Index, BlockExtent, Location, Rotation) end

---@param Index number
---@param BlockExtent number
---@param Location FVector
---@param Rotation FRotator
function UTetrominoBuildingHelper:GetRealTetrominoTransform_J(Index, BlockExtent, Location, Rotation) end

---@param NewBlocks ULuaArrayHelper<AActor>
---@param ExistingBlocks ULuaArrayHelper<AActor>
---@param BlockSize number
---@param MinConsecutive number
---@param OutRemainingBlocks ULuaArrayHelper<AActor>
---@param OutConnectedActors ULuaArrayHelper<AActor>
---@param Tolerance number
---@return boolean
function UTetrominoBuildingHelper:GetConnectedBlock(NewBlocks, ExistingBlocks, BlockSize, MinConsecutive, OutRemainingBlocks, OutConnectedActors, Tolerance) end

---@param NewBlocks ULuaArrayHelper<AActor>
function UTetrominoBuildingHelper:GetSearchAxis(NewBlocks) end


---@class ATetrominoBuildingActor: ASTBuildingActorBase
---@field TetrominoType ETetrominoType @俄罗斯方块类型
---@field DetectionOrderConfig ULuaMapHelper<ETetrominoType, FTetrominoDetectionConfigType> @吸附顺序判断
---@field BlockSize number @方块尺寸
---@field ExtendAreaSize number @延伸检测区域大小
---@field FrontAngleThreshold number @正吸附角度阈值 (度)
---@field SideAngleThreshold number @侧吸附角度阈值 (度)
---@field ZoomRatio number @检测时缩放比例
---@field SmallBlockTag string @可吸附的Actor标签
---@field TetrominoTag string
---@field BuildingEffectTag FGameplayTag
---@field TraceChannel ECollisionChannel @检测碰撞通道
---@field DetechSphere number
---@field TetrominoBuildContext FTetrominoBuildingContext
---@field IsDrawDebug boolean
local ATetrominoBuildingActor = {}

---@param World UWorld
---@param Type ETetrominoAttachType
---@param Location FVector
function ATetrominoBuildingActor:DrawDebugInfo(World, Type, Location) end

---@param world UWorld
---@param Location FVector
function ATetrominoBuildingActor:DrawDebugPointInfo(world, Location) end

---@param InBlockLocation FVector
---@param InBlockRotation FRotator
---@param HitLocation FVector
---@return FVector
function ATetrominoBuildingActor:CalculateFaceNomal(InBlockLocation, InBlockRotation, HitLocation) end

---@param FaceNormal FVector
---@param ViewDir FVector
---@return ETetrominoAttachType
function ATetrominoBuildingActor:GetTetroAttachType(FaceNormal, ViewDir) end

---@param World UWorld
---@param DestLocation FVector
---@param ViewDir FVector
---@param OutFaceNormal FVector
---@param OutFaceCenter FVector
---@param OutFaceRotator FRotator
---@return boolean
function ATetrominoBuildingActor:FindNearestValidFaceInSphere(World, DestLocation, ViewDir, OutFaceNormal, OutFaceCenter, OutFaceRotator) end

---@param World UWorld
---@param CurTetrominoType ETetrominoType
---@param AttachType ETetrominoAttachType
---@param Location FVector
---@param Rotation FRotator
---@param InPlaceIndex number
---@return boolean
function ATetrominoBuildingActor:SetRealTetrominoTransform(World, CurTetrominoType, AttachType, Location, Rotation, InPlaceIndex) end

---@param World UWorld
---@param CurTeTrominoType ETetrominoType
---@param Location FVector
---@param Rotation FRotator
---@param InstigatedBy APawn
---@return boolean
function ATetrominoBuildingActor:CheckCanbuildByTetrominoLocation(World, CurTeTrominoType, Location, Rotation, InstigatedBy) end

---@param world UWorld
---@param Pawn APawn
function ATetrominoBuildingActor:GetTetrominoIgnoreActors(world, Pawn) end
