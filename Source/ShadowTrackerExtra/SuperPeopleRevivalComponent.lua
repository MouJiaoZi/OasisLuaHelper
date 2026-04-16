---@meta

---@class FProphaseRevivalValidityChanged : ULuaMulticastDelegate
FProphaseRevivalValidityChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bValid: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FProphaseRevivalValidityChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param bValid boolean
function FProphaseRevivalValidityChanged:Broadcast(bValid) end


---@class FMetaphaseRevivalValidityChanged : ULuaMulticastDelegate
FMetaphaseRevivalValidityChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bValid: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FMetaphaseRevivalValidityChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param bValid boolean
function FMetaphaseRevivalValidityChanged:Broadcast(bValid) end


---@class FProphaseRevivalNumChanged : ULuaMulticastDelegate
FProphaseRevivalNumChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Num: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FProphaseRevivalNumChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param Num number
function FProphaseRevivalNumChanged:Broadcast(Num) end


---@class FMetaphaseRevivalNumChanged : ULuaMulticastDelegate
FMetaphaseRevivalNumChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Num: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FMetaphaseRevivalNumChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param Num number
function FMetaphaseRevivalNumChanged:Broadcast(Num) end


---@class FCurrRevivalTimesChanged : ULuaMulticastDelegate
FCurrRevivalTimesChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, CurrRevivalTimes: number, PlayerKey: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCurrRevivalTimesChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param CurrRevivalTimes number
---@param PlayerKey string
function FCurrRevivalTimesChanged:Broadcast(CurrRevivalTimes, PlayerKey) end


---@class USuperPeopleRevivalComponent: UActorComponent, ICheckRevivalSelfInterface
---@field ProphaseValidRevivalTime number
---@field ProphaseValidRevivalRange number
---@field ProphaseRevivalDelayTime number
---@field bShowRevivalCount boolean
---@field MetaphaseValidRevivalTime number
---@field MetaphaseValidRevivalRange number
---@field MetaphaseRevivalDelayTime number
---@field bNotifyClientRespawnCompletely boolean
---@field RevivalHeight number
---@field WeatherIndex number
---@field SelfTipsID number
---@field TeammatesTipsID number
---@field bTipsShowName boolean
---@field bUseLocalSetting boolean
---@field ProphaseWithoutCircleRevivalBackbackCfgs ULuaArrayHelper<FRevivalBackpackParam>
---@field ProphaseWithCircleRevivalBackbackCfgs ULuaArrayHelper<FRevivalBackpackParam>
---@field MetaphaseRevivalBackbackCfgs ULuaArrayHelper<FRevivalBackpackParam>
---@field ProphaseWithoutCircleCreateAirplaneParam FCreateAirplaneParam
---@field ProphaseWithCircleCreateAirplaneParam FCreateAirplaneParam
---@field MetaphaseCreateAirplaneParam FCreateAirplaneParam
---@field FunctionWhiteList ULuaArrayHelper<string>
---@field ProphaseRevivalValidityChanged FProphaseRevivalValidityChanged
---@field MetaphaseRevivalValidityChanged FMetaphaseRevivalValidityChanged
---@field ProphaseRevivalNumChanged FProphaseRevivalNumChanged
---@field MetaphaseRevivalNumChanged FMetaphaseRevivalNumChanged
---@field CurrRevivalTimesChanged FCurrRevivalTimesChanged
---@field bProphaseRevivalValidity boolean
---@field bMetaphaseRevivalValidity boolean
---@field ProphaseRevivalTlog number
---@field MetaphaseRevivalTlog number
---@field EnterWaitRevivalTimesTlog number
---@field bRepProphaseValidity boolean
---@field bRepMetaphaseValidity boolean
---@field MetaphaseCreateAirplaneParamBackup FCreateAirplaneParam
---@field MetaphaseRevivalFlag string
local USuperPeopleRevivalComponent = {}

function USuperPeopleRevivalComponent:EnterRevivalState() end

---@param PlayerKey number
function USuperPeopleRevivalComponent:LeaveRevivalState(PlayerKey) end

function USuperPeopleRevivalComponent:OnPlayerExitGame() end

---@param bIsPlayerAlive boolean
function USuperPeopleRevivalComponent:OnPlayerEscapeWhenGameEnd(bIsPlayerAlive) end

---Revive Player(revive component owner most of the time, But because there is an additional controller passed in, you can transform it to Necromancer).
---@param PlayerController ASTExtraPlayerController
---@param RevivalLocation FVector
---@param bAutoInvoking boolean
---@param RevivePlayerController ASTExtraPlayerController
---@return boolean
function USuperPeopleRevivalComponent:RevivePlayer(PlayerController, RevivalLocation, bAutoInvoking, RevivePlayerController) end

