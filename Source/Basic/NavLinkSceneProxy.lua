---@meta

---基于 UNavLinkSceneComponent 的 NavLink Actor。 以 UNavLinkSceneComponent 作为 RootComponent，提供完整的 NavLink 功能。 子类可通过 ObjectInitializer.SetDefaultSubobjectClass 替换为 UNavLinkSceneComponent 的子类： AMyNavLinkActor::AMyNavLinkActor(const FObjectInitializer& OI) : Super(OI.SetDefaultSubobjectClass<UMyNavLinkSceneComponent>(NavLinkSceneComponentName)) {}
---@class ANavLinkSceneProxy: AActor
local ANavLinkSceneProxy = {}
