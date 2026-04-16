---@meta

---@class ChatFlagType
---@field FlagNone number
---@field DanagerForward number
---@field SaveMe number
---@field Congregation number
---@field SuppliesHere number
---@field GetOnCar number
---@field NeedSupplies number
---@field Dice number
ChatFlagType = {}


---@class FInGameChatMsg
---@field playerName string
---@field playerIdentifier number
---@field msgContent string
---@field msgID number
---@field audioID number
---@field hitValid boolean
---@field hitPosition FVector
---@field itemIDOnGround number
---@field MsgType QuickChatType
---@field BPEnumSpecificType number
---@field TargetPlayerKey string
---@field bHighlight boolean
FInGameChatMsg = {}


---@class FInGameFilterChatMsg
---@field playerName string
---@field isMe boolean
FInGameFilterChatMsg = {}


---@class FIngameFriendChatMsg
---@field name string
---@field content string
---@field isSelf boolean
---@field msgType number
---@field bReply boolean
---@field ExtraParams FIngameFriendChatMsgExtraParams
FIngameFriendChatMsg = {}


---@class FIngameFriendChat
---@field ChatList ULuaArrayHelper<FIngameFriendChatMsg>
FIngameFriendChat = {}


---@class FIngameInvitedNode
---@field playerName string
---@field gid string
FIngameInvitedNode = {}


---@class FQuickChatOption
---@field chatTextID number
FQuickChatOption = {}


---@class FQuickChatFlag
---@field type ChatFlagType
---@field chatID number
---@field AlternateChatID number
---@field FlagIndex number
---@field traceDist number
---@field minDist number
FQuickChatFlag = {}


---@class FQuickGroundFlag
---@field index number
---@field flagID number
---@field hitPosition FVector
---@field itemID number
---@field isValidPosition boolean
FQuickGroundFlag = {}


---@class FRoundDiceInfo
---@field LastTeamDiceTime number
---@field LastDicePlayerKey number
FRoundDiceInfo = {}


---@class FPushOneMsgToUIDelegate : ULuaMulticastDelegate
FPushOneMsgToUIDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, msg: string, chaterName: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPushOneMsgToUIDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param msg string
---@param chaterName string
function FPushOneMsgToUIDelegate:Broadcast(msg, chaterName) end


---@class FOnClientReceiveMsgDelegate : ULuaMulticastDelegate
FOnClientReceiveMsgDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, msgItem: FInGameChatMsg, PlayerKey: string, isMe: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnClientReceiveMsgDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param msgItem FInGameChatMsg
---@param PlayerKey string
---@param isMe boolean
function FOnClientReceiveMsgDelegate:Broadcast(msgItem, PlayerKey, isMe) end


---@class FOnServerSendMsgDelegate : ULuaMulticastDelegate
FOnServerSendMsgDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, msgItem: FInGameChatMsg, PlayerKey: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnServerSendMsgDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param msgItem FInGameChatMsg
---@param PlayerKey string
function FOnServerSendMsgDelegate:Broadcast(msgItem, PlayerKey) end


---@class FOnClientReceiveBigplaneBulletScreenDataDelegate : ULuaMulticastDelegate
FOnClientReceiveBigplaneBulletScreenDataDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, BulletParam: string, TextID: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnClientReceiveBigplaneBulletScreenDataDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param BulletParam string
---@param TextID number
function FOnClientReceiveBigplaneBulletScreenDataDelegate:Broadcast(BulletParam, TextID) end


