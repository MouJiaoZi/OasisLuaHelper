---@meta

---The list of possible device/screen orientation for mobile devices
---@class EScreenOrientation
---@field Unknown number @The orientation is not known
---@field Portrait number @The orientation is portrait with the home button at the bottom
---@field PortraitUpsideDown number @The orientation is portrait with the home button at the top
---@field LandscapeLeft number @The orientation is landscape with the home button at the right side
---@field LandscapeRight number @The orientation is landscape with the home button at the left side
---@field FaceUp number @The orientation is as if place on a desk with the screen upward
---@field FaceDown number @The orientation is as if place on a desk with the screen downward
EScreenOrientation = {}


---@class EApplicationState
---@field Unknown number @The Application was in an unknown state when receiving the notification
---@field Inactive number @The Application was inactive when receiving the notification
---@field Background number @The Application was in the background when receiving the notification
---@field Active number @The Application was active when receiving the notification
EApplicationState = {}


---UObject based class for handling mobile events. Having this object as an option gives the app lifetime access to these global delegates. The component UApplicationLifecycleComponent is destroyed at level loads
---@class UPlatformGameInstance: UGameInstance
---@field ApplicationWillDeactivateDelegate FPlatformDelegate
---@field ApplicationHasReactivatedDelegate FPlatformDelegate
---@field ApplicationWillEnterBackgroundDelegate FPlatformDelegate
---@field ApplicationHasEnteredForegroundDelegate FPlatformDelegate
---@field ApplicationWillTerminateDelegate FPlatformDelegate
---@field ApplicationRegisteredForRemoteNotificationsDelegate FPlatformRegisteredForRemoteNotificationsDelegate
---@field ApplicationRegisteredForUserNotificationsDelegate FPlatformRegisteredForUserNotificationsDelegate
---@field ApplicationFailedToRegisterForRemoteNotificationsDelegate FPlatformFailedToRegisterForRemoteNotificationsDelegate
---@field ApplicationReceivedRemoteNotificationDelegate FPlatformReceivedRemoteNotificationDelegate
---@field ApplicationReceivedLocalNotificationDelegate FPlatformReceivedLocalNotificationDelegate
---@field ApplicationReceivedScreenOrientationChangedNotificationDelegate FPlatformScreenOrientationChangedDelegate
local UPlatformGameInstance = {}


---@class UBlueprintPlatformLibrary: UBlueprintFunctionLibrary
local UBlueprintPlatformLibrary = {}

---Clear all pending local notifications. Typically this will be done before scheduling new notifications when going into the background
function UBlueprintPlatformLibrary:ClearAllLocalNotifications() end

---Schedule a local notification at a specific time, inLocalTime specifies the current local time or if UTC time should be used
---@param FireDateTime FDateTime
---@param LocalTime boolean
---@param Title string
---@param Body string
---@param Action string
---@param ActivationEvent string
function UBlueprintPlatformLibrary:ScheduleLocalNotificationAtTime(FireDateTime, LocalTime, Title, Body, Action, ActivationEvent) end

---Schedule a local notification to fire inSecondsFromNow from now
---@param inSecondsFromNow number
---@param Title string
---@param Body string
---@param Action string
---@param ActivationEvent string
function UBlueprintPlatformLibrary:ScheduleLocalNotificationFromNow(inSecondsFromNow, Title, Body, Action, ActivationEvent) end

---Schedule a local notification badge at a specific time, inLocalTime specifies the current local time or if UTC time should be used
---@param FireDateTime FDateTime
---@param LocalTime boolean
---@param ActivationEvent string
function UBlueprintPlatformLibrary:ScheduleLocalNotificationBadgeAtTime(FireDateTime, LocalTime, ActivationEvent) end

---Schedule a local notification badge to fire inSecondsFromNow from now
---@param inSecondsFromNow number
---@param ActivationEvent string
function UBlueprintPlatformLibrary:ScheduleLocalNotificationBadgeFromNow(inSecondsFromNow, ActivationEvent) end

---Cancel a local notification given the ActivationEvent
---@param ActivationEvent string
function UBlueprintPlatformLibrary:CancelLocalNotification(ActivationEvent) end

---Get the local notification that was used to launch the app
---@param NotificationLaunchedApp boolean
---@param ActivationEvent string
---@param FireDate number
function UBlueprintPlatformLibrary:GetLaunchNotification(NotificationLaunchedApp, ActivationEvent, FireDate) end
