---@meta

---@class FCollisionProfileName
---@field Name string
FCollisionProfileName = {}


---Structure for collision response templates.
---@class FCollisionResponseTemplate
---@field Name string
---@field CollisionEnabled ECollisionEnabled
---@field ObjectTypeName string
---@field CustomResponses ULuaArrayHelper<FResponseChannel> @Types of objects that this physics objects will collide with.
---@field HelpMessage string @Help message for collision profile *
---@field bCanModify boolean @Help message for collision profile *
FCollisionResponseTemplate = {}


---Structure for custom channel setup information.
---@class FCustomChannelSetup
---@field Channel ECollisionChannel @Which channel you'd like to customize *
---@field Name string @Name of channel you'd like to show up *
---@field DefaultResponse ECollisionResponse @Default Response for the channel
---@field bTraceType boolean @Sets meta data TraceType="1" for the enum entry if true. Otherwise, this channel will be treated as object query channel, so you can query object types*
---@field bStaticObject boolean @Specifies if this is static object. Otherwise it will be dynamic object. This is used for query all objects vs all static objects vs all dynamic objects *
FCustomChannelSetup = {}


---Structure for custom profiles. if you'd like to just add custom channels, not changing anything else engine defined if you'd like to override all about profile, please use +Profiles=(Name=NameOfProfileYouLikeToOverwrite,....)
---@class FCustomProfile
---@field Name string
---@field CustomResponses ULuaArrayHelper<FResponseChannel> @Types of objects that this physics objects will collide with.
FCustomProfile = {}


---Set up and modify collision settings.
---@class UCollisionProfile: UDeveloperSettings
---@field Profiles ULuaArrayHelper<FCollisionResponseTemplate>
---@field DefaultChannelResponses ULuaArrayHelper<FCustomChannelSetup>
---@field EditProfiles ULuaArrayHelper<FCustomProfile>
---@field ProfileRedirects ULuaArrayHelper<FRedirector>
---@field CollisionChannelRedirects ULuaArrayHelper<FRedirector>
local UCollisionProfile = {}
