---@meta

---@class EEventDataCollectionValues_RankList_Type
---@field None number
---@field Hot number @热力榜
---@field Lucky number @幸运榜
EEventDataCollectionValues_RankList_Type = {}


---@class EEventDataCollectionValues_MicSpeakerState_Mic
---@field None number @关
---@field Lbs number @范围
---@field Team number @队伍
---@field KeyLbs number @按键范围
---@field KeyTeam number @按键队伍
EEventDataCollectionValues_MicSpeakerState_Mic = {}


---@class EEventDataCollectionValues_MicSpeakerState_Speaker
---@field None number @关
---@field Lbs number @范围
---@field Team number @队伍
EEventDataCollectionValues_MicSpeakerState_Speaker = {}


---@class EEventDataCollectionValues_CG008_QiXiFestival_Action
---@field UseGashapon number @使用扭蛋机
---@field DropEgg0 number @掉落桃花扭蛋
---@field UseEgg0 number @使用桃花扭蛋
---@field DropEgg1 number @掉落花束扭蛋
---@field UseEgg1 number @使用花束扭蛋
---@field DropEgg2 number @掉落礼物扭蛋
---@field UseEgg2 number @使用礼物扭蛋
---@field DropEgg3 number @掉落音乐盒扭蛋
---@field UseEgg3 number @使用音乐盒扭蛋
EEventDataCollectionValues_CG008_QiXiFestival_Action = {}


---@class UEventDataCollectionKeys: UObject
local UEventDataCollectionKeys = {}


---@class UEventDataCollectionValues: UObject
local UEventDataCollectionValues = {}

---@param STExtraPlayerState ASTExtraPlayerState
---@return string
function UEventDataCollectionValues:GetTeammatePositions(STExtraPlayerState) end

---@param ActorContext AActor
---@return string
function UEventDataCollectionValues:GetTeammatePositionsFromContext(ActorContext) end


---@class UEventDataCollectionKeys_GameStatus: UEventDataCollectionKeys
local UEventDataCollectionKeys_GameStatus = {}


---@class UEventDataCollectionValues_GameStatus_GameStatus: UEventDataCollectionValues
local UEventDataCollectionValues_GameStatus_GameStatus = {}


---@class UEventDataCollectionValues_GameStatus_LeaveType: UEventDataCollectionValues
local UEventDataCollectionValues_GameStatus_LeaveType = {}


---@class UEventDataCollectionKeys_StartMatching: UEventDataCollectionKeys
local UEventDataCollectionKeys_StartMatching = {}


---@class UEventDataCollectionKeys_PlaneSegment: UEventDataCollectionKeys
local UEventDataCollectionKeys_PlaneSegment = {}


---@class UEventDataCollectionKeys_PlaneSegmentSelection: UEventDataCollectionKeys
local UEventDataCollectionKeys_PlaneSegmentSelection = {}


---@class UEventDataCollectionKeys_PlaneCarrying: UEventDataCollectionKeys_PlaneSegment
local UEventDataCollectionKeys_PlaneCarrying = {}


---@class UEventDataCollectionKeys_PuttingDownCakeFireWorks: UEventDataCollectionKeys
local UEventDataCollectionKeys_PuttingDownCakeFireWorks = {}


---@class UEventDataCollectionKeys_TakeDropItem: UEventDataCollectionKeys
local UEventDataCollectionKeys_TakeDropItem = {}


---@class UEventDataCollectionValues_TakeDropItem_Type: UEventDataCollectionValues
local UEventDataCollectionValues_TakeDropItem_Type = {}


---@class UEventDataCollectionValues_TakeDropItem_PickupSource: UEventDataCollectionValues
local UEventDataCollectionValues_TakeDropItem_PickupSource = {}


---@class UEventDataCollectionKeys_UsingItem: UEventDataCollectionKeys
local UEventDataCollectionKeys_UsingItem = {}


---@class UEventDataCollectionValues_UsingItem_Status: UEventDataCollectionValues
local UEventDataCollectionValues_UsingItem_Status = {}