---@class UChatComponent: UActorComponent
---@field end_time number
---@field reason string
---@field end_timeNoPerception number
---@field VoicePackets string
---@field chatQuickList ULuaArrayHelper<FQuickChatIDAndAudio>
---@field HighPriorityAudioIDList ULuaArrayHelper<number>
---@field AdditionalAudioIDList ULuaArrayHelper<FQuickChatIDAndAudio>
---@field chatAvatarQuickList ULuaArrayHelper<FQuickChatIDAndAudio>
---@field TeammateColor string
---@field MyColor string
---@field FriendChatInfo ULuaMapHelper<string, FIngameFriendChat>
---@field ChatFlagList ULuaArrayHelper<FQuickChatFlag>
---@field SendMsgCD number
---@field lastShowChatTime number
---@field ShowChatDuration number
---@field IgnorePlayerNamemsgID ULuaMapHelper<number, string>
---@field LastDiceInfo FRoundDiceInfo
---@field LastSelfDiceTime number
---@field DiceRoundCD number
---@field SystemName string
---@field groundFlags ULuaArrayHelper<FQuickGroundFlag>
---@field EndChar string
---@field ColonChar string
---@field TextID2AudioID ULuaMapHelper<number, number>
---@field AvatarTextID2AudioID ULuaMapHelper<number, number>
---@field UID number
---@field OpenID string
---@field PlayerName string
---@field PlatID number
---@field itemIDOnGround number
---@field hitItemPosition FVector
---@field hitGroundValid boolean
---@field hitGroundPosition FVector
---@field DiceMsgID number
---@field DiceMsg string
---@field modifiedMsgContent string
---@field isNeedModify boolean
---@field EndDiceMsg string
---@field CongregationPlayerName string
---@field OnClientReceiveMsg FOnClientReceiveMsgDelegate
---@field OnServerSendMsg FOnServerSendMsgDelegate
---@field QuickGroundFlagList ULuaArrayHelper<FQuickGroundFlag>
---@field IsCanSendMsgToBubble boolean
---@field BulletMaxIndex number
---@field OnClientReceiveBigplaneBulletScreenData FOnClientReceiveBigplaneBulletScreenDataDelegate
---@field NeedDisableGameModes ULuaSetHelper<string>
local UChatComponent = {}

---@param pkey number
function UChatComponent:SetPlayerKey(pkey) end

function UChatComponent:SetAvatarQuickCheckMap() end

function UChatComponent:OnControllerPostLogin() end

---@param _LastDiceInfo FRoundDiceInfo
function UChatComponent:Client_LastDiceInfo(_LastDiceInfo) end

---@param _LastSelfDiceTime number
function UChatComponent:Client_LastSelfDiceTime(_LastSelfDiceTime) end

---@param _chatAvatarQuickList ULuaArrayHelper<FQuickChatIDAndAudio>
function UChatComponent:Client_chatAvatarQuickList(_chatAvatarQuickList) end

---@param _chatQuickList ULuaArrayHelper<FQuickChatIDAndAudio>
function UChatComponent:Client_chatQuickList(_chatQuickList) end

---@param InModeAudioIDList ULuaArrayHelper<number>
function UChatComponent:SetAdditionalAudioIDList(InModeAudioIDList) end

---@param InAdditionalAudioIDList ULuaArrayHelper<FQuickChatIDAndAudio>
function UChatComponent:Client_SetAdditionalAudioIDList(InAdditionalAudioIDList) end

function UChatComponent:OnRep_LastDiceInfo() end

---@return boolean
function UChatComponent:IsStartRoundDice() end

---@return boolean
function UChatComponent:DiceRoundStartBySelf() end

function UChatComponent:OnRep_LastSelfTime() end

---@return boolean
function UChatComponent:CanDiceNow() end

---@param SettingQuickTextList ULuaArrayHelper<number>
function UChatComponent:ServerSetEditorQuickTextList(SettingQuickTextList) end

---@param bOpen boolean
function UChatComponent:ServerSwitchVoiceChanger(bOpen) end

function UChatComponent:OnRep_chatAvatarQuickList() end

function UChatComponent:OnRep_chatQuickList() end

---@param chatType QuickChatType
---@param msgID number
---@return number
function UChatComponent:GetAudioIDByMsgID(chatType, msgID) end

