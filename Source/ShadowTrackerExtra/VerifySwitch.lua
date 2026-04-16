---@meta

---统一的反外挂处罚开关和计数Struct 在Config中使用时：VsBoneInfo=(PunishThresHold=999,bShouldPunish=False) 当前的MoveAntiCheat类为：[/Script/ShadowTrackerExtra.MoveAntiCheatComponent] 当前的PlayerAntiCheatManager类为：[/Script/ShadowTrackerExtra.PlayerAntiCheatManager]
---@class FVerifySwitch
---@field PunishThresHold number @当触发次数大于等于这个次数时就会触发处罚 设置为-1则不触发
---@field bShouldPunish boolean @单独的处罚开关
FVerifySwitch = {}


---@class FVerifyInfoSwitch
---@field MaxRecTime number @最大的时间记录次数
FVerifyInfoSwitch = {}


---@class FVerifyInfoSwitch_ValueInRange
---@field RangeStart number
---@field RangeEnd number
---@field RepNamePrefix string
FVerifyInfoSwitch_ValueInRange = {}
