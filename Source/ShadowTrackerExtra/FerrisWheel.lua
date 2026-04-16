---@meta

---@class UFerrisBoxRecord: UActorComponent
local UFerrisBoxRecord = {}


---<摩天轮
---@class AFerrisWheel: ASimulateSyncSmoothActor
---@field BoxExtentMin FVector
---@field BoxExtentMax FVector
---@field OutBoundBox FBox
---@field InBoundBox FBox
---@field DefaultInPosition FVector @<必定可用的内部相对位置
---@field mf_PassDoorAngel number @<角度的余弦值大于这个值才能进出
---@field RotateSpeedCpp number
local AFerrisWheel = {}

---<查询是否在车厢中
---@param InComp UStaticMeshComponent
---@param InPos FVector
---@param InShouldLog boolean
---@return boolean
function AFerrisWheel:IsInFerrisBox(InComp, InPos, InShouldLog) end

---<查询是否在车门处
---@param InComp UStaticMeshComponent
---@param InPos FVector
---@param InShouldLog boolean
---@return boolean
function AFerrisWheel:IsInFerrisDoor(InComp, InPos, InShouldLog) end

---<获得安全的车厢外位置
---@param InComp UStaticMeshComponent
---@param InPos FVector
---@param ForceForward boolean
---@return FVector
function AFerrisWheel:GetGoodOutPos(InComp, InPos, ForceForward) end

---@param InComp UStaticMeshComponent
---@param InStart FVector
---@param InEnd FVector
---@return boolean
function AFerrisWheel:PassThroughDoor(InComp, InStart, InEnd) end

---<扶正箱子
function AFerrisWheel:StandBox() end

---<注册新的箱子
---@param InSkel USkeletalMeshComponent
function AFerrisWheel:RegNewBox(InSkel) end

---<解除一个箱子
---@param InStatic UStaticMeshComponent
function AFerrisWheel:UnRegSingleBox(InStatic) end

---<位置测试
---@param InPos FVector
---@param InHitedBox UStaticMeshComponent
function AFerrisWheel:CheckPosition(InPos, InHitedBox) end

---<车厢发生碰撞
---@param HitComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param NormalImpulse FVector
---@param Hit FHitResult
function AFerrisWheel:OnBoxHitted(HitComponent, OtherActor, OtherComp, NormalImpulse, Hit) end

---<调用蓝图的扶正逻辑
---@param InComp USceneComponent
function AFerrisWheel:PullBoxStand(InComp) end

---<初始化对车厢的引用
function AFerrisWheel:Init_Refs() end

---@param bEnabled boolean
function AFerrisWheel:BroadcastEnableTick(bEnabled) end
