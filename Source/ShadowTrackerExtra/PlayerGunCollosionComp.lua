---@meta

---@class UPlayerGunCollosionComp: UActorComponent, IObjectPoolInterface
---@field TraceRotPitchLimitConfigMap ULuaMapHelper<EPawnState, FVector2D>
---@field DetectInterval number
---@field DetectThreshold number
---@field FoldFactor number
---@field BlockChannel ECollisionChannel
---@field BoxHalfSize FVector
---@field QEoffsetPeekLeftOnVehicle FVector
---@field QEoffsetPeekRightOnVehicle FVector
---@field QEoffsetPeekLeft FVector
---@field QEoffsetPeekRight FVector
---@field StaticTraceLengthOffset number
---@field QEoffsetPeekStandAdd FVector
---@field QEoffsetPeekCrouchAdd FVector
---@field QEoffsetPeekProneAdd FVector
---@field FoldFactorDelt number
---@field FoldFactorDeltChange number
---@field TraceDisOffset number
---@field TraceDisForSfate number
---@field TickDeltTime number
---@field bEnableVehicleOnHandFolder boolean
---@field VehicleHandFolderArea_MIN number
---@field VehicleHandFolderArea_MAX number
---@field TickDeltTimeAutoPeek number
---@field TickExecAutoPeekCD number
---@field QEoffsetPeekStandAddSAP FVector
---@field QEoffsetPeekStandLeftAddSAP FVector
---@field QEoffsetPeekStandRightAddSAP FVector
---@field QEoffsetPeekCrouchAddSAP FVector
---@field QEoffsetPeekCrouchLeftAddSAP FVector
---@field QEoffsetPeekCrouchRightAddSAP FVector
---@field BoxHalfSizeForwardSAP FVector
---@field BoxHalfSizeLeftSAP FVector
---@field BoxHalfSizeRightSAP FVector
---@field BoxAdditiveLengthSAP number
---@field bHasAdditiveSweepSAP boolean
---@field AdditiveLengthSweepSAP number
---@field bEnableAdaptCrossHair boolean
---@field bMutexAutoScopeWhenPeek boolean
---@field TempStopSAPTime number
---@field TempStopSAP boolean
---@field bEnableRestoreNoPeek boolean
---@field bNeedRestorePeek boolean
local UPlayerGunCollosionComp = {}

function UPlayerGunCollosionComp:OnReconnectOnClient() end

---@param InFoldFactor number
---@param FoldPoint FVector
---@param FoldNormal FVector
function UPlayerGunCollosionComp:CheckCollision(InFoldFactor, FoldPoint, FoldNormal) end

function UPlayerGunCollosionComp:CheckVehicleFolderCollision() end

---@param Visbile boolean
---@param EffectLoc FVector
function UPlayerGunCollosionComp:SetEffect(Visbile, EffectLoc) end

function UPlayerGunCollosionComp:CheckDriverUseWeaponViewLimit() end

---@return boolean
function UPlayerGunCollosionComp:IsCanCheckScopeAutoPeek() end

---@return boolean
function UPlayerGunCollosionComp:ShouldAutoPeekWhenScope() end

function UPlayerGunCollosionComp:TempStopScopeAutoPeek() end

function UPlayerGunCollosionComp:RestoreScopeAutoPeek() end

---@param bIsShow boolean
---@param bIsLeft boolean
function UPlayerGunCollosionComp:ShowScopeAutoPeekTips(bIsShow, bIsLeft) end

---@param bIsLeft boolean
---@param AdaptOffset number
function UPlayerGunCollosionComp:AdaptScopeAutoPeekTips(bIsLeft, AdaptOffset) end

---@param bIsLeft boolean
function UPlayerGunCollosionComp:AdaptTipsUIToCrossHair(bIsLeft) end

---@param Deviation number
---@param SpreadScale number
---@param Offset number
---@param UIScale number
---@param bIsLeft boolean
---@return number
function UPlayerGunCollosionComp:CalCrossHairOffset(Deviation, SpreadScale, Offset, UIScale, bIsLeft) end