function USuperPeopleRevivalComponent:ScriptLeaveRevival() end

---@return boolean
function USuperPeopleRevivalComponent:CheckPlayerCanReviveSelf() end

---@return boolean
function USuperPeopleRevivalComponent:CheckPlayerCanRevivalProphase() end

---@return boolean
function USuperPeopleRevivalComponent:CheckPlayerCanRevivalMetaphase() end

---@return boolean
function USuperPeopleRevivalComponent:CheckPlayerHasAliveTeammates() end

---@return boolean
function USuperPeopleRevivalComponent:CheckPlayerCanRevivalByOtherWay() end

---@return boolean
function USuperPeopleRevivalComponent:ExecutePlayerRevivalByOtherWay() end

---@param PlayerController ASTExtraPlayerController
function USuperPeopleRevivalComponent:EnterObservation(PlayerController) end

---@param PassedTime number
function USuperPeopleRevivalComponent:ProphaseRevivalValidityCheck(PassedTime) end

---@param PassedTime number
function USuperPeopleRevivalComponent:MetaphaseRevivalValidityCheck(PassedTime) end

---@param PassedTime number
function USuperPeopleRevivalComponent:ScriptProphaseRevivalValidityCheck(PassedTime) end

---@param PassedTime number
function USuperPeopleRevivalComponent:ScriptMetaphaseRevivalValidityCheck(PassedTime) end

function USuperPeopleRevivalComponent:SettleImmediately() end

---@return boolean
function USuperPeopleRevivalComponent:CustomCheckPlayerCanReviveSelf() end

---@return boolean
function USuperPeopleRevivalComponent:CustomCheckCanAutoRevivalSelf() end

---@return boolean
function USuperPeopleRevivalComponent:CheckCanAutoRevivalSelf() end

function USuperPeopleRevivalComponent:TrigBattleResultIfConditionMatch() end

function USuperPeopleRevivalComponent:TrigAllBattleResultIfConditionMatch() end

---@param WorldContext UObject
function USuperPeopleRevivalComponent:StaticTrigAllBattleResultIfConditionMatch(WorldContext) end

---@return boolean
function USuperPeopleRevivalComponent:PostTrigBattleResultIfConditionMatch() end

function USuperPeopleRevivalComponent:BroadcastClientRespawnCompletely() end

---@param Message string
function USuperPeopleRevivalComponent:ModifyRevivalParamBeforeRevive(Message) end

---@param Message string
function USuperPeopleRevivalComponent:ModifyRevivalParamAfterRevive(Message) end

function USuperPeopleRevivalComponent:OnRep_ProphaseRevivalValidity() end

function USuperPeopleRevivalComponent:OnRep_MetaphaseRevivalValidity() end

function USuperPeopleRevivalComponent:OnRep_ProphaseValidRevivalTime() end

function USuperPeopleRevivalComponent:OnRep_MetaphaseValidRevivalTime() end

---@param Actor AActor
---@param PlayerRespawnPos FVector
---@param SpecificRad number
function USuperPeopleRevivalComponent:ProphaseRevivalWithoutCircleFunction(Actor, PlayerRespawnPos, SpecificRad) end

---@param Actor AActor
---@param PlayerRespawnPos FVector
function USuperPeopleRevivalComponent:ProphaseRevivalWithCircleFunction(Actor, PlayerRespawnPos) end

---@param Actor AActor
---@param PlayerRespawnPos FVector
---@param SpecificRad number
function USuperPeopleRevivalComponent:MetaphaseRevivalFunction(Actor, PlayerRespawnPos, SpecificRad) end

---@param Character ASTExtraBaseCharacter
function USuperPeopleRevivalComponent:OnPlayerKilled(Character) end

---@param Character ASTExtraBaseCharacter
function USuperPeopleRevivalComponent:OnAIPlayerKilled(Character) end

---@param PlayerController AUAEPlayerController
function USuperPeopleRevivalComponent:OnPlayerControllerRespawned(PlayerController) end

---@param PlayerKey number
---@param RespawnPos FVector
function USuperPeopleRevivalComponent:ExecuteProphaseTlog(PlayerKey, RespawnPos) end

---@param PlayerKey number
---@param RespawnPos FVector
---@param Savor number
function USuperPeopleRevivalComponent:ExecuteMetaphaseTlog(PlayerKey, RespawnPos, Savor) end

function USuperPeopleRevivalComponent:OnRep_RevivalPlaneClass() end

---@return boolean
function USuperPeopleRevivalComponent:GetbInRevival() end
