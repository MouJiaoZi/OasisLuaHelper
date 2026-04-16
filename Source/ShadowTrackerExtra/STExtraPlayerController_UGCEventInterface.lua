---@meta

---@class ISTExtraPlayerController_UGCEventInterface
ISTExtraPlayerController_UGCEventInterface = {}

---Event
---初始化完毕
---生效范围S
function ISTExtraPlayerController_UGCEventInterface:UGC_InitializationCompleteEvent() end

---Event
---获取道具事件，可控制当前道具是否允许获取
---生效范围S
---@param ItemID number @物品ID
---@param Count number @拾取数量 (-1表示此时数量未知)
---@return boolean @是否允许拾取
function ISTExtraPlayerController_UGCEventInterface:UGC_PickupItemEvent(ItemID, Count) end

---Event
---切换武器控制事件，可控制当前武器是否允许切换，返回false则无法切换
---生效范围C
---@param SwitchSlot ESurviveWeaponPropSlot @武器槽位
---@return boolean @是否允许切换
function ISTExtraPlayerController_UGCEventInterface:UGC_SwitchWeaponControlEvent(SwitchSlot) end

---Event
---开火控制事件，可控制是否允许开火，返回false则无法开火
---生效范围C
---@return boolean @是否允许开火
function ISTExtraPlayerController_UGCEventInterface:UGC_StartFireControlEvent() end

---Event
---换弹控制事件，可控制是否允许换弹，返回false则无法换弹
---生效范围C
---@return boolean @是否允许开火
function ISTExtraPlayerController_UGCEventInterface:UGC_ReloadControlEvent() end

---Event
---开镜控制事件，可控制是否允许开镜，返回false则无法开镜
---生效范围C
---@return boolean @是否允许开镜
function ISTExtraPlayerController_UGCEventInterface:UGC_OpenScopeControlEvent() end

---Event
---投掷控制事件，可控制是否允许投掷，返回false则无法投掷
---生效范围C
---@return boolean @是否允许投掷
function ISTExtraPlayerController_UGCEventInterface:UGC_ThrowGrenadeEvent() end
