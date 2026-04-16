---@meta

---技能UI基类
---@class UPESkillWidget: UUAEUserWidget, ILuaInterface
---@field PESkillSlot FGameplayTag
---@field bAutoBindToLocalPCCharacter boolean
---@field bAutoHide boolean
---@field SkillHintUIConfig FPCHintUIConfig
local UPESkillWidget = {}

---@return string
function UPESkillWidget:GetLuaModule() end

---将技能绑定到指定PE组件的指定Slot上
---生效范围C
---@param Comp UPersistBaseComponent @绑定的组件
---@param SlotName FGameplayTag @绑定的槽位
function UPESkillWidget:BindToSlot(Comp, SlotName) end

---绑定用于显示技能图标、名字、描述的控件
---生效范围C
---@param IconImage UImage @图标控件
---@param NameText UTextBlock @名字控件
---@param DescribeText UTextBlock @描述控件
function UPESkillWidget:BindImageAndTextForSkillNameAndIcon(IconImage, NameText, DescribeText) end

---刷新当前UI绑定的控件的内容
---生效范围C
function UPESkillWidget:RefreshSkillUI() end

---获取技能名字
---生效范围C
---@return string @技能名字
function UPESkillWidget:GetSkillName() end

---获取技能描述
---生效范围C
---@return string @技能描述
function UPESkillWidget:GetSkillDetail() end

---获取技能图标
---生效范围C
---@return FSoftObjectPath @技能图标
function UPESkillWidget:GetSkillIcon() end

---@param bInvalidStyle boolean
function UPESkillWidget:SetVirtualJoystickInvalidStyle(bInvalidStyle) end

---@param bInvalidStyle boolean
function UPESkillWidget:SetVirtualJoystickInvalidStyleInternal(bInvalidStyle) end

---@return FGameplayTag
function UPESkillWidget:GetSkillInputTag() end

---Event
---当控件绑定到新的技能时触发
---生效范围C
---@param InOwnerSkill UPersistEffectSkill @当前绑定的技能
function UPESkillWidget:OnSkillBound_BP(InOwnerSkill) end

---Event
---每帧触发，用于更新CD显示
---生效范围C
---@param Delta number @每帧的时间
function UPESkillWidget:UpdateCD_BP(Delta) end

---Event
---当控件绑定的技能CD状态变化时触发
---生效范围C
---@param bIsCD boolean @技能是否处在CD状态
function UPESkillWidget:OnCDStateChange_BP(bIsCD) end

---Event
---当控件绑定的技能的UI信息变化时触发
---生效范围C
function UPESkillWidget:OnSkillUIInfoChange_BP() end

---Event
---当控件绑定的技能Enable状态变化时触发
---生效范围C
---@param bIsEnable boolean @技能是否Enable
function UPESkillWidget:OnEnableChange_BP(bIsEnable) end

---Event
---当控件绑定的技能被禁用Tag(PawnState.ActivatingSkill)导致无法激活时触发
---生效范围C
---@param bIsDisable boolean @技能是否被Tag禁用
function UPESkillWidget:OnTagDisableChange_BP(bIsDisable) end

---Event
---当控件绑定的技能的摇杆输入生效或失效时触发
---生效范围C
---@param bEnable boolean
function UPESkillWidget:OnSkillDirectionInputEnableChange_BP(bEnable) end

---绑定技能按钮控件
---生效范围C
---@param IconImage UImage @图标控件
---@param NameText UTextBlock @名字控件
---@param ClickButton UButton @按钮控件
function UPESkillWidget:InitButton(IconImage, NameText, ClickButton) end

---@param IconImage UImage
---@param NameText UTextBlock
---@param ClickButton UButton
function UPESkillWidget:InitButtonInternal(IconImage, NameText, ClickButton) end

---绑定技能使用层数控件
---生效范围C
---@param LayerText UTextBlock @技能层数
---@param LayerPanel UPanelWidget @技能层数的Panel控件，控制层数的显隐
function UPESkillWidget:InitLayer(LayerText, LayerPanel) end

---@param LayerText UTextBlock
---@param LayerPanel UPanelWidget
function UPESkillWidget:InitLayerInternal(LayerText, LayerPanel) end

---绑定技能CD控件
---生效范围C
---@param CDText UTextBlock @技能CD时间
---@param CDProgressImage UImage @@技能CD进度条
---@param CDProgressPanel UPanelWidget @整个CD的Panel控件，控制CD的显隐
function UPESkillWidget:InitCDProgress(CDText, CDProgressImage, CDProgressPanel) end

---@param CDText UTextBlock
---@param CDProgressImage UImage
---@param CDProgressPanel UPanelWidget
function UPESkillWidget:InitCDProgressInternal(CDText, CDProgressImage, CDProgressPanel) end

---绑定技能能量控件
---生效范围C
---@param EnergyProgressImage UImage @技能能量进度条
---@param EnergyCanvasPanel UPanelWidget @技能能量Panel控件，控制能量进度条的显隐
function UPESkillWidget:InitEnergyProgress(EnergyProgressImage, EnergyCanvasPanel) end

---@param EnergyProgressImage UImage
---@param EnergyCanvasPanel UPanelWidget
function UPESkillWidget:InitEnergyProgressInternal(EnergyProgressImage, EnergyCanvasPanel) end

---绑定技能显示TagDisable状态的控件
---生效范围C
---@param TagDisableCanvasPanel UPanelWidget @技能TagDisable状态的Panel控件，控制TagDisable状态的显隐
function UPESkillWidget:InitTagDisableState(TagDisableCanvasPanel) end

---@param TagDisableCanvasPanel UPanelWidget
function UPESkillWidget:InitTagDisableStateInternal(TagDisableCanvasPanel) end

---绑定技能显示Enable状态的控件
---生效范围C
---@param EnableCanvasPanel UPanelWidget @技能Enable状态的Panel控件，控制Enable状态的显隐
function UPESkillWidget:InitEnableState(EnableCanvasPanel) end

---@param EnableCanvasPanel UPanelWidget
function UPESkillWidget:InitEnableStateInternal(EnableCanvasPanel) end

---绑定技能摇杆输入控件
---生效范围C
---@param VirtualJoystickPanel UPanelWidget
---@param VirtualJoystick UPESkillVirtualJoystick @技能技能摇杆控件，控制摇杆的生效和失效
function UPESkillWidget:InitVirtualJoystick(VirtualJoystickPanel, VirtualJoystick) end

---@param VirtualJoystickPanel UPanelWidget
---@param VirtualJoystick UPESkillVirtualJoystick
function UPESkillWidget:InitVirtualJoystickInternal(VirtualJoystickPanel, VirtualJoystick) end

---@param bIsCD boolean
function UPESkillWidget:OnCDStateChange(bIsCD) end

function UPESkillWidget:OnSkillUIInfoChange() end

---@param bIsEnable boolean
function UPESkillWidget:OnEnableChange(bIsEnable) end

---@param BC ASTExtraBaseCharacter
---@param PC AController
function UPESkillWidget:OnPawnChange(BC, PC) end

function UPESkillWidget:OnReconnect() end

---@param SkillSlot FGameplayTag
---@param NewPE UPersistEffectBase
---@param OldPE UPersistEffectBase
function UPESkillWidget:OnSlotSkillChange(SkillSlot, NewPE, OldPE) end

---@param Comp UPersistBaseComponent
---@param DisableTag FGameplayTag
---@param bNewDisabled boolean
function UPESkillWidget:OnDynamicStateDisabledChange(Comp, DisableTag, bNewDisabled) end
