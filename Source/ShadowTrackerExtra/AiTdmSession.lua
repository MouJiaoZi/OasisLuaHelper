---@meta

---团竞深度学习AI管理组件 主要有几种进入模式： 1. 正常通过大厅拉起，大厅决定是否使用AI，不进行AI创建 2. StartAiService，暂时保持和上面一致，输入console后销毁角色，由系统这边接管 3. StartAiBattle，与1的功能重合，策划体验走正式的流程，不再提供 4. 训练模式，由命令行提供参数
---@class UAiTdmSessionComponent: UActorComponent
local UAiTdmSessionComponent = {}
