---@meta

---未射击，基类
---@class UModelStator_NoShoot: UModelStatorBase
---@field DecideNoShootTime number @判定不射击的时间
---@field bReportTlog boolean @是否在触发时执行Tlog上报
local UModelStator_NoShoot = {}


---未射击，团竟AI
---@class UModelStator_TdmNoShoot: UModelStator_NoShoot
local UModelStator_TdmNoShoot = {}
