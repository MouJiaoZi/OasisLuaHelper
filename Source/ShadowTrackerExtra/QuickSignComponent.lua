---@meta

---@class EQuickSignType
---@field Cancle number
---@field Attack number
---@field Defence number
---@field Assemble number
---@field NeedAmmo number
---@field NeedAttachment number
---@field ComeInVehicle number
---@field NeedMedicine number
---@field SomebodyCame number
---@field Attention number
---@field MarkPos number
---@field MarkPosSafeZone number
---@field PlaceBunker number
---@field PlaceWorkBench number
---@field CampToolAttention number
---@field ResRoger number
---@field ResComing number
---@field ResIWant number
EQuickSignType = {}


---@class EVoiceSignFailedReason
---@field SignSuccess number
---@field FailedFindPlayerController number
---@field FindItemFailed number
---@field FoundButBlocked number
EVoiceSignFailedReason = {}


---@class EQuickSignInputType
---@field Null number
---@field Click number
---@field Drag number
---@field InputChat number
EQuickSignInputType = {}


---@class FQuickSignMark
---@field MsgID string
---@field MarkType string
---@field PlayerName string
---@field MarkTicks number
---@field PlayerInTeamIndex number
---@field IconPath string
---@field IconBGPath string
---@field IconOuterPath string
---@field IconOuterBGPath string
---@field ReplyID string
---@field Loc FVector
---@field MaxNum number
---@field LifeSpan number
---@field IsSelfMark boolean
---@field IsReplied boolean
---@field NewStyleConfig string
---@field ParamString string
---@field InstanceID number
---@field HitActor AActor
---@field AttachedActor AActor
---@field AttachOffset FVector
FQuickSignMark = {}


---@class FPlayerMsgIDArray
---@field MsgIDs ULuaArrayHelper<string>
FPlayerMsgIDArray = {}


---快捷标记ID数组管理器 功能说明： - 按玩家分组存储每种标记类型的MsgID，实现针对每个玩家的标记数量限制 - 例如：警告标记每个队友最多显示2个，则该结构体管理每个玩家的警告标记ID 数据结构： - PlayerNameToMsgIDsMap: TMap<FString, FPlayerMsgIDArray> - Key: PlayerName（玩家名称） - Value: FPlayerMsgIDArray（该玩家的MsgID数组包装，按添加顺序排列，用于FIFO删除） CVar回退支持： - 当GCVarQuickSignPlayerGroupSwitch = 1时，使用新版按玩家分组逻辑 - 当GCVarQuickSignPlayerGroupSwitch = 0时，回退到旧版全局计数逻辑（使用InnerArray）
---@class FQuickSignIDArray
---@field PlayerNameToMsgIDsMap ULuaMapHelper<string, FPlayerMsgIDArray>
---@field InnerArray ULuaArrayHelper<string>
FQuickSignIDArray = {}


---@class FOnServerAddSignMarkDelegate : ULuaMulticastDelegate
FOnServerAddSignMarkDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: FQuickSignMsg) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnServerAddSignMarkDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 FQuickSignMsg
function FOnServerAddSignMarkDelegate:Broadcast(Param1) end


---@class FOnAddSignMarkDelegate : ULuaMulticastDelegate
FOnAddSignMarkDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, MarkInfo: FQuickSignMark) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAddSignMarkDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param MarkInfo FQuickSignMark
function FOnAddSignMarkDelegate:Broadcast(MarkInfo) end


---@class FOnDelSignMarkDelegate : ULuaMulticastDelegate
FOnDelSignMarkDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, MsgID: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDelSignMarkDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param MsgID string
function FOnDelSignMarkDelegate:Broadcast(MsgID) end


---@class FOnClearAllMarkDelegate : ULuaSingleDelegate
FOnClearAllMarkDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnClearAllMarkDelegate:Bind(Callback, Obj) end

---执行委托
function FOnClearAllMarkDelegate:Execute() end


---@class FOnAfterDealWithNewMsgDelegate : ULuaMulticastDelegate
FOnAfterDealWithNewMsgDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, MsgItem: FQuickSignMsg, IsSelf: boolean, ShowChat: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAfterDealWithNewMsgDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param MsgItem FQuickSignMsg
---@param IsSelf boolean
---@param ShowChat boolean
function FOnAfterDealWithNewMsgDelegate:Broadcast(MsgItem, IsSelf, ShowChat) end


