---@meta

---@class EIconState
---@field None number
---@field IconReady number
---@field IconGrey number
EIconState = {}


---@class FIconStateTextParam
---@field Text string @The text to display
---@field ColorAndOpacity FSlateColor @The color of the text
---@field Font FSlateFontInfo @The font to render the text with
---@field ShadowOffset FVector2D @The direction the shadow is cast
---@field ShadowColorAndOpacity FLinearColor @The color of the shadow
---@field MinDesiredWidth number @The minimum desired size for the text
---@field Justification ETextJustify @How the text should be aligned with the margin.
---@field VerticalJustification ETextVerticalJustify
FIconStateTextParam = {}


---@class FIconStateParam
---@field IconBrush FSlateBrush
---@field IconNameText FIconStateTextParam
FIconStateParam = {}


---@class FRefreshCDStateParam
---@field text UTextBlock
---@field progressImage UImage
---@field progressMatParam string
---@field pointImages UPanelWidget
---@field pointMatParam string
---@field ProgressBar_Left UProgressBar
---@field ProgressBar_Right UProgressBar
---@field progressPanel UPanelWidget
---@field chargeImage UImage
---@field chargeBackgroundImage UImage
---@field chargeProgressMatParam string
---@field chargeAmountMatParam string
FRefreshCDStateParam = {}


---@class FSkillIconEventDelagate : ULuaSingleDelegate
FSkillIconEventDelagate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSkillIconEventDelagate:Bind(Callback, Obj) end

---执行委托
function FSkillIconEventDelagate:Execute() end


---@class FSkillIconStopEventDelagate : ULuaMulticastDelegate
FSkillIconStopEventDelagate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, stopReason: UTSkillStopReason) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSkillIconStopEventDelagate:Add(Callback, Obj) end

---触发 Lua 广播
---@param stopReason UTSkillStopReason
function FSkillIconStopEventDelagate:Broadcast(stopReason) end


---技能初始化时的UI
---@class UUTSkillIconWidgetTemplate: UUTSkillWidget
---@field SkillIconStateConfigs ULuaMapHelper<ESkillIconStatus, FIconStateParam>
---@field cdType ECDType
---@field cdTypeStr string
---@field ProgressMaterialParamName string
---@field pointMaxRate number
---@field PointMaterialParamName string
---@field slotName_OnRoot string
---@field FunctionBP UUTSkillIconWidgetTemplate_Func
---@field ReCallSkillStartOnConstruct boolean
---@field FunctionBPParamName string
---@field bFunctionBPInit boolean
---@field UpdateDelta number
---@field bRefreshNameText boolean
---@field bRefreshCDTimerText boolean
---@field bRefreshProgress boolean
---@field bRefreshCDProcessAnticlockwise boolean
---@field bFlipCDRecovery boolean
---@field bInverseCDByCastingStatsText boolean
---@field bUseCountTimeAsCDText boolean
---@field HideProgressImageWhenSkillCDFinish boolean
---@field bChangeSkillStateWhenButtonRelease boolean
---@field SkillBindedItemID FItemDefineID
---@field SkillBindedItemCount number
---@field EventTypeIndex number
---@field DownEvent UTSkillEventType
---@field UpEvent UTSkillEventType
---@field ClickEvent UTSkillEventType
---@field HoveredEvent UTSkillEventType
---@field UnHoveredEvent UTSkillEventType
---@field DownEventStr string
---@field UpEventStr string
---@field ClickEventStr string
---@field HoveredEventStr string
---@field UnHoveredEventStr string
---@field refreshParams FRefreshCDStateParam
---@field OnSkillReadyEvent FSkillIconEventDelagate
---@field OnSkillNotReadyEvent FSkillIconEventDelagate
---@field OnSkillTickCDEvent FSkillIconEventDelagate
---@field OnSkillTickCDFinishEvent FSkillIconEventDelagate
---@field OnSkillActiveEvent FSkillIconEventDelagate
---@field OnSkillStopEvent FSkillIconStopEventDelagate
---@field OnCDCastigRecovering FSkillIconEventDelagate
---@field OnCDCastig FSkillIconEventDelagate
---@field OnSetSkillActiveEvent FSkillIconEventDelagate
---@field OnSetSkillDeactiveEvent FSkillIconEventDelagate
---@field TipsID number
---@field ShowStageNames ULuaArrayHelper<string>
---@field ChargeProgressMaterialParamName string
---@field ChargeAmountMaterialParamName string
local UUTSkillIconWidgetTemplate = {}

---@param InCurEnergy number
---@param InMaxEnergy number
---@param DeltaEnergy number
---@param ShouldOverride boolean
---@return number
function UUTSkillIconWidgetTemplate:GetCurrentCDPercentage(InCurEnergy, InMaxEnergy, DeltaEnergy, ShouldOverride) end

function UUTSkillIconWidgetTemplate:CancelSkill() end

function UUTSkillIconWidgetTemplate:LoadFinishFunctionBP() end

function UUTSkillIconWidgetTemplate:InitFuncBP() end

---@param refreshParam FRefreshCDStateParam
function UUTSkillIconWidgetTemplate:StartRefreshEnergyProcess(refreshParam) end

function UUTSkillIconWidgetTemplate:StopRefreshEnergyProcess() end

---@param refreshParam FRefreshCDStateParam
function UUTSkillIconWidgetTemplate:RefreshEnergyProcessOnce(refreshParam) end

---@return boolean
function UUTSkillIconWidgetTemplate:IsRefreshCDProcess() end

---@param text UTextBlock
---@param show boolean
function UUTSkillIconWidgetTemplate:RefreshSkillName(text, show) end

function UUTSkillIconWidgetTemplate:UpdateEnergyProcess() end

function UUTSkillIconWidgetTemplate:OnIconBtnDownEvent() end

function UUTSkillIconWidgetTemplate:OnIconBtnUPEvent() end

function UUTSkillIconWidgetTemplate:OnIconBtnClickEvent() end

function UUTSkillIconWidgetTemplate:OnIconBtnHoveredEvent() end

function UUTSkillIconWidgetTemplate:OnIconBtnUnHoveredEvent() end

---@param skillIndex number
function UUTSkillIconWidgetTemplate:OnSkillStart(skillIndex) end

---@param skillIndex number
---@param stopReason UTSkillStopReason
function UUTSkillIconWidgetTemplate:OnSkillStop(skillIndex, stopReason) end

---@param skillIndex number
---@param bActive boolean
function UUTSkillIconWidgetTemplate:OnSkillActiveChanged(skillIndex, bActive) end

---@param OverriderTipsID number
function UUTSkillIconWidgetTemplate:SetOverrideTipsID(OverriderTipsID) end

---@param bShow boolean
function UUTSkillIconWidgetTemplate:ShowUnusableLock(bShow) end

function UUTSkillIconWidgetTemplate:RefreshChargeUI() end

---@param CurChargeNum number
function UUTSkillIconWidgetTemplate:OnSkillMaxChargeNumChanged(CurChargeNum) end
