---@meta

---信号圈系统接口库
---@class UGCCircleManagerSystem
UGCCircleManagerSystem = {}

---获取当前蓝圈中心
---生效范围：服务器&客户端
---@return Vector2D @蓝圈中心 {X，Y}
function UGCCircleManagerSystem.GetBlueCircleCenter() end

---获取当前白圈中心
---生效范围：服务器&客户端
---@return Vector2D @白圈中心 {X，Y}
function UGCCircleManagerSystem.GetWhiteCircleCenter() end

---获取当前蓝圈半径
---生效范围：服务器&客户端
---@return number @半径
function UGCCircleManagerSystem.GetBlueCircleRadius() end

---获取当前白圈半径
---生效范围：服务器&客户端
---@return number @半径
function UGCCircleManagerSystem.GetWhiteCircleRadius() end

---获得当前运行到的信号圈序号
---生效范围：服务器
---@return number @信号圈序号 缩圈结束时，返回最后一个信号圈序号
function UGCCircleManagerSystem.GetCurrentCircleIndex() end

---获得所有信号圈配置
---生效范围：服务器
---@return FCirCleCfg[] @所有信号圈配置
function UGCCircleManagerSystem.GetAllCircleConfig() end

---获取当前信号圈配置
---生效范围：服务器
---@return FCirCleCfg @当前信号圈配置
function UGCCircleManagerSystem.GetCurrentConfigCircle() end

---获取下一信号圈配置
---生效范围：服务器
---@return FCirCleCfg @下一信号圈配置
function UGCCircleManagerSystem.GetNextConfigCircle() end

---开启或者关闭信号圈（关闭状态则开启，开启状态则关闭）
---生效范围：服务器
---@return boolean @调用后状态为开启或者关闭
function UGCCircleManagerSystem.TogglePoisonCircle() end

---启用信号圈
---生效范围：服务器
function UGCCircleManagerSystem.StartCircle() end

---关闭信号圈
---生效范围：服务器
function UGCCircleManagerSystem.StopCircle() end

---暂停信号圈
---生效范围：服务器
function UGCCircleManagerSystem.PauseCircle() end

---恢复暂停信号圈
---生效范围：服务器
function UGCCircleManagerSystem.ResumeCircle() end