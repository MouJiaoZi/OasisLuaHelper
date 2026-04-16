---@meta

---Subsystems are auto instanced classes that share the lifetime of certain engine constructs Currently supported Subsystem lifetimes are: Engine		 -> inherit UEngineSubsystem Editor		 -> inherit UEditorSubsystem GameInstance -> inherit UGameInstanceSubsystem World		 -> inherit UWorldSubsystem LocalPlayer	 -> inherit ULocalPlayerSubsystem Normal Example: class UMySystem : public UGameInstanceSubsystem Which can be accessed by: UGameInstance* GameInstance = ...; UMySystem* MySystem = GameInstance->GetSubsystem<UMySystem>(); or the following if you need protection from a null GameInstance UGameInstance* GameInstance = ...; UMyGameSubsystem* MySubsystem = UGameInstance::GetSubsystem<MyGameSubsystem>(GameInstance); You can get also define interfaces that can have multiple implementations. Interface Example : MySystemInterface With 2 concrete derivative classes: MyA : public MySystemInterface MyB : public MySystemInterface Which can be accessed by: UGameInstance* GameInstance = ...; const TArray<UMyGameSubsystem*>& MySubsystems = GameInstance->GetSubsystemArray<MyGameSubsystem>();
---@class USubsystem: UObject
local USubsystem = {}


---Dynamic Subsystems auto populate/depopulate existing collections when modules are loaded and unloaded Only UEngineSubsystems and UEditorSubsystems allow for dynamic loading. If instances of your subsystem aren't being created it maybe that the module they are in isn't being explicitly loaded, make sure there is a LoadModule("ModuleName") to load the module.
---@class UDynamicSubsystem: USubsystem
local UDynamicSubsystem = {}