---@class FOnServerSendQuickSignMsgDelegate : ULuaMulticastDelegate
FOnServerSendQuickSignMsgDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, MarkInfo: FQuickSignMsg) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnServerSendQuickSignMsgDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param MarkInfo FQuickSignMsg
function FOnServerSendQuickSignMsgDelegate:Broadcast(MarkInfo) end


---@class IQuickSignTypeInterface
IQuickSignTypeInterface = {}

---@param ConfigKey string
function IQuickSignTypeInterface:GetQuickSignConfigKey(ConfigKey) end


---@class UQuickSignComponent: UActorComponent
---@field OnAddSignMarkDelegate FOnAddSignMarkDelegate
---@field OnDelSignMarkDelegate FOnDelSignMarkDelegate
---@field OnClearAllMarkDelegate FOnClearAllMarkDelegate
---@field OnAfterDealWithNewMsgDelegate FOnAfterDealWithNewMsgDelegate
---@field OnServerSendQuickSignMsgDelegate FOnServerSendQuickSignMsgDelegate
---@field IsBlockWhomInVoiceBlackList boolean
---@field TextID_OutRange number
---@field PreFix_Command string
---@field PreFix_Command_Res string
---@field PreFix_Mark string
---@field MinTraceDist number
---@field MaxTraceDist number
---@field MaxTraceDist_Parachute number
---@field ItemTraceDist number
---@field RobotItemTraceDist number
---@field MaxAirDropMarkDist number
---@field MarkMutualExclusionDist number
---@field MiniMapAttentionIconID number
---@field MiniMapThingIconID number
---@field IgnoreBlockTag string
---@field IgnoreDistCheckTag string
---@field IsBlockingQuickSign boolean
---@field QuickSignAttachTag string
---@field ConfigKey_MarkBackpackItem string
---@field bMuteSoundForChatDisabledPlayer boolean
---@field CommandTypeIDMap ULuaMapHelper<number, string>
---@field MarkNameClassMap ULuaMapHelper<string, UClass>
---@field MarkNameTagMap ULuaMapHelper<string, string>
---@field MarkInfoMap ULuaMapHelper<string, FQuickSignMark>
---@field MarkLifeTimeMap ULuaMapHelper<string, number>
---@field MarkTypeArrayMap ULuaMapHelper<string, FQuickSignIDArray>
---@field AutoSignWeakActorMap ULuaMapHelper<string, AActor>
---@field MsgIDActorNetGUIDMap ULuaMapHelper<string, number>
---@field ActorNetGUIDTrashArray ULuaArrayHelper<number>
---@field TempIDArray ULuaArrayHelper<string>
---@field MsgKey2MiniMapID ULuaMapHelper<string, number>
---@field MsgKey2MiniMapIconTypeID ULuaMapHelper<string, number>
---@field ConfigKeyToTextID ULuaMapHelper<string, number>
---@field CommonMarkTypeID number
---@field ValidSignConfigKey ULuaSetHelper<string>
---@field bShowCommonMapMarks boolean
---@field LastValidMsgs ULuaMapHelper<string, FQuickSignMsg>
---@field CommonMapMarkInstIDs ULuaMapHelper<string, number>
---@field CampToolDeleyPointTime number
---@field bShowAllMapMark boolean
---@field PCMapMarkTypeID number
---@field bUpdateAttachMapMarkPos boolean
---@field UpdateAttachMapMarkPosTimerHandle FTimerHandle
---@field UpdateAttachMapMarkInterval number
---@field AttachMapMarkID2Msg ULuaMapHelper<number, FQuickSignMsg>
---@field bUseNewDoubleClick boolean
---@field NewDoubleClickTimeWindow number
---@field OneClickSignConfigKey string
---@field DoubleClickSignConfigKey string
---@field ShowChatTimerHandles ULuaMapHelper<string, FTimerHandle>
---@field QuickSignStyle number
---@field CurRepliedMsgID string
local UQuickSignComponent = {}

---@return number
function UQuickSignComponent:GetMaxTraceDist() end

---@param ConfigID string
---@param ConfigScriptParam string
---@param ActorTag string
function UQuickSignComponent:AnalysisConfigKeyClass(ConfigID, ConfigScriptParam, ActorTag) end

function UQuickSignComponent:MakeQuickMark() end

---@param NetActor AActor
---@param ItemID number
function UQuickSignComponent:RemoveNetGUIDForGeekStore(NetActor, ItemID) end

