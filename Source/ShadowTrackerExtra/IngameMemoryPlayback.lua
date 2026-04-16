---@meta

---@class FSkeletalMeshCacheInfo
---@field TPoseInverseTransforms ULuaArrayHelper<FTransform>
FSkeletalMeshCacheInfo = {}


---PlayerPawn
---@class FCharacterAnimRecordData
---@field CharacterMeshList ULuaMapHelper<number, UObject>
---@field CharacterMeshCompList ULuaMapHelper<number, UMeshComponent>
---@field SkeletalMeshCacheInfos ULuaMapHelper<USkeletalMesh, FSkeletalMeshCacheInfo>
FCharacterAnimRecordData = {}


---@class FBoneAnimRecordManager
---@field AllRecordData ULuaArrayHelper<FCharacterAnimRecordData>
---@field BufferMaxBits number
---@field MaxBufferTime number
---@field MinDumpTime number
---@field TrimUnitTime number
---@field MaxRecordNum number
---@field SlotsToRecord ULuaArrayHelper<EAvatarSlotType>
FBoneAnimRecordManager = {}


---@class FCharacterAnimPlayData
---@field SlotIDToComponentMap ULuaMapHelper<number, UMeshComponent>
FCharacterAnimPlayData = {}


---@class FBoneAnimPlayManager
---@field DisplayCharacterClass UObject
---@field AllPlayData ULuaArrayHelper<FCharacterAnimPlayData>
---@field LoadedMeshes ULuaArrayHelper<UObject>
FBoneAnimPlayManager = {}


---@class FOnMemoryEventDumpCompleted : ULuaSingleDelegate
FOnMemoryEventDumpCompleted = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: ULuaArrayHelper<number>, Param2: number, Param3: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnMemoryEventDumpCompleted:Bind(Callback, Obj) end

---执行委托
---@param Param1 ULuaArrayHelper<number>
---@param Param2 number
---@param Param3 number
function FOnMemoryEventDumpCompleted:Execute(Param1, Param2, Param3) end


---ڻطս
---@class UIngameMemoryPlayback: UObject
---@field Recorder FBoneAnimRecordManager
---@field Player FBoneAnimPlayManager
local UIngameMemoryPlayback = {}

---@param AsyncLoadID number
---@param LoadAvatar UAvatarComponent
function UIngameMemoryPlayback:OnAvatarChanged(AsyncLoadID, LoadAvatar) end
