---@meta

---@class EEQCompareOp
---@field GreateOrEqual number @大于等于设置时可见
---@field Less number @小于设置时可见
---@field NUM number
EEQCompareOp = {}


---@class ERenderQualityEngine
---@field VERYSMOOTH number @超流畅
---@field SMOOTH number @流畅
---@field BALANCE number @均衡
---@field HIGHDEFINITION number @高清
---@field HIGHDEFINITIONPLUS number @HDR高清
---@field ULTRAHIGHDEFINITION number @超高清
---@field ULTIMATEHIGH number @极清
---@field NUM number
ERenderQualityEngine = {}


---@class ERenderQualityEngine_PC
---@field Low number @低
---@field Medium number @中
---@field High number @高
---@field NUM number
ERenderQualityEngine_PC = {}


---@class EPakResState
---@field UnInit number
---@field MountSuccess number
---@field MountFailedAndDelete number
EPakResState = {}


---@class EPakSplitState
---@field Unknow number
---@field DoNotSplit number
---@field Split number
EPakSplitState = {}


---@class ESpecialPakID
---@field UltimatePak number
---@field FppPak number
---@field ClimbPak number
---@field ExAudioPak number
ESpecialPakID = {}


---hold all Quality setting that affect loading or other process
---@class FExpectedQuality
---@field CompareOp EEQCompareOp
---@field ExpectedRenderQuality ERenderQualityEngine
---@field ExpectedDeviceQuality number
---@field bUseRenderQualityControl number
---@field bUseDeviceQualityControl number
---@field bRequireAllConditionMeet number
---@field PCExpectedRenderQuality ERenderQualityEngine_PC
FExpectedQuality = {}


---@class FOnRenderQualityUpdatedDelegate : ULuaSingleDelegate
FOnRenderQualityUpdatedDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnRenderQualityUpdatedDelegate:Bind(Callback, Obj) end

---执行委托
function FOnRenderQualityUpdatedDelegate:Execute() end