---@class UEventDataCollectionKeys_ConsumingItem: UEventDataCollectionKeys
local UEventDataCollectionKeys_ConsumingItem = {}


---@class UEventDataCollectionKeys_Climbing: UEventDataCollectionKeys
local UEventDataCollectionKeys_Climbing = {}


---@class UEventDataCollectionValues_Climbing_TargetActorType: UEventDataCollectionValues
local UEventDataCollectionValues_Climbing_TargetActorType = {}


---@class UEventDataCollectionKeys_Falling: UEventDataCollectionKeys
local UEventDataCollectionKeys_Falling = {}


---@class UEventDataCollectionValues_Falling_Type: UEventDataCollectionValues
local UEventDataCollectionValues_Falling_Type = {}


---@class UEventDataCollectionValues_Falling_Status: UEventDataCollectionValues
local UEventDataCollectionValues_Falling_Status = {}


---@class UEventDataCollectionKeys_Carring: UEventDataCollectionKeys
local UEventDataCollectionKeys_Carring = {}


---@class UEventDataCollectionKeys_InFieldOfView: UEventDataCollectionKeys
local UEventDataCollectionKeys_InFieldOfView = {}


---@class UEventDataCollectionValues_InFieldOfView_FieldOfView: UEventDataCollectionValues
local UEventDataCollectionValues_InFieldOfView_FieldOfView = {}


---@class UEventDataCollectionKeys_UnderEnermyAttack: UEventDataCollectionKeys
local UEventDataCollectionKeys_UnderEnermyAttack = {}


---@class UEventDataCollectionValues_UnderEnermyAttack_Result: UEventDataCollectionValues
local UEventDataCollectionValues_UnderEnermyAttack_Result = {}


---@class UEventDataCollectionValues_UnderEnermyAttack_Result2: UEventDataCollectionValues_UnderEnermyAttack_Result
local UEventDataCollectionValues_UnderEnermyAttack_Result2 = {}


---@class UEventDataCollectionValues_UnderEnermyAttack_Reason: UEventDataCollectionValues
local UEventDataCollectionValues_UnderEnermyAttack_Reason = {}


---@class UEventDataCollectionValues_UnderEnermyAttack_BeHurtPosture: UEventDataCollectionValues
local UEventDataCollectionValues_UnderEnermyAttack_BeHurtPosture = {}


---@class UEventDataCollectionValues_UnderEnermyAttack_HurtPosture: UEventDataCollectionValues_UnderEnermyAttack_BeHurtPosture
local UEventDataCollectionValues_UnderEnermyAttack_HurtPosture = {}


---@class UEventDataCollectionValues_UnderEnermyAttack_HurtAim: UEventDataCollectionValues
local UEventDataCollectionValues_UnderEnermyAttack_HurtAim = {}

---@param AttackerSTExtraBaseCharacter ASTExtraBaseCharacter
---@param DamageCauser AActor
---@return string
function UEventDataCollectionValues_UnderEnermyAttack_HurtAim:Get(AttackerSTExtraBaseCharacter, DamageCauser) end


---@class UEventDataCollectionValues_UnderEnermyAttack_HurtEquipId: UEventDataCollectionValues
local UEventDataCollectionValues_UnderEnermyAttack_HurtEquipId = {}

---@param DamageEvent FDamageEvent
---@param DamageCauser AActor
---@param Vimctim AActor
---@return string
function UEventDataCollectionValues_UnderEnermyAttack_HurtEquipId:Get(DamageEvent, DamageCauser, Vimctim) end


---@class UEventDataCollectionKeys_TakingDamage: UEventDataCollectionKeys
local UEventDataCollectionKeys_TakingDamage = {}


---@class UEventDataCollectionValues_TakingDamage_Reason: UEventDataCollectionValues_UnderEnermyAttack_Reason
local UEventDataCollectionValues_TakingDamage_Reason = {}


---@class UEventDataCollectionValues_TakingDamage_Result: UEventDataCollectionValues_UnderEnermyAttack_Result
local UEventDataCollectionValues_TakingDamage_Result = {}


