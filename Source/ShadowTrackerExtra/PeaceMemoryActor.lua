---@meta

---@class EPeaceMemorySubType
---@field EPMST_None number
---@field EPMST_TripleKill number @三连暴走
---@field EPMST_QuadraKill number @四连枪王
---@field EPMST_PentaKill number @枪神
---@field EPMST_TotalKill number @战场主宰
---@field EPMST_SnipeHead number @超远狙击
---@field EPMST_AntitankGrenadeBoom number @雷神
---@field EPMST_WinGame number @吃鸡
---@field EPMST_ClockIn number @打卡互动
---@field EPMST_Max number
EPeaceMemorySubType = {}


---@class EPeaceMemoryActorState
---@field EPMAS_WaitEndRecord number @等待录制结束
---@field EPMAS_WaitUploadData number @等待上传
---@field EPMAS_HasUploadData number @已上传
---@field EPMAS_Max number
EPeaceMemoryActorState = {}


---@class APeaceMemoryActor: AActivityBaseActor
---@field MyIndex number
---@field DescribeInfo string
---@field RecordName string
---@field RecordTimes number
---@field LikeNum number
---@field MyRealPosition FVector
---@field AvatarList ULuaArrayHelper<number>
---@field RecordPlayerUID number
---@field MyType EPeaceMemorySubType
---@field bIsGlobal boolean
---@field MyState EPeaceMemoryActorState
---@field OwnerTeamID number
local APeaceMemoryActor = {}

function APeaceMemoryActor:OnRep_MyType() end

function APeaceMemoryActor:OnRep_RecordUID() end

function APeaceMemoryActor:OnRep_IsGlobale() end

function APeaceMemoryActor:OnRep_MyIndex() end

---@param InIndex number
---@param Describe string
---@param AccupyTime number
---@param InUID number
---@param InType EPeaceMemorySubType
---@param InPosition FVector
---@param InAvatarList ULuaArrayHelper<number>
---@param InName string
---@param InLikeNum number
function APeaceMemoryActor:InitParams(InIndex, Describe, AccupyTime, InUID, InType, InPosition, InAvatarList, InName, InLikeNum) end
