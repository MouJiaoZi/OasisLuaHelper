---@meta

---@class FLostTomb_RepRoomData
---@field Location FVector
---@field RotationAndLevelIndex number
FLostTomb_RepRoomData = {}


---@class FLostTomb_RepRoomListWithSize
---@field RepRoomDataList ULuaArrayHelper<FLostTomb_RepRoomData>
FLostTomb_RepRoomListWithSize = {}


---@class FLTInfoForItemBringBack
---@field InstanceId number
---@field UserId string
---@field TeamId number
FLTInfoForItemBringBack = {}


---@class FLTPlayerTeamInfo
---@field TeamID number
---@field UIDList ULuaArrayHelper<number>
FLTPlayerTeamInfo = {}


---@class FLostTombLevelOffsetFinishDelegate : ULuaSingleDelegate
FLostTombLevelOffsetFinishDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLostTombLevelOffsetFinishDelegate:Bind(Callback, Obj) end

---执行委托
function FLostTombLevelOffsetFinishDelegate:Execute() end


---@class ALostTomb_GameState: ASTExtraGameStateBase
---@field ItemSocketTableName string
---@field SocketInfTableName string
---@field LostTombMultiEquipTableName string
---@field OneShotReduceDurability number
---@field RepRoomListWithSize FLostTomb_RepRoomListWithSize
---@field LostTombLevelOffsetFinishDelegate FLostTombLevelOffsetFinishDelegate
---@field FlagedItemsForBringBack ULuaArrayHelper<FLTInfoForItemBringBack>
---@field LTTeamInfoList ULuaArrayHelper<FLTPlayerTeamInfo>
---@field bTriggerLevelOffset boolean
---@field DamageDataSnapshotClass ULostTomb_DamageAttrSnapshot
local ALostTomb_GameState = {}

function ALostTomb_GameState:OnRep_GameModeID() end

---@param ItemID number
---@param OutStr string
function ALostTomb_GameState:GetItemAttrModifyString(ItemID, OutStr) end

---@param Character ASTExtraPlayerCharacter
---@param InBackpackAvatarHandle UBackpackAvatarHandle
function ALostTomb_GameState:HandleAvatarDisplayCondition(Character, InBackpackAvatarHandle) end

---@param Character ASTExtraPlayerCharacter
function ALostTomb_GameState:CheckAvatarDisplayCondition(Character) end

function ALostTomb_GameState:SpawnRooms() end

---@param Transform FTransform
---@return FTransform
function ALostTomb_GameState:OffsetTransform(Transform) end

---@param Transform FTransform
---@param ParentTransform FTransform
---@return FTransform
function ALostTomb_GameState:OffsetTransformWithParentTransform(Transform, ParentTransform) end

---@param Actor AActor
function ALostTomb_GameState:OffsetActor(Actor) end

---@return boolean
function ALostTomb_GameState:IsLevelOffsetFinish() end

function ALostTomb_GameState:OnEscapeGameCountDownEvent() end

function ALostTomb_GameState:BroadcastCountDownEvent() end

---@param InstanceID number
---@param UidStr string
---@return boolean
function ALostTomb_GameState:FindOrGetItemFlagForBringBackByInstanceID(InstanceID, UidStr) end

---@param ItemId FItemDefineID
---@param UidStr string
---@return boolean
function ALostTomb_GameState:FindOrGetItemFlagForBringBack(ItemId, UidStr) end

---@param ItemId FItemDefineID
---@param UidStr string
---@param TeamId number
function ALostTomb_GameState:FlagItemForBringBack(ItemId, UidStr, TeamId) end

---@param UID1 string
---@param UID2 string
---@return boolean
function ALostTomb_GameState:IsSameTeam(UID1, UID2) end

function ALostTomb_GameState:OnRep_RoomData() end

function ALostTomb_GameState:PostSpawnRoomsFinish() end

---@param Linkage number
function ALostTomb_GameState:OnLoadLevelFinish(Linkage) end

---@param LevelName string
function ALostTomb_GameState:OnTriggerLevelOffset(LevelName) end

function ALostTomb_GameState:OnRep_RoomConfig() end

function ALostTomb_GameState:PostOnRepRoomConfig() end

---@return boolean
function ALostTomb_GameState:CheckLandscapeLocation() end

---@param AttrTarget AActor
---@return FLostTomb_DamageAttrSnapshotData
function ALostTomb_GameState:CreateDamageDataSnapShot(AttrTarget) end
