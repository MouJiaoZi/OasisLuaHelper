---@meta

---@class FOnShowDebugInfo : ULuaMulticastDelegate
FOnShowDebugInfo = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: AHUD, Param2: UCanvas, Param3: FDebugDisplayInfo, Param4: number, Param5: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnShowDebugInfo:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 AHUD
---@param Param2 UCanvas
---@param Param3 FDebugDisplayInfo
---@param Param4 number
---@param Param5 number
function FOnShowDebugInfo:Broadcast(Param1, Param2, Param3, Param4, Param5) end


---@class FOnHUDPostRender : ULuaMulticastDelegate
FOnHUDPostRender = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: AHUD, Param2: UCanvas) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnHUDPostRender:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 AHUD
---@param Param2 UCanvas
function FOnHUDPostRender:Broadcast(Param1, Param2) end


---Base class of the heads-up display. This has a canvas and a debug canvas on which primitives can be drawn. It also contains a list of simple hit boxes that can be used for simple item click detection. A method of rendering debug text is also included. Provides some simple methods for rendering text, textures, rectangles and materials which can also be accessed from blueprints.
---@class AHUD: AActor
---@field bLostFocusPaused number @Tells whether the game was paused due to lost focus
---@field bShowHUD number @Whether or not the HUD should be drawn.
---@field bShowDebugInfo number @If true, current ViewTarget shows debug information using its DisplayDebug().
---@field bShowHitBoxDebugInfo number @If true, show hitbox debugging info.
---@field bShowOverlays number @If true, render actor overlays.
---@field bEnableDebugTextShadow number @Put shadow on debug strings
---@field PostRenderedActors ULuaArrayHelper<AActor> @Holds a list of Actors that need PostRender() calls.
---@field DebugDisplay ULuaArrayHelper<string> @Array of names specifying what debug info to display for viewtarget actor.
---@field ToggledDebugCategories ULuaArrayHelper<string> @Array of names specifying what subsets of debug info to display for viewtarget actor.
---@field DebugTextList ULuaArrayHelper<FDebugTextInfo>
---@field ShowDebugTargetDesiredClass AActor @Class filter for selecting 'ShowDebugTargetActor' when 'bShowDebugForReticleTarget' is true.
local AHUD = {}

---hides or shows HUD
function AHUD:ShowHUD() end

---Toggles displaying properties of player's current ViewTarget DebugType input values supported by base engine include "AI", "physics", "net", "camera", and "collision"
---@param DebugType string
function AHUD:ShowDebug(DebugType) end

---Toggles sub categories of show debug to customize display
---@param Category string
function AHUD:ShowDebugToggleSubCategory(Category) end

---Toggles 'ShowDebug' from showing debug info between reticle target actor (of subclass <DesiredClass>) and camera view target
---@param DesiredClass AActor
function AHUD:ShowDebugForReticleTargetToggle(DesiredClass) end

---Add debug text for a specific actor to be displayed via DrawDebugTextList().  If the debug text is invalid then it will attempt to remove any previous entries via RemoveDebugText().
---@param DebugText string
---@param SrcActor AActor
---@param Duration number
---@param Offset FVector
---@param DesiredOffset FVector
---@param TextColor FColor
---@param bSkipOverwriteCheck boolean
---@param bAbsoluteLocation boolean
---@param bKeepAttachedToActor boolean
---@param InFont UFont
---@param FontScale number
---@param bDrawShadow boolean
function AHUD:AddDebugText(DebugText, SrcActor, Duration, Offset, DesiredOffset, TextColor, bSkipOverwriteCheck, bAbsoluteLocation, bKeepAttachedToActor, InFont, FontScale, bDrawShadow) end

---Remove all debug strings added via AddDebugText
function AHUD:RemoveAllDebugStrings() end

---Remove debug strings for the given actor
---@param SrcActor AActor
---@param bLeaveDurationText boolean
function AHUD:RemoveDebugText(SrcActor, bLeaveDurationText) end

---Hook to allow blueprints to do custom HUD drawing. @see bSuppressNativeHUD to control HUD drawing in base class. Note:  the canvas resource used for drawing is only valid during this event, it will not be valid if drawing functions are called later (e.g. after a Delay node).
---@param SizeX number
---@param SizeY number
function AHUD:ReceiveDrawHUD(SizeX, SizeY) end

---Called when a hit box is clicked on. Provides the name associated with that box.
---@param BoxName string
function AHUD:ReceiveHitBoxClick(BoxName) end

---Called when a hit box is unclicked. Provides the name associated with that box.
---@param BoxName string
function AHUD:ReceiveHitBoxRelease(BoxName) end

---Called when a hit box is moused over.
---@param BoxName string
function AHUD:ReceiveHitBoxBeginCursorOver(BoxName) end

---Called when a hit box no longer has the mouse over it.
---@param BoxName string
function AHUD:ReceiveHitBoxEndCursorOver(BoxName) end

---Returns the width and height of a string.
---@param Text string
---@param OutWidth number
---@param OutHeight number
---@param Font UFont
---@param Scale number
function AHUD:GetTextSize(Text, OutWidth, OutHeight, Font, Scale) end

