---@meta

---TimeLineSync：对时状态
---@class ETimeLineCheckResult
---@field TLCR_NoCheck number @没有进行检查
---@field TLCR_OK number @正确返回
---@field TLCR_ERR_UP number @超过了上界
---@field TLCR_ERR_DN number @超过了下界
ETimeLineCheckResult = {}


---@class FTwgClientInfo
FTwgClientInfo = {}


---下发强制同步用信息
---@class FForceAdjustInf
---@field NewLocation FVector
---@field NewVelocity FVector
---@field NewBaseBoneName string
---@field bHasBase boolean
---@field bBaseRelativePosition boolean
---@field ServerMovementMode number
FForceAdjustInf = {}
