---@meta

---@class ISTExtraBaseCharacter_UGCEventInterface
ISTExtraBaseCharacter_UGCEventInterface = {}

---Event
---发射子弹事件
---生效范围：C
---@param ShootWeapon ASTExtraShootWeapon @射击武器
---@param Bullet ASTExtraShootWeaponBulletBase @子弹
function ISTExtraBaseCharacter_UGCEventInterface:UGC_WeaponShootBulletEvent(ShootWeapon, Bullet) end

---Event
---子弹命中事件
---生效范围：SC
---@param ShootWeapon ASTExtraShootWeapon @射击武器
---@param Bullet ASTExtraShootWeaponBulletBase @子弹
---@param HitInfo FHitResult @命中信息
function ISTExtraBaseCharacter_UGCEventInterface:UGC_WeaponBulletHitEvent(ShootWeapon, Bullet, HitInfo) end

---Event
---当前武器变化事件
---生效范围：SC
---@param UsingWeaponSlot ESurviveWeaponPropSlot @当前武器插槽
---@param LastSlot ESurviveWeaponPropSlot @上次武器插槽
function ISTExtraBaseCharacter_UGCEventInterface:UGC_ChangeCurrentUsingWeaponEvent(UsingWeaponSlot, LastSlot) end

---Event
---装备武器事件，仅装备在身上，非当前手持武器
---生效范围：SC
---@param Slot ESurviveWeaponPropSlot
function ISTExtraBaseCharacter_UGCEventInterface:UGC_EquipWeaponEvent(Slot) end

---Event
---开火调用事件，仅在按下开火时调用一次
---生效范围：SC
---@param isAuto ESTEWeaponShootType @是否自动开火
function ISTExtraBaseCharacter_UGCEventInterface:UGC_WeaponStartFireEvent(isAuto) end

---Event
---停火调用事件
---生效范围：SC
function ISTExtraBaseCharacter_UGCEventInterface:UGC_WeaponStopFireEvent() end

---Event
---切换武器事件
---生效范围：C
function ISTExtraBaseCharacter_UGCEventInterface:UGC_WeaponSwitchEvent() end

---Event
---开始换弹事件
---生效范围：SC
function ISTExtraBaseCharacter_UGCEventInterface:UGC_ReloadStartEvent() end

---Event
---换弹结束事件
---生效范围：SC
function ISTExtraBaseCharacter_UGCEventInterface:UGC_ReloadEndEvent() end

---Event
---开镜事件
---生效范围：C
function ISTExtraBaseCharacter_UGCEventInterface:UGC_OpenScopeEvent() end

---Event
---开镜结束事件
---生效范围：C
function ISTExtraBaseCharacter_UGCEventInterface:UGC_CloseScopeEvent() end

---Event
---进入某个PawnState事件
---生效范围：SC
---@param PawnState EPawnState @进入的PawnState
function ISTExtraBaseCharacter_UGCEventInterface:UGC_EnterPawnStateEvent(PawnState) end

---Event
---离开某个PawnState事件
---生效范围：SC
---@param PawnState EPawnState @离开的PawnState
function ISTExtraBaseCharacter_UGCEventInterface:UGC_LeavePawnStateEvent(PawnState) end

---Event
---玩家拾取事件
---生效范围：SC
function ISTExtraBaseCharacter_UGCEventInterface:UGC_PlayerPickUpEvent() end

---Event
---玩家死亡事件
---生效范围：SC
---@param Killer AController @把该角色淘汰的玩家
---@param DamageType EDamageType @伤害类型
function ISTExtraBaseCharacter_UGCEventInterface:UGC_PlayerDeadEvent(Killer, DamageType) end

---Event
---重载伤害事件，返回值为修改后的伤害
---生效范围：S
---@param Damage number @原始伤害值
---@param DamageType EDamageType @伤害类型
---@param EventInstigator AController @造成伤害的玩家
---@param DamageCauser AActor @造成伤害的对象 Actor，依据触发伤害的场景而不同，如果是枪械造成伤害，则为子弹 Actor；如果是平底锅近战造成伤害为玩家 Pawn，而投掷命中造成伤害则是平底锅 Actor
---@param Hit FHitResult @伤害命中信息
---@return number @修改后伤害值
function ISTExtraBaseCharacter_UGCEventInterface:UGC_TakeDamageOverrideEvent(Damage, DamageType, EventInstigator, DamageCauser, Hit) end
