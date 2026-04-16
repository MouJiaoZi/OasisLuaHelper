---@meta

---@class EPlayerHostingState
---@field HostingState_None number
---@field HostingState_Pending number
---@field HostingState_Hosting number
---@field HostingState_Hosted number
EPlayerHostingState = {}


---@class EPlayerRequireHostResult
---@field EPlayerRequireHostResult_None number
---@field EPlayerRequireHostResult_Success number
---@field EPlayerRequireHostResult_NoChance number
---@field EPlayerRequireHostResult_CD number
---@field EPlayerRequireHostResult_bInInvitingList number
---@field EPlayerRequireHostResult_SelfDie number
---@field EPlayerRequireHostResult_Die number
---@field EPlayerRequireHostResult_TooFar number
---@field EPlayerRequireHostResult_InHosting number
---@field EPlayerRequireHostResult_Block number
---@field EPlayerRequireHostResult_HighSegmentLevel number
EPlayerRequireHostResult = {}


---@class EPlayerAcceptHostResult
---@field EPlayerAcceptHostResult_None number
---@field EPlayerAcceptHostResult_Success number
---@field EPlayerAcceptHostResult_SelfDie number
---@field EPlayerAcceptHostResult_Die number
---@field EPlayerAcceptHostResult_TooFar number
---@field EPlayerAcceptHostResult_InHosting number
EPlayerAcceptHostResult = {}


---@class ECancelHostingReason
---@field ECancelHostingReason_Initiator number
---@field ECancelHostingReason_TimeOut number
---@field ECancelHostingReason_SelfDie number
---@field ECancelHostingReason_HosterDie number
---@field ECancelHostingReason_HosterLostConnect number
---@field ECancelHostingReason_BattleResult number
---@field ECancelHostingReason_BanHost number
ECancelHostingReason = {}


---@class FAITutelageMgrRequestHostingResultDelegate : ULuaMulticastDelegate
FAITutelageMgrRequestHostingResultDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerKey: number, Reason: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAITutelageMgrRequestHostingResultDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerKey number
---@param Reason number
function FAITutelageMgrRequestHostingResultDelegate:Broadcast(PlayerKey, Reason) end


---@class FAITutelageMgrRequestHostingResultAllDelegate : ULuaSingleDelegate
FAITutelageMgrRequestHostingResultAllDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAITutelageMgrRequestHostingResultAllDelegate:Bind(Callback, Obj) end

---执行委托
function FAITutelageMgrRequestHostingResultAllDelegate:Execute() end


---@class FAITutelageMgrAddBlockListDelegate : ULuaMulticastDelegate
FAITutelageMgrAddBlockListDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerKey: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAITutelageMgrAddBlockListDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerKey number
function FAITutelageMgrAddBlockListDelegate:Broadcast(PlayerKey) end


---@class FAITutelageMgrReceiveInvitationDelegate : ULuaMulticastDelegate
FAITutelageMgrReceiveInvitationDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerKey: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAITutelageMgrReceiveInvitationDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerKey number
function FAITutelageMgrReceiveInvitationDelegate:Broadcast(PlayerKey) end


---@class FAITutelageMgrAcceptInvitationDelegate : ULuaMulticastDelegate
FAITutelageMgrAcceptInvitationDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerKey: number, Result: number, bInitiator: boolean, EndServerTime: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAITutelageMgrAcceptInvitationDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerKey number
---@param Result number
---@param bInitiator boolean
---@param EndServerTime number
function FAITutelageMgrAcceptInvitationDelegate:Broadcast(PlayerKey, Result, bInitiator, EndServerTime) end


---@class FAITutelageMgrRefuseInvitationDelegate : ULuaMulticastDelegate
FAITutelageMgrRefuseInvitationDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerKey: number, bInitiator: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAITutelageMgrRefuseInvitationDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerKey number
---@param bInitiator boolean
function FAITutelageMgrRefuseInvitationDelegate:Broadcast(PlayerKey, bInitiator) end


---@class FAITutelageMgrCancelHostingDelegate : ULuaMulticastDelegate
FAITutelageMgrCancelHostingDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Reaon: number, bInitiator: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAITutelageMgrCancelHostingDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Reaon number
---@param bInitiator boolean
function FAITutelageMgrCancelHostingDelegate:Broadcast(Reaon, bInitiator) end


---@class FAITutelageMgrShowTipsDelegate : ULuaMulticastDelegate
FAITutelageMgrShowTipsDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, TipsStr: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAITutelageMgrShowTipsDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param TipsStr string
function FAITutelageMgrShowTipsDelegate:Broadcast(TipsStr) end


---@class UAITutelageManagerComponent: UActorComponent
---@field RequestHostingResultDelegate FAITutelageMgrRequestHostingResultDelegate
---@field RequestHostingResultAllDelegate FAITutelageMgrRequestHostingResultAllDelegate
---@field AddBlockListDelegate FAITutelageMgrAddBlockListDelegate
---@field ReceiveInvitationDelegate FAITutelageMgrReceiveInvitationDelegate
---@field AcceptInvitationDelegate FAITutelageMgrAcceptInvitationDelegate
---@field RefuseInvitationDelegate FAITutelageMgrRefuseInvitationDelegate
---@field CancelHostingDelegate FAITutelageMgrCancelHostingDelegate
---@field ShowTipsDelegate FAITutelageMgrShowTipsDelegate
local UAITutelageManagerComponent = {}

---@param TmpRemainHostingTimes number
---@param TmpTotalHostingTime number
---@param TmpStopHostingTime number
---@param bHostOverload boolean
function UAITutelageManagerComponent:ServerInitComponent(TmpRemainHostingTimes, TmpTotalHostingTime, TmpStopHostingTime, bHostOverload) end

function UAITutelageManagerComponent:ClientInitComponent() end

function UAITutelageManagerComponent:LuaEndPlay() end

---@param ResourceID number
function UAITutelageManagerComponent:PlayAIResponseVoice(ResourceID) end
