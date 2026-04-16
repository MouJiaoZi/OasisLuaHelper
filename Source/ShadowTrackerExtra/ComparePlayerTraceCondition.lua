---@meta

---@class FComparePlayerTraceConditionParam
---@field bTargetClassIsIgnore boolean
---@field bRayTrace boolean
---@field TraceRadiusOffset number
---@field TraceDisanceOffset number
---@field TraceOffset number
---@field TraceRadius number
---@field TraceStartPos FVector
---@field HitActor ULuaArrayHelper<AActor>
---@field HitComponent ULuaArrayHelper<UPrimitiveComponent>
---@field ChannelList ULuaArrayHelper<ECollisionChannel>
---@field TargetClass ULuaArrayHelper<UObject>
FComparePlayerTraceConditionParam = {}


---@class FPlayerTraceHitInfo
FPlayerTraceHitInfo = {}


---@class UComparePlayerTraceCondition: UCompareBaseCondition
---@field bRayTrace boolean
---@field TraceRadiusOffset number
---@field TraceDisanceOffset number
---@field ChannelList ULuaArrayHelper<ECollisionChannel>
---@field bTargetClassIsIgnore boolean
---@field TargetClass ULuaArrayHelper<UObject>
---@field ParamList ULuaArrayHelper<FComparePlayerTraceConditionParam>
---@field TraceHitInfoList ULuaArrayHelper<FPlayerTraceHitInfo>
local UComparePlayerTraceCondition = {}

---@param OwnerCom UObjectPropertyCompareBase
function UComparePlayerTraceCondition:InitCompareNode(OwnerCom) end

function UComparePlayerTraceCondition:UnInitCompareNode() end

---@param InDeltaTime number
---@return ECompareConditionResult
function UComparePlayerTraceCondition:CalculateConditionResult(InDeltaTime) end

---@param OutString string
function UComparePlayerTraceCondition:GetConditionInfo(OutString) end

function UComparePlayerTraceCondition:ResetCondition() end

---@param InNode UCompareBaseNode
---@return number
function UComparePlayerTraceCondition:SaveNodeParam(InNode) end

---@param InParamIndex number
---@return boolean
function UComparePlayerTraceCondition:PickNodeParam(InParamIndex) end

---@param InParamIndex number
function UComparePlayerTraceCondition:ModifyNodeParam(InParamIndex) end

function UComparePlayerTraceCondition:ResetParamList() end
