---@meta

---@class ELobbyItemSlotType
---@field DefaultSlot number @无
---@field ShipHead_socket number @游艇_前舱
---@field ShipTail_socket number @游艇_船尾
---@field ShipBothSides_socket number @游艇_两侧
---@field ShipWake_socket number @游艇_尾迹
---@field VehicleWheel_socket number @载具_车轮
---@field VehicleTail_socket number @载具_尾饰
---@field VehicleBumper_socket number @载具_护杠
---@field VehicleEmitter_socket number @载具_喷射器
---@field VehicleTattoo_socket number @载具_喷涂
---@field FrontPlate_socket number @载具_前车牌
---@field BackPlate_socket number @载具_后车牌
ELobbyItemSlotType = {}


---@class ELobbyNPCAnimType
---@field DefaultSlot number @无
---@field LobbyNPCAnimType_RollLeft number @RollLeft
---@field LobbyNPCAnimType_RollRight number @RollRight
---@field LobbyNPCAnimType_RollUp number @RollUp
---@field LobbyNPCAnimType_RollDown number @RollDown
---@field LobbyNPCAnimType_SwitchPosition number @TeamUp
---@field LobbyNPCAnimType_OpenScene number @FirstLogin
---@field LobbyNPCAnimType_RollLeftQuickly number @RollLeftQuickly
---@field LobbyNPCAnimType_RollRightQuickly number @RollRightQuickly
---@field LobbyNPCAnimType_Idle number @Idle
---@field LobbyNPCAnimType_Idle2 number @Idle2
ELobbyNPCAnimType = {}


---@class FSingleSocketInfo
---@field AttachSocket string
---@field OffsetTrans FTransform
FSingleSocketInfo = {}


---@class FLobbyItemAttachInfo
---@field SlotType ELobbyItemSlotType
---@field AttachIDList ULuaArrayHelper<number>
FLobbyItemAttachInfo = {}


---@class FLobbyTattooInfo
---@field Tattoo UTexture
---@field ParamName string
---@field SwitchName string
---@field MatSlotName string
FLobbyTattooInfo = {}


---@class UBackpackLobbyItemHandle: UBattleItemHandleBase
---@field SkMesh USkeletalMesh
---@field StMesh UStaticMesh
---@field SkMeshLOD00 USkeletalMesh
---@field StMeshLOD00 UStaticMesh
---@field TattooInfo FLobbyTattooInfo
---@field MeshMatMap ULuaMapHelper<string, UMaterialInterface>
---@field Lod00MeshMatMap ULuaMapHelper<string, UMaterialInterface>
---@field ParticleList ULuaArrayHelper<FSingleParticleInfo>
---@field bAttachParticleToFatherComp boolean
---@field AnimBPClass UAnimInstance
---@field LobbyShowAnimAsset UAnimationAsset
---@field EnterAnimAsset UAnimationAsset
---@field AttachItemInfoList ULuaArrayHelper<FLobbyItemAttachInfo>
---@field SocketNameList ULuaArrayHelper<FSingleSocketInfo>
---@field slotID ELobbyItemSlotType
---@field SingleItemSequence ULevelSequence
---@field TeamItemSequence ULevelSequence
---@field LocalTransform FTransform
local UBackpackLobbyItemHandle = {}