---@return boolean
function UQuickSignComponent:ShouldRecordHitActor() end

---@param InputSignType number
---@param AudioTextId number
---@param audioID number
---@param SignType number
function UQuickSignComponent:MakeQuickCommand(InputSignType, AudioTextId, audioID, SignType) end

---@param PickupActor APickUpWrapperActor
function UQuickSignComponent:MakeQuickMark_PickupActor(PickupActor) end

---@param MsgConfigKey string
---@param ItemID number
---@param Count number
---@param MinimapID number
---@param Location FVector
---@return string
function UQuickSignComponent:MakeQuickMark_CommonItem(MsgConfigKey, ItemID, Count, MinimapID, Location) end

---@param SpecificActor AActor
---@return boolean
function UQuickSignComponent:MakeQuickMark_SpecificActor(SpecificActor) end

---@param PickupActor APickUpWrapperActor
---@param TypespeacialID number
---@param InstanceID number
function UQuickSignComponent:MakeQuickMark_PickupActorTombox(PickupActor, TypespeacialID, InstanceID) end

---@param StoreActor ASTBuildingActorBase
---@param MsgConfigKey string
---@param ItemID number
---@param Count number
---@return number
function UQuickSignComponent:MakeQuickMark_StoreItem(StoreActor, MsgConfigKey, ItemID, Count) end

---@param NetActor AActor
---@param ItemID number
---@return number
function UQuickSignComponent:GetNetGUIDOffsetValue(NetActor, ItemID) end

---@param TypeSpecificID number
---@param Count number
---@param MsgConfigKey string
function UQuickSignComponent:MakeQuickMark_BattleItem(TypeSpecificID, Count, MsgConfigKey) end

---@param BattleItemData FBattleItemData
function UQuickSignComponent:MakeQuickMark_BackpackItem(BattleItemData) end

---@param InputSignType number
---@param MsgID string
function UQuickSignComponent:OperMark(InputSignType, MsgID) end

---@param Idx number
---@return string
function UQuickSignComponent:GetNewMsgID(Idx) end

---@param MsgID string
---@return boolean
function UQuickSignComponent:IsSelfMark(MsgID) end

---@param MsgItem FQuickSignMsg
function UQuickSignComponent:TryServerSendMsg(MsgItem) end

---@param MsgItem FQuickSignMsg
function UQuickSignComponent:ServerSendMsg(MsgItem) end

---@param SignPos2D FVector2D
function UQuickSignComponent:ServerSendQuickFireEvent(SignPos2D) end

---@param MsgItem FQuickSignMsg
---@param IsSelf boolean
function UQuickSignComponent:ClientReceiveMsg(MsgItem, IsSelf) end

---@param MsgID string
function UQuickSignComponent:ServerDelMsg(MsgID) end

---@param MsgID string
function UQuickSignComponent:ClientDelMsg(MsgID) end

---@param MsgItem FQuickSignMsg
---@param IsSelf boolean
function UQuickSignComponent:ShowMsgTipsVoice(MsgItem, IsSelf) end

---@param MsgItem FQuickSignMsg
---@param MarkInfo FQuickSignMark
---@return boolean
function UQuickSignComponent:GenerateMarkInfo(MsgItem, MarkInfo) end

---@param MsgMark FQuickSignMark
function UQuickSignComponent:AddMarkToPool(MsgMark) end

---@param MsgMark string
function UQuickSignComponent:DelMarkFromPool(MsgMark) end

function UQuickSignComponent:DelAllMarkFromPool() end

---@param SwitchGroup string
---@param SwitchState string
---@param BankName string
---@param EventName string
function UQuickSignComponent:SwitchAndLoadBankAndPlay(SwitchGroup, SwitchState, BankName, EventName) end

---@param ActorNetGUID number
function UQuickSignComponent:RemoveActorMask(ActorNetGUID) end

---@param ActorNetGUID number
function UQuickSignComponent:AddActorMask(ActorNetGUID) end

---@param MsgItem FQuickSignMsg
---@param IsSelf boolean
---@param ShowChat boolean
function UQuickSignComponent:DealWithNewMsg(MsgItem, IsSelf, ShowChat) end

function UQuickSignComponent:SetTouchPointStatus() end

---@param MsgID string
---@return boolean
function UQuickSignComponent:IsRepliedMark(MsgID) end

---@param targetActor AActor
---@param InputConfigKey string
---@param ConfigKey string
function UQuickSignComponent:SpecialActorState(targetActor, InputConfigKey, ConfigKey) end

