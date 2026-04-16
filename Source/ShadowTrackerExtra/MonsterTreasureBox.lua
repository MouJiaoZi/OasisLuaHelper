---@meta

---@class EMonsterTreasureBoxState
---@field None number
---@field Spawned number
---@field Standby number
---@field Started number
---@field Broken number
---@field CountdownFinished number
---@field AnimationFinished number
---@field Stopped number
---@field GoDown number
EMonsterTreasureBoxState = {}


---@class AMonsterTreasureBox: AUAEHouseActor, IItemGenerateInterface, IDamageableInterface, IManagedActorInterface
---@field DamageableGameObjectTypeList ULuaArrayHelper<EDamageableGameObjectType>
---@field TotalHP number @总血量
---@field BrokenHPPropotion number @破损血量百分比
---@field TotalTime number @倒计时时间
---@field BoxId number @生成盒子
---@field GroupLoc FVector @GroupLoc
---@field DestroyTime number
---@field OperationalDistance number
---@field VisibleHUDlDistance number
---@field StandbyEffectTrans FTransform
---@field OpenningEffectTrans FTransform
---@field OpennedEffectTrans FTransform
---@field BrokenEffect1Trans FTransform
---@field BrokenEffect2Trans FTransform
---@field InstigatorList ULuaArrayHelper<AController>
---@field DamageCauserList ULuaArrayHelper<AActor>
---@field PickUpBoxType EPickUpBoxType
---@field bIconInstanceID boolean @是否需要小地图显示图标
---@field IconID number @图标IconID, 表格配置
---@field IconCustomStr string @图标自定义标签，用来显示某些效果
---@field bHideLightColumn boolean @是否在客户端隐藏光柱隐藏光柱
---@field bAutoActiveBox boolean @是否自动激活宝箱, feishen, 20190624
---@field ClientAutoActiveBoxCD number @客户端显示激活宝箱倒计时
---@field AutoActiveBoxCD number @激活宝箱倒计时
---@field HideLightColumn number @客户端隐藏光柱隐藏光柱
---@field GoUpAnimationWait number @宝箱井盖打开后多久开始启动盒子动画
---@field GoUpAnimationSpeed number @服务器模拟盒子从地底下上升速度
---@field GoUpAnimationHight number @服务器模拟盒子从地底下上升高度
---@field GoUpAnimationYawSpeed number @服务器模拟盒子从地底下旋转速度
---@field GoUpAnimationYawTotal number @服务器模拟盒子从地底下旋转总角度
---@field BoxCoverLoc FVector @调整模拟盒子盖位置
---@field BoxCoverRot FRotator @调整模拟盒子盖朝向
---@field ItemBoxZ number @调整物品盒子高度
---@field NeedGoDownBeforeDestroied boolean
---@field NeedGoDownBeforeDestroiedDelay number
---@field GoDownStartTime number
---@field GoUpAnimationAkAudioStart boolean
---@field BoxTransform FTransform
---@field CurHP number
---@field StartedTime number
---@field CurState EMonsterTreasureBoxState
---@field StartedTeamId number
---@field CountdownTime number
---@field StartDestroytime number
---@field MonsterBoxId number
---@field MonsterBoxTempleteId number
---@field DataStrs ULuaMapHelper<string, string>
---@field bIsEmpty boolean
---@field TickFrequenceTime number
local AMonsterTreasureBox = {}

---显示
function AMonsterTreasureBox:ShowMonsterTreasureBox() end

---隐藏
function AMonsterTreasureBox:DeActiveMonsterTreasureBox() end

---@param IsShow boolean
function AMonsterTreasureBox:ShowMonsterTreasureBoxSkelemesh(IsShow) end

---@param CD number
function AMonsterTreasureBox:SetClientClientAutoActiveBoxCD(CD) end

---@return number
function AMonsterTreasureBox:GetClientClientAutoActiveBoxCD() end

function AMonsterTreasureBox:SpawnBrokenParticle() end

---@return EMonsterTreasureBoxState
function AMonsterTreasureBox:GetCurState() end

---@return boolean
function AMonsterTreasureBox:IsGoingToBeBroken() end

function AMonsterTreasureBox:OnRep_CurHP() end

function AMonsterTreasureBox:OnRep_CurState() end

function AMonsterTreasureBox:OnRep_HideLightColumn() end

function AMonsterTreasureBox:OnRep_BoxTransform() end

function AMonsterTreasureBox:OnRep_HasItems() end

---@return boolean
function AMonsterTreasureBox:IsShowIcon() end

---@return number
function AMonsterTreasureBox:GetMonsterBoxId() end

function AMonsterTreasureBox:OnBoxEmpty() end

---@param InPC number
function AMonsterTreasureBox:OnSomeonePickItem(InPC) end

---@return boolean
function AMonsterTreasureBox:CanBeDamaged() end

function AMonsterTreasureBox:BPOnStartMonsterTreasureBox() end

function AMonsterTreasureBox:BPOnCountdownEnd() end

function AMonsterTreasureBox:BPOnAnimationStop() end

function AMonsterTreasureBox:BPOnAnimationAkAudioStart() end

function AMonsterTreasureBox:BPOnAnimationAkAudioStop() end

function AMonsterTreasureBox:BPOnBreakMonsterTreasureBox() end

function AMonsterTreasureBox:BPOnStopMonsterTreasureBox() end

function AMonsterTreasureBox:BPOnHideLightColumn() end
