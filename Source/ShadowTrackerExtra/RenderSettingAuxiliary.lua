---@meta

---@class ERenderAspectRatio
---@field Sixteen_To_Nine number
---@field Three_To_Two number
ERenderAspectRatio = {}


---@class FUISwitchConfig
---@field Desc string
---@field ShowEnableCVars string
---@field StateCVars string
FUISwitchConfig = {}


---@class UUIAuxiliaryConfig: UObject
---@field UISwitchConfig ULuaArrayHelper<FUISwitchConfig>
local UUIAuxiliaryConfig = {}


---@class UHighResolutionRenderLevelConfig: UObject
---@field UIUpToHighResolutionRenderLevel ULuaArrayHelper<number>
---@field ForceHighResolutionRenderLevel ULuaArrayHelper<number>
local UHighResolutionRenderLevelConfig = {}


---@class UViewDistanceSet: UObject
---@field ViewDistanceScaleOnPC ULuaArrayHelper<number>
---@field SreenSizeCullingFactorOnPC ULuaArrayHelper<number>
---@field WideScreenFactorOnPC ULuaArrayHelper<FVector>
local UViewDistanceSet = {}


---@class URenderAuxiliaryConfig: UObject
---@field DefaultHighHDRGrade number
local URenderAuxiliaryConfig = {}


---@class URenderSettingAuxiliary: UBlueprintFunctionLibrary
local URenderSettingAuxiliary = {}

---@param SwitchDesc string
---@return number
function URenderSettingAuxiliary:GetUISwitchEnableShowFlag(SwitchDesc) end

---@param SwitchDesc string
---@return number
function URenderSettingAuxiliary:GetUISwitchState(SwitchDesc) end

---@param SwitchDesc string
---@param SwitchValue number
---@return boolean
function URenderSettingAuxiliary:SetUISwitchState(SwitchDesc, SwitchValue) end

---@param SwitchDesc string
---@return number
function URenderSettingAuxiliary:GetUISwitchFloatState(SwitchDesc) end

---@param SwitchDesc string
---@param SwitchFloatValue number
---@return boolean
function URenderSettingAuxiliary:SetUISwitchFloatState(SwitchDesc, SwitchFloatValue) end

---@param RenderLevel number
---@return boolean
function URenderSettingAuxiliary:IsUIUpToHighResolutionRenderLevelSupport(RenderLevel) end

---@param RenderLevel number
---@return boolean
function URenderSettingAuxiliary:IsForceHighResolutionRenderLevel(RenderLevel) end

---@return number
function URenderSettingAuxiliary:GetCampPriorityResolution() end

function URenderSettingAuxiliary:InitRenderAspectRatio() end

---@param AspectRatioMode ERenderAspectRatio
---@param InObj UObject
function URenderSettingAuxiliary:SetRenderAspectRatio(AspectRatioMode, InObj) end

---@return boolean
function URenderSettingAuxiliary:ExecuteUltimateHighCVars() end

---@return boolean
function URenderSettingAuxiliary:ExecuteUltimateHighBasicCVars() end

---@return boolean
function URenderSettingAuxiliary:GetCurrentMapSupportUltimateHighRuntime() end

---@param bSupport boolean
function URenderSettingAuxiliary:SetCurrentMapSupportUltimateHighRuntime(bSupport) end

---@param Applying FRenderQualitySettings
---@param DstSet FRenderQualitySettings
---@return boolean
function URenderSettingAuxiliary:JudgeRenderSettingExecuteFlag(Applying, DstSet) end

---@param SetValue number
function URenderSettingAuxiliary:SetUserUIViewScale(SetValue) end

---@param SetValue number
function URenderSettingAuxiliary:SetGISwitch(SetValue) end

---@return boolean
function URenderSettingAuxiliary:IsWindowsNoEditorES31() end