---@param MsgID number
---@param audioID number
---@return boolean
function UChatComponent:CheckAudioID(MsgID, audioID) end

function UChatComponent:FilterQuickChatListBySetting() end

---@param CustomMsg FInGameChatMsg
function UChatComponent:SendCustomMsg(CustomMsg) end

---@param CustomMsg FInGameChatMsg
---@return string
function UChatComponent:GetPlayerKeyFromChatMsg(CustomMsg) end

---@param CustomMsg FInGameChatMsg
---@param PlayerKey string
function UChatComponent:SetPlayerKeyToChatMsg(CustomMsg, PlayerKey) end

---@param State EStateType
function UChatComponent:ChangeServerState(State) end

---@return number
function UChatComponent:GetTodayPlayTimes() end

function UChatComponent:IncreasePlayTimes() end

---@param msg string
function UChatComponent:ReportBattleChat(msg) end

---@param GameID string
---@return boolean
function UChatComponent:GetCurrGameIsPlay(GameID) end

---@param GameID string
function UChatComponent:SetCurrGameIsPlay(GameID) end

---@param msgItem FInGameChatMsg
---@return boolean
function UChatComponent:ServerCanSendMsg(msgItem) end

---@param msgItem FInGameChatMsg
function UChatComponent:ServerSendMsg(msgItem) end

---@param StartDice boolean
function UChatComponent:ServerSendDice(StartDice) end

---@param bExclusiveSelf boolean
function UChatComponent:GetTeammateChatComponent(bExclusiveSelf) end

---@param bExclusiveSelf boolean
function UChatComponent:GetCampTeammateChatComponet(bExclusiveSelf) end

---@param bExclusiveSelf boolean
function UChatComponent:GetChatList(bExclusiveSelf) end

---@param Res number
function UChatComponent:SetAvatarQuickList(Res) end

function UChatComponent:EndDiceRound() end

---@param msgItem FInGameChatMsg
---@param isMe boolean
function UChatComponent:DispatchServerMsg(msgItem, isMe) end

---@param _msgAudio FInGameChatMsg
---@return FInGameChatMsg
function UChatComponent:GetBattleMessageInfoChatMsg(_msgAudio) end

---@param _uid string
---@param _content string
---@param _openid string
---@param _name string
---@param _platid number
function UChatComponent:FilterChatReq(_uid, _content, _openid, _name, _platid) end

---@param msgItem FInGameChatMsg
---@param isMe boolean
function UChatComponent:ClientReceiveMsg(msgItem, isMe) end

---@param item FInGameChatMsg
---@param name string
---@param content string
---@param msgID number
---@param audioID number
---@param isMe boolean
---@param playSound boolean
---@param PlayerKey string
function UChatComponent:AddOneMsgToUI1(item, name, content, msgID, audioID, isMe, playSound, PlayerKey) end

---@param name string
---@param content string
---@param isMe boolean
---@param isSys boolean
---@param msgID number
function UChatComponent:SendDirtyFilter(name, content, isMe, isSys, msgID) end

---@param msgItem FInGameChatMsg
---@param isMe boolean
function UChatComponent:ShowTeamMsg(msgItem, isMe) end

---@param msgItem FInGameChatMsg
---@param flatType ChatFlagType
function UChatComponent:ShowFlag(msgItem, flatType) end

function UChatComponent:UpdateFlagIcon() end

---@param msg string
---@param msgID number
---@param chatType QuickChatType
function UChatComponent:BPHandleSendMsgInfo(msg, msgID, chatType) end

---@param filterText string
---@param callback_data string
function UChatComponent:OnFilterFinish(filterText, callback_data) end

---@param str_gid string
---@param sender_name string
---@param chat_content string
---@param self_msg boolean
function UChatComponent:NotifyFriendChat(str_gid, sender_name, chat_content, self_msg) end

