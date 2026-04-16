---@meta

---@class ECharacterFollowProgress
---@field ECharacterFollowProgress_None number
---@field ECharacterFollowProgress_PreTurn number
---@field ECharacterFollowProgress_Following number
ECharacterFollowProgress = {}


---@class FSelfFollowLimitAreaItem
---@field TopLeftVec FVector
---@field BottomRightVec FVector
FSelfFollowLimitAreaItem = {}


---@class FFollowTargetTransferAreaItem
---@field TopLeftVec FVector
---@field BottomRightVec FVector
---@field TransferVec FVector
FFollowTargetTransferAreaItem = {}


---人物跟随组件 1.跟随目标为Actor； 2.功能：主控端人物开始跟随后会记录目标此刻位置，并模拟输入直线移动到该位置附近； 3.先转向目标，再移动跟随； 4.移动中途若遇到阻挡则停止跟随； 5.暂不支持目标动态跟随；
---@class USTNewCharacterFollowComp: UActorComponent, IObjectPoolInterface
---@field FollowStopDist number @跟随停止距离（厘米）
---@field TurnaroundSpeedScale number @平滑转向速度
---@field TurnaroundAngleThreshold number @平滑转向角度阈值（度）
---@field bStartTurnInstantly boolean @跟随移动前转向是否瞬时（否则为平滑转向）
---@field bNeedCorrectDirWhenFollowing boolean @是否需要在跟随过程中修正朝向
---@field FollowTargetTransferAreaList ULuaArrayHelper<FFollowTargetTransferAreaItem> @跟随目标传送区域列表 (目标在此区域内会走到传送点)
---@field SelfFollowLimitAreaList ULuaArrayHelper<FSelfFollowLimitAreaItem> @跟随限制区域列表 (自己在此区域内不会跟随)
---@field OwnerCharacter ASTExtraBaseCharacter
---@field OwnerController ASTExtraPlayerController
local USTNewCharacterFollowComp = {}

---开始跟随，主控端调用，RPC同步到DS执行
---@param PlayerKey number
function USTNewCharacterFollowComp:RPC_Server_StartFollowWithPlayerKey(PlayerKey) end

---开始跟随，DS调用，RPC同步到主控端执行
---@param followPos FVector
function USTNewCharacterFollowComp:RPC_Client_PreFollow(followPos) end

---移动过程中遇到碰撞回调
---@param BlockedCharacter ASTExtraCharacter
---@param HitResult FHitResult
function USTNewCharacterFollowComp:OnCharacterMoveBlock(BlockedCharacter, HitResult) end
