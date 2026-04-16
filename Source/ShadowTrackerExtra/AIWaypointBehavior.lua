---@meta

---@class EWaypointParamType
---@field DestroyApexCamp number @破坏Apex营地
---@field KillMobShow number @击杀小怪表演
---@field IdleShow number @Idle表演
---@field CastSkillBuff number @释放buff
---@field AttackAircraft number @金刚打飞机
---@field Evacuate number @撤离
---@field Jump number @金刚跳跃
EWaypointParamType = {}


---@class FWaypointBehaviorFunc : ULuaSingleDelegate
FWaypointBehaviorFunc = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: WaypointParamCommon) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FWaypointBehaviorFunc:Bind(Callback, Obj) end

---执行委托
---@param Param1 WaypointParamCommon
function FWaypointBehaviorFunc:Execute(Param1) end


---@class UWaypointParamBase: UObject
local UWaypointParamBase = {}


---@class UWaypointParam_DestroyApexCamp: UWaypointParamBase
---@field SkillIndex number
local UWaypointParam_DestroyApexCamp = {}


---@class UWaypointParam_KillMobShow: UWaypointParamBase
---@field SkillIndex number
---@field MonsterID number
local UWaypointParam_KillMobShow = {}


---@class UWaypointParam_IdleShow: UWaypointParamBase
---@field IdleTime number
---@field IdleBlendSpaceValue number
local UWaypointParam_IdleShow = {}


---@class UWaypointParam_CastSkillBuff: UWaypointParamBase
---@field SkillIndex number
local UWaypointParam_CastSkillBuff = {}


---@class UWaypointParam_AttackAircraft: UWaypointParamBase
---@field SkillIndex number
local UWaypointParam_AttackAircraft = {}


---@class UWaypointParam_Evacuate: UWaypointParamBase
---@field SkillIndex number
local UWaypointParam_Evacuate = {}


---@class UWaypointParam_Jump: UWaypointParamBase
---@field SkillIndex number
local UWaypointParam_Jump = {}


---@class UAIWaypointBehavior: UObject
---@field EventParams ULuaMapHelper<string, UWaypointParamBase>
---@field KillingMobShowTemplate UAIKillingMobShow
---@field IsFinishJumpKey string
local UAIWaypointBehavior = {}