---Draws a string on the HUD.
---@param Text string
---@param TextColor FLinearColor
---@param ScreenX number
---@param ScreenY number
---@param Font UFont
---@param Scale number
---@param bScalePosition boolean
function AHUD:DrawText(Text, TextColor, ScreenX, ScreenY, Font, Scale, bScalePosition) end

---Draws a 2D line on the HUD.
---@param StartScreenX number
---@param StartScreenY number
---@param EndScreenX number
---@param EndScreenY number
---@param LineColor FLinearColor
---@param LineThickness number
function AHUD:DrawLine(StartScreenX, StartScreenY, EndScreenX, EndScreenY, LineColor, LineThickness) end

---Draws a colored untextured quad on the HUD.
---@param RectColor FLinearColor
---@param ScreenX number
---@param ScreenY number
---@param ScreenW number
---@param ScreenH number
function AHUD:DrawRect(RectColor, ScreenX, ScreenY, ScreenW, ScreenH) end

---Draws a textured quad on the HUD.
---@param Texture UTexture
---@param ScreenX number
---@param ScreenY number
---@param ScreenW number
---@param ScreenH number
---@param TextureU number
---@param TextureV number
---@param TextureUWidth number
---@param TextureVHeight number
---@param TintColor FLinearColor
---@param BlendMode EBlendMode
---@param Scale number
---@param bScalePosition boolean
---@param Rotation number
---@param RotPivot FVector2D
function AHUD:DrawTexture(Texture, ScreenX, ScreenY, ScreenW, ScreenH, TextureU, TextureV, TextureUWidth, TextureVHeight, TintColor, BlendMode, Scale, bScalePosition, Rotation, RotPivot) end

---Draws a textured quad on the HUD. Assumes 1:1 texel density.
---@param Texture UTexture
---@param ScreenX number
---@param ScreenY number
---@param Scale number
---@param bScalePosition boolean
function AHUD:DrawTextureSimple(Texture, ScreenX, ScreenY, Scale, bScalePosition) end

---Draws a material-textured quad on the HUD.
---@param Material UMaterialInterface
---@param ScreenX number
---@param ScreenY number
---@param ScreenW number
---@param ScreenH number
---@param MaterialU number
---@param MaterialV number
---@param MaterialUWidth number
---@param MaterialVHeight number
---@param Scale number
---@param bScalePosition boolean
---@param Rotation number
---@param RotPivot FVector2D
function AHUD:DrawMaterial(Material, ScreenX, ScreenY, ScreenW, ScreenH, MaterialU, MaterialV, MaterialUWidth, MaterialVHeight, Scale, bScalePosition, Rotation, RotPivot) end

---Draws a material-textured quad on the HUD.  Assumes UVs such that the entire material is shown.
---@param Material UMaterialInterface
---@param ScreenX number
---@param ScreenY number
---@param ScreenW number
---@param ScreenH number
---@param Scale number
---@param bScalePosition boolean
function AHUD:DrawMaterialSimple(Material, ScreenX, ScreenY, ScreenW, ScreenH, Scale, bScalePosition) end

---@param Material UMaterialInterface
---@param V0_Pos FVector2D
---@param V1_Pos FVector2D
---@param V2_Pos FVector2D
---@param V0_UV FVector2D
---@param V1_UV FVector2D
---@param V2_UV FVector2D
---@param V0_Color FLinearColor
---@param V1_Color FLinearColor
---@param V2_Color FLinearColor
function AHUD:DrawMaterialTriangle(Material, V0_Pos, V1_Pos, V2_Pos, V0_UV, V1_UV, V2_UV, V0_Color, V1_Color, V2_Color) end

---Transforms a 3D world-space vector into 2D screen coordinates
---@param Location FVector
---@return FVector
function AHUD:Project(Location) end

---Transforms a 2D screen location into a 3D location and direction
---@param ScreenX number
---@param ScreenY number
---@param WorldPosition FVector
---@param WorldDirection FVector
function AHUD:Deproject(ScreenX, ScreenY, WorldPosition, WorldDirection) end

---Returns the array of actors inside a selection rectangle, with a class filter. Sample usage: TArray<AStaticMeshActor*> ActorsInSelectionRect; Canvas->GetActorsInSelectionRectangle<AStaticMeshActor>(FirstPoint,SecondPoint,ActorsInSelectionRect);
---@param ClassFilter AActor
---@param FirstPoint FVector2D
---@param SecondPoint FVector2D
---@param OutActors ULuaArrayHelper<AActor>
---@param bIncludeNonCollidingComponents boolean
---@param bActorMustBeFullyEnclosed boolean
function AHUD:GetActorsInSelectionRectangle(ClassFilter, FirstPoint, SecondPoint, OutActors, bIncludeNonCollidingComponents, bActorMustBeFullyEnclosed) end

---Add a hitbox to the hud
---@param Position FVector2D
---@param Size FVector2D
---@param InName string
---@param bConsumesInput boolean
---@param Priority number
function AHUD:AddHitBox(Position, Size, InName, bConsumesInput, Priority) end
