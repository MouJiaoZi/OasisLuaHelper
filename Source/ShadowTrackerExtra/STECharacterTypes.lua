---@meta

---角色姿势状态
---@class ESTEPoseState
---@field Stand number
---@field Crouch number @//*UGC* 站立
---@field Prone number @//*UGC* 蹲伏
---@field Sprint number @//*UGC* 匍匐
---@field CrouchSprint number @//*UGC* 冲刺
---@field Crawl number @//*UGC* 蹲伏冲刺
---@field Swim number @//*UGC* 爬行
---@field SwimSprint number @//*UGC* 游泳
---@field Dying number @//*UGC* 游泳冲刺
---@field _Max number @//*UGC* 正在淘汰
---@field None number
ESTEPoseState = {}


---@class EOverlookState
---@field OverlookEnter number
---@field OverlookQuit number
---@field OverlookCancel number
---@field OverlookTransfer number
---@field OverlookWaiting number
---@field OverlookMarkHide number
---@field OverlookMarkPlaceable number
---@field OverlookMarkUnplaceable number
EOverlookState = {}


---@class ESTEScopeState
---@field ScopeOut number
---@field ScopeIn number
ESTEScopeState = {}


---@class ESTEScopeType
---@field Normal number
---@field ProneMove number
---@field InFold number
---@field AutoCollapsed number
---@field BoltAction number
ESTEScopeType = {}


---@class ESTECharacterType
---@field Player number @玩家
---@field Zombie number @僵尸
---@field Quadruped number @四足动物
---@field PVEMonster number @PVE怪物
---@field Animal number @动物
ESTECharacterType = {}


---@class ESightScopeSensibilityChangeType
---@field None number @未激活
---@field ClickSightScope number @点击开关镜切换
---@field SightScopeMotionEnd number @开关镜完成切换
---@field WithSightScopeAlpha number @随着开镜进度
ESightScopeSensibilityChangeType = {}