---@class UEventDataCollectionKeys_ReducingSignalValue: UEventDataCollectionKeys
local UEventDataCollectionKeys_ReducingSignalValue = {}


---@class UEventDataCollectionKeys_CircleReducing: UEventDataCollectionKeys
local UEventDataCollectionKeys_CircleReducing = {}


---@class UEventDataCollectionKeys_CircleChange: UEventDataCollectionKeys
local UEventDataCollectionKeys_CircleChange = {}


---@class UEventDataCollectionKeys_Rescue: UEventDataCollectionKeys
local UEventDataCollectionKeys_Rescue = {}


---@class UEventDataCollectionValues_Rescue_Status: UEventDataCollectionValues_UsingItem_Status
local UEventDataCollectionValues_Rescue_Status = {}


---@class UEventDataCollectionKeys_DrivingVehicle: UEventDataCollectionKeys
local UEventDataCollectionKeys_DrivingVehicle = {}


---@class UEventDataCollectionValues_DrivingVehicle_DrivingType: UEventDataCollectionValues
local UEventDataCollectionValues_DrivingVehicle_DrivingType = {}


---@class UEventDataCollectionValues_DrivingVehicle_Status: UEventDataCollectionValues
local UEventDataCollectionValues_DrivingVehicle_Status = {}


---@class UEventDataCollectionKeys_VehicleAvatar: UEventDataCollectionKeys
local UEventDataCollectionKeys_VehicleAvatar = {}


---@class UEventDataCollectionKeys_ReloadingBullet: UEventDataCollectionKeys
local UEventDataCollectionKeys_ReloadingBullet = {}


---@class UEventDataCollectionValues_ReloadingBullet_State: UEventDataCollectionValues
local UEventDataCollectionValues_ReloadingBullet_State = {}


---@class UEventDataCollectionKeys_AirDrop: UEventDataCollectionKeys
local UEventDataCollectionKeys_AirDrop = {}


---@class UEventDataCollectionValues_AirDrop_Type: UEventDataCollectionValues
local UEventDataCollectionValues_AirDrop_Type = {}


---@class UEventDataCollectionKeys_ItemAttach: UEventDataCollectionKeys
local UEventDataCollectionKeys_ItemAttach = {}


---@class UEventDataCollectionValues_ItemAttach_State: UEventDataCollectionValues
local UEventDataCollectionValues_ItemAttach_State = {}


---@class UEventDataCollectionKeys_SyncInfo: UEventDataCollectionKeys
local UEventDataCollectionKeys_SyncInfo = {}


---@class UEventDataCollectionKeys_PlayerInfo: UEventDataCollectionKeys
local UEventDataCollectionKeys_PlayerInfo = {}


---@class UEventDataCollectionValues_PlayerInfo_Sex: UEventDataCollectionValues
local UEventDataCollectionValues_PlayerInfo_Sex = {}


---@class UEventDataCollectionKeys_MiniMapShowInfo: UEventDataCollectionKeys
local UEventDataCollectionKeys_MiniMapShowInfo = {}


---@class UEventDataCollectionValues_MiniMapShowInfo_VoiceCheck: UEventDataCollectionValues
local UEventDataCollectionValues_MiniMapShowInfo_VoiceCheck = {}


---@class UEventDataCollectionKeys_Following: UEventDataCollectionKeys
local UEventDataCollectionKeys_Following = {}


---@class UEventDataCollectionValues_Following_FollowType: UEventDataCollectionValues
local UEventDataCollectionValues_Following_FollowType = {}


---@class UEventDataCollectionKeys_MiniMapPinning: UEventDataCollectionKeys
local UEventDataCollectionKeys_MiniMapPinning = {}


---@class UEventDataCollectionValues_MiniMapPinning_Type: UEventDataCollectionValues
local UEventDataCollectionValues_MiniMapPinning_Type = {}


---@class UEventDataCollectionKeys_Blocking: UEventDataCollectionKeys
local UEventDataCollectionKeys_Blocking = {}


