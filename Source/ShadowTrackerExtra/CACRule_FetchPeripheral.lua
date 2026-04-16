---@meta

---@class FUCACRule_UploadFetchPeripheralRecordData
---@field CacheDeviceID number
---@field CacheDeviceName string
---@field CacheDeviceProductID string
FUCACRule_UploadFetchPeripheralRecordData = {}


---@class FUCACRule_UploadFireReachBottomRecordData
---@field ReachSreenYMaxCounter number
---@field FingerMoveSudJumpCounter number
FUCACRule_UploadFireReachBottomRecordData = {}


---@class FCACRule_FetchPeripheralTouchData
---@field FingerLocY number
---@field TouchRealTime number
FCACRule_FetchPeripheralTouchData = {}


---@class FCACRuleSpecificFingerTypeData
---@field CurFrameNumber number
---@field CurFingerIndex number
---@field bIsCombinedStr boolean
FCACRuleSpecificFingerTypeData = {}


---@class FUCACRule_UploadMultBtnsRecordData
---@field UpLoadMultBtnsType ULuaArrayHelper<string>
---@field TempAddCounters ULuaArrayHelper<number>
FUCACRule_UploadMultBtnsRecordData = {}


---检测是否使用了不合理的外设，如宏，鼠标键盘（目前只支持安卓）
---@class UCACRule_FetchPeripheral: UCheckAimCheatRule
---@field UploadCheckUseInputDeviceDataTime number
---@field UploadFireDataDataTime number
---@field SudJumpMaxTime number
---@field SudJumpMaxDistance number
---@field ScreenYMaxDeviation number
---@field VirtualDeviceDefaultName string
---@field DeviceDefaultProductID string
---@field SameFrameThreshold number @一键宏配置项***
---@field UploadMultBtnsDataDataTime number
---@field MultBtnCombineType ULuaArrayHelper<string>
local UCACRule_FetchPeripheral = {}

function UCACRule_FetchPeripheral:OnStartFire() end

function UCACRule_FetchPeripheral:OnStopFire() end

---@param newPawn APawn
function UCACRule_FetchPeripheral:OnRepPawn(newPawn) end

---@param FingerIndex ETouchIndex
---@param Location FVector
---@param force number
function UCACRule_FetchPeripheral:InputTouchBegin(FingerIndex, Location, force) end

---@param FingerIndex ETouchIndex
---@param Location FVector
---@param force number
function UCACRule_FetchPeripheral:InputTouchEnd(FingerIndex, Location, force) end

---@param FingerIndex ETouchIndex
---@param Location FVector
---@param force number
function UCACRule_FetchPeripheral:InputTouchRepeat(FingerIndex, Location, force) end

---@param bIsEquip boolean
---@param WeaponOwner AActor
---@param Weapon ASTExtraWeapon
function UCACRule_FetchPeripheral:OnWeaponChange(bIsEquip, WeaponOwner, Weapon) end

---@param Bullet ASTExtraShootWeaponBulletBase
function UCACRule_FetchPeripheral:OnBulletLaunch(Bullet) end

---@param UploadData FUCACRule_UploadFetchPeripheralRecordData
function UCACRule_FetchPeripheral:UploadFetchVirtualDeviceRecord(UploadData) end

---@param UploadData FUCACRule_UploadFireReachBottomRecordData
function UCACRule_FetchPeripheral:UploadFireReachButtomRecord(UploadData) end

---@param UploadData FUCACRule_UploadMultBtnsRecordData
function UCACRule_FetchPeripheral:UpLoadMultBtnsData(UploadData) end