---@param str_gid string
---@param sender_name string
---@param msg string
---@param refuse_texts ULuaArrayHelper<string>
---@param msgType number
function UChatComponent:NotifyFriendInvite(str_gid, sender_name, msg, refuse_texts, msgType) end

---@param Gid string
---@param Name string
---@param Content string
---@param isSelf boolean
---@param ExtraParams FIngameFriendChatMsgExtraParams
function UChatComponent:AddFriendChat(Gid, Name, Content, isSelf, ExtraParams) end

---@param gid string
---@param name string
---@param msgText string
---@param refuse_texts ULuaArrayHelper<string>
function UChatComponent:OnInviteNextBattle(gid, name, msgText, refuse_texts) end

---@param gid string
---@param name string
---@param msgText string
---@param refuse_texts ULuaArrayHelper<string>
function UChatComponent:OnAddFriendInBattle(gid, name, msgText, refuse_texts) end

---@param gid string
---@param name string
---@param bReply boolean
---@param replyMsg string
function UChatComponent:InviteNextBattleReply(gid, name, bReply, replyMsg) end

---@param gid string
---@param name string
---@param bReply boolean
---@param replyMsg string
function UChatComponent:AddFriendInBattleReply(gid, name, bReply, replyMsg) end

---@param str_gid string
---@param sender_name string
---@param bReply boolean
---@param replyMsg string
---@param msgType number
function UChatComponent:NotifyFriendReplyInvite(str_gid, sender_name, bReply, replyMsg, msgType) end

function UChatComponent:CloseChatHistoryList() end

---@param bShow boolean
function UChatComponent:ShowQuickPanel(bShow) end

---@return number
function UChatComponent:GetHistoryRedPointCount() end

---@param msgID number
---@param resID number
---@param alternateMsgID number
function UChatComponent:UpdateQuickItemText(msgID, resID, alternateMsgID) end

---@return number
function UChatComponent:GetCurrentTimeSeconds() end

---@param SwitchGroup string
---@param SwitchState string
---@param BankName string
---@param EventName string
function UChatComponent:SwitchAndLoadBankAndPlay(SwitchGroup, SwitchState, BankName, EventName) end

---@param pEvent UAkAudioEvent
function UChatComponent:PostName(pEvent) end

---@param InInstanceID number
---@param outFlag FQuickGroundFlag
---@return boolean
function UChatComponent:FindQuickGroundFlag(InInstanceID, outFlag) end

function UChatComponent:RemoveInvalidQuickGroundFlag() end

---@param InInstanceID number
function UChatComponent:RemoveQuickGroundFlag(InInstanceID) end

---@param InInstanceID number
---@param InFlag FQuickGroundFlag
function UChatComponent:AddQuickGroundFlag(InInstanceID, InFlag) end

function UChatComponent:RemoveAllQuickGroundFlag() end

function UChatComponent:OnPlayerEnterFlying() end

---@param CurUid string
function UChatComponent:GetCampFriendObserversReq(CurUid) end

---@param CurUid string
function UChatComponent:ServerSendCampFirendObserversReq(CurUid) end

---@param PlayerKey string
---@return boolean
function UChatComponent:CanPlaySound(PlayerKey) end

---@param msgItem FInGameChatMsg
function UChatComponent:SendCurMsgToChatBubbleComp(msgItem) end

---@param msgID number
function UChatComponent:SendCurMsgToChatBubbleCompByTextID(msgID) end

---@param IsCanSend boolean
function UChatComponent:SetCurPlayerChatBubbleIsVisible(IsCanSend) end

---@param PC ASTExtraPlayerController
---@param CurBaseID number
function UChatComponent:ServerProcessBulletDataByPlayerController(PC, CurBaseID) end

---@param BaseID number
---@return number
function UChatComponent:GetRandomBulletIDByBulletTable(BaseID) end

---@param BulletParam string
---@param TextID number
function UChatComponent:ClientReceiveBulletScreenData(BulletParam, TextID) end