---@class UEventDataCollectionValues_Blocking_Type: UEventDataCollectionValues
local UEventDataCollectionValues_Blocking_Type = {}


---@class UEventDataCollectionKeys_SwitchingPersonPerspective: UEventDataCollectionKeys
local UEventDataCollectionKeys_SwitchingPersonPerspective = {}


---@class UEventDataCollectionValues_SwitchingPersonPerspective_Type: UEventDataCollectionValues
local UEventDataCollectionValues_SwitchingPersonPerspective_Type = {}


---@class UEventDataCollectionKeys_Dancing: UEventDataCollectionKeys
local UEventDataCollectionKeys_Dancing = {}


---@class UEventDataCollectionKeys_PickingupTombBox: UEventDataCollectionKeys
local UEventDataCollectionKeys_PickingupTombBox = {}


---@class UEventDataCollectionKeys_AirAttacking: UEventDataCollectionKeys
local UEventDataCollectionKeys_AirAttacking = {}


---@class UEventDataCollectionKeys_CurrentWeapon: UEventDataCollectionKeys
local UEventDataCollectionKeys_CurrentWeapon = {}


---@class UEventDataCollectionKeys_SceneInfo: UEventDataCollectionKeys
local UEventDataCollectionKeys_SceneInfo = {}


---@class UEventDataCollectionValues_SceneInfo_IsInHouse: UEventDataCollectionValues
local UEventDataCollectionValues_SceneInfo_IsInHouse = {}


---@class UEventDataCollectionKeys_TeamInfo: UEventDataCollectionKeys
local UEventDataCollectionKeys_TeamInfo = {}


---@class UEventDataCollectionKeys_EnteringLeavingTeam: UEventDataCollectionKeys
local UEventDataCollectionKeys_EnteringLeavingTeam = {}


---@class UEventDataCollectionValues_EnteringLeavingTeam_Action: UEventDataCollectionValues
local UEventDataCollectionValues_EnteringLeavingTeam_Action = {}


---@class UEventDataCollectionKeys_OnOffline: UEventDataCollectionKeys
local UEventDataCollectionKeys_OnOffline = {}


---@class UEventDataCollectionValues_OnOffline_Type: UEventDataCollectionValues
local UEventDataCollectionValues_OnOffline_Type = {}


---@class UEventDataCollectionKeys_RankList: UEventDataCollectionKeys
local UEventDataCollectionKeys_RankList = {}


---@class UEventDataCollectionValues_RankList_State: UEventDataCollectionValues
local UEventDataCollectionValues_RankList_State = {}


---@class UEventDataCollectionKeys_TextMessage: UEventDataCollectionKeys
local UEventDataCollectionKeys_TextMessage = {}


---@class UEventDataCollectionKeys_PawnState: UEventDataCollectionKeys
---@field InterestedPawnStates ULuaArrayHelper<EPawnState>
local UEventDataCollectionKeys_PawnState = {}

---@param PawnState EPawnState
---@return boolean
function UEventDataCollectionKeys_PawnState:IsInterestedPawnStates(PawnState) end


---@class UEventDataCollectionValues_PawnState_State: UEventDataCollectionValues
local UEventDataCollectionValues_PawnState_State = {}


---@class UEventDataCollectionKeys_OpenCloseDoor: UEventDataCollectionKeys
local UEventDataCollectionKeys_OpenCloseDoor = {}


---@class UEventDataCollectionValues_OpenCloseDoor_RightState: UEventDataCollectionValues
local UEventDataCollectionValues_OpenCloseDoor_RightState = {}


---@class UEventDataCollectionValues_OpenCloseDoor_LeftState: UEventDataCollectionValues_OpenCloseDoor_RightState
local UEventDataCollectionValues_OpenCloseDoor_LeftState = {}


---@class UEventDataCollectionKeys_MicSpeakerState: UEventDataCollectionKeys
local UEventDataCollectionKeys_MicSpeakerState = {}