---@return boolean
function UQuickSignComponent:CanMakeQuickMarkOrCommand() end

---@param SignType number
---@return string
function UQuickSignComponent:GetConfigKeyBySignType(SignType) end

---@param ConfigClass UClass
---@return string
function UQuickSignComponent:GetConfigKeyByClass(ConfigClass) end

---@param MsgID string
function UQuickSignComponent:BlueprintDealWithDelMsg(MsgID) end

---@param MsgItem FQuickSignMsg
---@return boolean
function UQuickSignComponent:CanPlaySoundForMsg(MsgItem) end

---@return boolean
function UQuickSignComponent:CheckPSValid() end

---@param bShow boolean
function UQuickSignComponent:ShowAllCommonMapMarks(bShow) end

---@param SignMsg FQuickSignMsg
function UQuickSignComponent:ShowCommonMapMark(SignMsg) end

---@param PlayerKey string
---@param MarkInstID number
function UQuickSignComponent:HideCommonMapMark(PlayerKey, MarkInstID) end

---@param PossessedPawn APawn
function UQuickSignComponent:InitCampToolAutoPoint(PossessedPawn) end

---@param TeamID number
function UQuickSignComponent:InitTeamAutoPoint(TeamID) end

---@param Damage number
---@param DamageEvent FDamageEvent
---@param DamageApplyer ASTExtraCharacter
---@param InVictimActor AActor
---@param EventInstigator AController
---@param DamageCauser AActor
function UQuickSignComponent:HandlePlayerInstigateAnyDamage(Damage, DamageEvent, DamageApplyer, InVictimActor, EventInstigator, DamageCauser) end

---@param MsgItem FQuickSignMsg
function UQuickSignComponent:ClientCampToolReceiveMsg(MsgItem) end

---@param MsgItem FQuickSignMsg
function UQuickSignComponent:S2C_CampToolReceiveMsg(MsgItem) end

---@param MsgItem FQuickSignMsg
function UQuickSignComponent:DealWithCampToolNewMsg(MsgItem) end

---@param InCampToolDeleyPointTime number
function UQuickSignComponent:SetCampToolDeleyPointTime(InCampToolDeleyPointTime) end

---@param EventInstigatorPlayerController ASTExtraPlayerController
---@param DamagedPawn ASTExtraCharacter
---@return boolean
function UQuickSignComponent:CheckCampToolCanShow(EventInstigatorPlayerController, DamagedPawn) end

---@param MsgItem FQuickSignMsg
function UQuickSignComponent:PCShowMapMark(MsgItem) end

---@param ConfigKey string
---@param IconPath string
---@param IconBGPath string
function UQuickSignComponent:GetMsgIconPathAndBGPath(ConfigKey, IconPath, IconBGPath) end

---@param BuildingActor ASTBuildingActorBase
---@return boolean
function UQuickSignComponent:IsEnemyBuildingActor(BuildingActor) end

function UQuickSignComponent:ClearUpdateAttachMapMarkPosTimer() end

function UQuickSignComponent:StartUpdateAttachMapMarkPosTimer() end

function UQuickSignComponent:UpdateAttachMapMarkPos() end

---@param SignKey string
---@return boolean
function UQuickSignComponent:IsOneClickSign(SignKey) end

---@param OldMarkInfo FQuickSignMark
---@param NewMarkInfo FQuickSignMark
---@return boolean
function UQuickSignComponent:ShouldDelOldOneClickSign(OldMarkInfo, NewMarkInfo) end

---@param MsgItem FQuickSignMsg
---@return boolean
function UQuickSignComponent:ShouldDelayShowChat(MsgItem) end

---延迟单击标记的消息和语音的出现
---@param MsgItem FQuickSignMsg
---@param bIsSelf boolean
---@return boolean
function UQuickSignComponent:DelayShowChat(MsgItem, bIsSelf) end

---@param MsgID string
function UQuickSignComponent:ClearDelayShowChatTimer(MsgID) end

---获取发送该QuickSingMsg的玩家的队伍序号
---@param QuickSignMsg FQuickSignMsg
---@return number
function UQuickSignComponent:GetSignTeamIndex(QuickSignMsg) end

---@param MsgItem FQuickSignMsg
---@return boolean
function UQuickSignComponent:ShouldUseNewMapMarkForPCAdvancedStyle(MsgItem) end
