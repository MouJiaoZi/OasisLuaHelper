---@meta

---相机管理器系统接口库
---@class UGCCameraManagerSystem
UGCCameraManagerSystem = {}

---获得第一人称视角下在载具内的 Pitch 视角限制（最小值）
---生效范围：客户端
---@return number @Pitch 视角限制（最小值）
function UGCCameraManagerSystem.GetInVehicleFPPViewPitchLimitMin() end

---设置第一人称视角下在载具内的 Pitch 视角限制（最小值）
---生效范围：客户端
---@param PitchLimit number @Pitch 视角限制（最小值）
function UGCCameraManagerSystem.SetInVehicleFPPViewPitchLimitMin(PitchLimit) end

---获得第一人称视角下在载具内的 Yaw 视角限制
---生效范围：客户端
---@return number @Yaw 视角限制
function UGCCameraManagerSystem.GetInVehicleFPPViewYawLimit() end

---设置第一人称视角下在载具内的 Yaw 视角限制
---生效范围：客户端
---@param YawLimit number @Yaw 视角限制
function UGCCameraManagerSystem.SetInVehicleFPPViewYawLimit(YawLimit) end

---获得在载具内的狭窄座位手雷投掷 Yaw 视角限制
---生效范围：客户端
---@return number @Yaw 视角限制
function UGCCameraManagerSystem.GetInVehicleNarrowSeatGrenadesYawLimit() end

---设置在载具内的狭窄座位手雷投掷 Yaw 视角限制
---生效范围：客户端
---@param YawLimit number @Yaw 视角限制
function UGCCameraManagerSystem.SetInVehicleNarrowSeatGrenadesYawLimit(YawLimit) end