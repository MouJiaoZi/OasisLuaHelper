---@meta

---@class EOBUIUsingForType
---@field Null number
---@field MatchObserve number
---@field ObserveReplay number
EOBUIUsingForType = {}


---@class EObserveFlowState
---@field Default number
---@field ExitWithoutEnter number
---@field ExitInObserving number
---@field ImmediateEnterResult number
---@field Continue_SingleResult number
---@field Continue_MVP number
---@field ReserveOperation1 number
---@field ReserveOperation2 number
---@field ReserveOperation3 number
---@field ReserveOperation4 number
EObserveFlowState = {}


---@class FPlayerStaticInfoInOB
---@field PlayerName string
---@field PlayerOpenID string
---@field PicUrl string
---@field TeamID number
---@field IdxInTeam number
---@field PlayerKey number
---@field PlayerUID string
---@field JumpSegmentID number
FPlayerStaticInfoInOB = {}


---@class FPlayerBaseInfoInOB
---@field PosX number
---@field PosY number
---@field PosZ number
---@field Health number
---@field HealthMax number
---@field LiveState number
---@field KillNum number
---@field Yaw number
---@field SignalHP number
---@field PlayerKey number
---@field KillByCauserKey number
---@field GruopID number
---@field bSnapsPos boolean
---@field CommonState number
---@field BeRevivedNum number
---@field DamageAmount number
---@field Assists number
FPlayerBaseInfoInOB = {}


---@class FPlayerInfoInOB
---@field PlayerName string
---@field PlayerRemarkName string
---@field PlayerOpenID string
---@field PlayerUID string
---@field PicUrl string
---@field ShowPicUrl boolean
---@field TeamID number
---@field Character APawn
---@field PlayerState AUAEPlayerState
---@field IsFiring boolean
---@field ShootPos FVector
---@field BeHit boolean
---@field bMale boolean
---@field bHasDied boolean
---@field StrPlayerKey string
---@field PosList ULuaArrayHelper<FVector>
---@field IdxInTeam number
---@field HaveEmergencyCaller boolean
---@field IsEvacuated boolean
---@field OnLineState boolean
---@field KillByObGMDamage boolean
FPlayerInfoInOB = {}


---@class FTeamInfoInOB
---@field TeamID number
---@field IsShowLogo boolean
---@field LogoPicUrl string
---@field KillNum number
---@field LiveMemberNum number
---@field LogoWorldPostion FVector
FTeamInfoInOB = {}


---@class FAirDropBoxInOb
---@field BoxID number
---@field Flying boolean
---@field IsEmpty boolean
---@field Pos FVector
FAirDropBoxInOb = {}


---@class FFriendObserver
---@field PlayerName string
---@field Gender number
---@field Type number
FFriendObserver = {}


---@class FOBSimpleItemInfo
---@field ItemID FItemDefineID
---@field Count number
---@field ItemData number
---@field bEquipping boolean
---@field Associations ULuaArrayHelper<FItemDefineID>
FOBSimpleItemInfo = {}
