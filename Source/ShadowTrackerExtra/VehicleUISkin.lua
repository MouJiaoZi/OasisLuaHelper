---@meta

---至于为什么会用FVehicleUIBtnConfig， FVehicleUIImageConfig,而不是直接用FButtonStyle/FSlateBrush 这两个东西来存储配置 是因为操作模式分左右手两种操作模式 而且按钮资源有不少都是复用的 为了减少配置量 提高复用 就采用以上两种结构体来保存数据
---@class UVehicleUISkin: UDataAsset
---@field VehicleAvatarID number
---@field ButtonMode_AllButtonConfigList ULuaArrayHelper<FVehicleUIBtnConfig>
---@field JoyStickMode_AllButtonConfigList ULuaArrayHelper<FVehicleUIBtnConfig>
---@field SteerWheelMode_AllButtonConfigList ULuaArrayHelper<FVehicleUIBtnConfig>
---@field SteerWheelMode_AllImageConfigList ULuaArrayHelper<FVehicleUIImageConfig>
---@field CommonButtonConfigList ULuaArrayHelper<FVehicleUIBtnConfig>
---@field CommonImageConfigList ULuaArrayHelper<FVehicleUIImageConfig>
local UVehicleUISkin = {}