---@class UEventDataCollectionKeys_VehicleState: UEventDataCollectionKeys
---@field LowerboundTickReportIntervalSeconds number
---@field UpperboundTickReportIntervalSeconds number
local UEventDataCollectionKeys_VehicleState = {}


---@class UEventDataCollectionKeys_Distance: UEventDataCollectionKeys
local UEventDataCollectionKeys_Distance = {}


---@class UEventDataCollectionKeys_EnergyState: UEventDataCollectionKeys
local UEventDataCollectionKeys_EnergyState = {}


---@class UEventDataCollectionKeys_TeamDataChanged: UEventDataCollectionKeys
local UEventDataCollectionKeys_TeamDataChanged = {}


---@class UEventDataCollectionKeys_MaxKiller: UEventDataCollectionKeys
local UEventDataCollectionKeys_MaxKiller = {}


---@class UEventDataCollectionKeys_UnderEnermyAttack_Broadcast: UEventDataCollectionKeys
---@field LessOrEqualTeamCount number
local UEventDataCollectionKeys_UnderEnermyAttack_Broadcast = {}

---@param WorldContextObject UObject
---@return boolean
function UEventDataCollectionKeys_UnderEnermyAttack_Broadcast:IsBroadcastable(WorldContextObject) end

---@param WorldContextObject UObject
---@return boolean
function UEventDataCollectionKeys_UnderEnermyAttack_Broadcast:IsAI(WorldContextObject) end


---@class UEventDataCollectionKeys_QuickSign: UEventDataCollectionKeys
local UEventDataCollectionKeys_QuickSign = {}


---@class UEventDataCollectionKeys_CG008_QiXiFestival: UEventDataCollectionKeys
local UEventDataCollectionKeys_CG008_QiXiFestival = {}


---@class UEventDataCollectionKeys_WeaponOperation: UEventDataCollectionKeys
local UEventDataCollectionKeys_WeaponOperation = {}


---@class UEventDataCollectionValues_WeaponOperation_Type: UEventDataCollectionValues
local UEventDataCollectionValues_WeaponOperation_Type = {}


---@class UEventDataCollectionKeys_PickupBoxOpen: UEventDataCollectionKeys
local UEventDataCollectionKeys_PickupBoxOpen = {}


---@class UEventDataCollectionKeys_VehicleConnection: UEventDataCollectionKeys
local UEventDataCollectionKeys_VehicleConnection = {}


---@class UEventDataCollectionValues_VehicleConnection_Type: UEventDataCollectionValues
local UEventDataCollectionValues_VehicleConnection_Type = {}


---@class UEventDataCollectionKeys_CollectedEventTypeChanged: UEventDataCollectionKeys
local UEventDataCollectionKeys_CollectedEventTypeChanged = {}


---@class UEventDataCollectionKeys_DoorBroken: UEventDataCollectionKeys_OpenCloseDoor
local UEventDataCollectionKeys_DoorBroken = {}


---@class UEventDataCollectionValues_DoorBroken_RightState: UEventDataCollectionValues_OpenCloseDoor_RightState
local UEventDataCollectionValues_DoorBroken_RightState = {}


---@class UEventDataCollectionValues_DoorBroken_LeftState: UEventDataCollectionValues_OpenCloseDoor_LeftState
local UEventDataCollectionValues_DoorBroken_LeftState = {}


---@class UEventDataCollectionValues_AsianGames: UEventDataCollectionValues
local UEventDataCollectionValues_AsianGames = {}


---@class UEventDataCollectionValues_EscapePlayerValue: UEventDataCollectionValues
local UEventDataCollectionValues_EscapePlayerValue = {}


---@class UEventDataCollectionValues_EscapePlayerStatus: UEventDataCollectionValues
local UEventDataCollectionValues_EscapePlayerStatus = {}


---@class UEventDataCollectionKeys_SoloOBGames: UEventDataCollectionKeys
local UEventDataCollectionKeys_SoloOBGames = {}


---@class UEventDataCollectionValues_LTPlayerValue: UEventDataCollectionValues
local UEventDataCollectionValues_LTPlayerValue = {}
