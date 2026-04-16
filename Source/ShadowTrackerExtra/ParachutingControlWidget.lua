---@meta

---@class EParachutingCWMsgType
---@field E_Msg_Base number
---@field E_Msg_ShowUI number
---@field E_Msg_HideUI number
---@field E_Msg_ReleaseUI number
---@field E_Msg_Guide number
EParachutingCWMsgType = {}


---@class FC2BPGuideTextParam
---@field GuideID number
---@field TriggerTimes number
---@field Text1 string
---@field Text2 string
---@field Text3 string
---@field Text4 string
FC2BPGuideTextParam = {}


---@class FParachutingCWMsg
---@field MsgType EParachutingCWMsgType
---@field MsgFunName string
---@field StateParam number @For BP_ShowBtnByState Fun Start
---@field IsShow boolean @For Guide Fun Start
---@field TipsParam FC2BPGuideTextParam
---@field RequestActionParam boolean @For BP_AutoResponseRequestAndHideRequestPanel Fun Start
FParachutingCWMsg = {}


---@class UParachutingControlWidget: UUAEUserWidget
---@field CountDownStr string
---@field InviteCountDownTime number
---@field bIsCountingDown boolean
local UParachutingControlWidget = {}

---@param InParachutingCW UParachutingControlWidget
---@param InCacheMsg string
function UParachutingControlWidget:HandleCacheMsg(InParachutingCW, InCacheMsg) end

---@param InParachutingCW UParachutingControlWidget
---@param InCacheMsg string
---@param IsShow boolean
---@param TipsParam FC2BPGuideTextParam
function UParachutingControlWidget:HandleCacheGuideMsg(InParachutingCW, InCacheMsg, IsShow, TipsParam) end

function UParachutingControlWidget:CountDownFinishResponInvite() end

function UParachutingControlWidget:BP_StartJump() end

function UParachutingControlWidget:BP_OpenParachute() end

function UParachutingControlWidget:BP_ReceiveFollowRequst() end

function UParachutingControlWidget:BP_ReceiveTransferLeaderRequest() end

function UParachutingControlWidget:BP_ReceiveTransferAirCraftDriverRequest() end

function UParachutingControlWidget:BP_Reconnect_ResetUIByPlayerControllerState() end

function UParachutingControlWidget:BP_ShowBtnByPlayerControllerState() end

function UParachutingControlWidget:BP_BleParachute() end

function UParachutingControlWidget:BP_BleOpenParachute() end

---@param State number
function UParachutingControlWidget:BP_ShowBtnByState(State) end

---@param IsShow boolean
---@param TipsParam FC2BPGuideTextParam
function UParachutingControlWidget:BP_Show_HideCanJumpTips(IsShow, TipsParam) end

---@param IsShow boolean
---@param TipsParam FC2BPGuideTextParam
function UParachutingControlWidget:BP_Show_HideCanOpenTips(IsShow, TipsParam) end

---@param MyParentWidget UUAEUserWidget
function UParachutingControlWidget:BP_InitWidget(MyParentWidget) end

---@param RequestAction boolean
function UParachutingControlWidget:BP_AutoResponseRequestAndHideRequestPanel(RequestAction) end
