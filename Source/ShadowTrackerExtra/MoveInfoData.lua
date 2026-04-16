---@meta

---@class FServerMoveExtraParams_CriticalVerify
---@field ClientFrame number
---@field CameraYawPitch number
---@field LastFrameControlYawPitch number
---@field OldLocation FVector_NetQuantize100
---@field ShootFrameCacheRotationInputPitch FVector
---@field bIsHandFold boolean
---@field bGunADS boolean
---@field bEnableCriticalVerify boolean
---@field bEnableSerializeOldLoc boolean
---@field bEnableSerializeRotationInput boolean
FServerMoveExtraParams_CriticalVerify = {}


---@class FUserFloorInfoParams
---@field bValidData boolean
---@field ImpactPoint FVector_NetQuantize100
---@field ImpactNormal FVector
FUserFloorInfoParams = {}


---@class FOldServerMoveParams
---@field OldTimeStamp number
---@field OldAccel FVector_NetQuantize10
---@field OldMoveFlags number
---@field CallServerMoveID number
---@field ClientRoll number
---@field ClientYawPitch number
FOldServerMoveParams = {}


---@class FServerMoveExtraParams
---@field ClientWorldTime number
---@field MaxMoveSpeed number
---@field ClientVelocity FVector_NetQuantize10
---@field CustomFlag number
---@field ClientSysRelativeTime number
---@field CriticalVerifyParams FServerMoveExtraParams_CriticalVerify
---@field ServerMoveID number
---@field JumpCount number
---@field CustmoMovementParam ULuaArrayHelper<number>
---@field ClientPredictionLocation FVector_NetQuantize10
---@field UserFloorInfoParams FUserFloorInfoParams
---@field OldServerMoves ULuaArrayHelper<FOldServerMoveParams>
FServerMoveExtraParams = {}


---@class FServerMoveDualExtraParams
---@field ClientWorldTime number
---@field MaxMoveSpeed number
---@field PendingClientVelocity FVector_NetQuantize10
---@field ClientVelocity FVector_NetQuantize10
---@field CustomFlag number
---@field PendingCustomFlag number
---@field ClientSysRelativeTime number
---@field PendingClientSysRelativeTime number
---@field JumpCount number
---@field PendingJumpCount number
---@field CustmoMovementParam ULuaArrayHelper<number>
---@field PendingCustmoMovementParam ULuaArrayHelper<number>
---@field CriticalVerifyParams_PendingMove FServerMoveExtraParams_CriticalVerify
---@field CriticalVerifyParams_NewMove FServerMoveExtraParams_CriticalVerify
---@field ServerMoveID number
---@field ClientPredictionLocation FVector_NetQuantize10
---@field UserFloorInfoParams_PendingMove FUserFloorInfoParams
---@field UserFloorInfoParams_NewMove FUserFloorInfoParams
---@field OldServerMoves ULuaArrayHelper<FOldServerMoveParams>
FServerMoveDualExtraParams = {}


---@class FWeakNetworkClientMoveData
---@field TimeStampDis number
---@field TimeStamp number
---@field InAccel FVector_NetQuantize10
---@field ClientLoc FVector_NetQuantize100
---@field CompressedMoveFlags number
---@field ClientRoll number
---@field View number
---@field ClientBaseBoneName string
---@field ClientMovementMode number
---@field ExtraParams FServerMoveExtraParams
---@field bIsOldServerMove number
---@field ReceiveTime number
---@field FrameCounter number
FWeakNetworkClientMoveData = {}


---反外挂数据
---@class FAntiCheatMoveData
---@field ClientSysRelativeTime number
---@field ClientVelocity FVector
---@field MaxMoveSpeed number
---@field ServerMoveID number
---@field ClientTimeStamp number
---@field ClientLoc FVector
---@field DsDeltaTimeStart number
FAntiCheatMoveData = {}


---@class FMovePhysicsInfoData
---@field bEnablePhysicsInteraction number @如果启用了，那么角色跟该物理物体发生互动的时候，使用本结构体的参数
---@field InitialPushForceFactor number @Initial impulse force to apply when the player bounces into a blocking physics object.
---@field PushForceFactor number @Force to apply when the player collides with a blocking physics object.
FMovePhysicsInfoData = {}
