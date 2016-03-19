.class public Lcom/urbanairship/push/PushManager;
.super Lcom/urbanairship/BaseManager;
.source "SourceFile"


# static fields
.field public static final ACTION_CHANNEL_UPDATED:Ljava/lang/String; = "com.urbanairship.push.CHANNEL_UPDATED"

.field public static final ACTION_NOTIFICATION_BUTTON_OPENED_PROXY:Ljava/lang/String; = "com.urbanairship.ACTION_NOTIFICATION_BUTTON_OPENED_PROXY"

.field public static final ACTION_NOTIFICATION_DISMISSED:Ljava/lang/String; = "com.urbanairship.push.DISMISSED"

.field public static final ACTION_NOTIFICATION_DISMISSED_PROXY:Ljava/lang/String; = "com.urbanairship.ACTION_NOTIFICATION_DISMISSED_PROXY"

.field public static final ACTION_NOTIFICATION_OPENED:Ljava/lang/String; = "com.urbanairship.push.OPENED"

.field public static final ACTION_NOTIFICATION_OPENED_PROXY:Ljava/lang/String; = "com.urbanairship.ACTION_NOTIFICATION_OPENED_PROXY"

.field public static final ACTION_PUSH_RECEIVED:Ljava/lang/String; = "com.urbanairship.push.RECEIVED"

.field public static final EXTRA_CHANNEL_ID:Ljava/lang/String; = "com.urbanairship.push.EXTRA_CHANNEL_ID"

.field public static final EXTRA_ERROR:Ljava/lang/String; = "com.urbanairship.push.EXTRA_ERROR"

.field public static final EXTRA_NOTIFICATION_ACTION_BUTTON_DESCRIPTION:Ljava/lang/String; = "com.urbanairship.push.EXTRA_NOTIFICATION_ACTION_BUTTON_DESCRIPTION"

.field public static final EXTRA_NOTIFICATION_BUTTON_ACTIONS_PAYLOAD:Ljava/lang/String; = "com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_ACTIONS_PAYLOAD"

.field public static final EXTRA_NOTIFICATION_BUTTON_FOREGROUND:Ljava/lang/String; = "com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_FOREGROUND"

.field public static final EXTRA_NOTIFICATION_BUTTON_ID:Ljava/lang/String; = "com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_ID"

.field public static final EXTRA_NOTIFICATION_CONTENT_INTENT:Ljava/lang/String; = "com.urbanairship.push.EXTRA_NOTIFICATION_CONTENT_INTENT"

.field public static final EXTRA_NOTIFICATION_DELETE_INTENT:Ljava/lang/String; = "com.urbanairship.push.EXTRA_NOTIFICATION_DELETE_INTENT"

.field public static final EXTRA_NOTIFICATION_ID:Ljava/lang/String; = "com.urbanairship.push.NOTIFICATION_ID"

.field public static final EXTRA_PUSH_MESSAGE:Ljava/lang/String; = "com.urbanairship.push.EXTRA_PUSH_MESSAGE"


# instance fields
.field private final DEFAULT_TAG_GROUP:Ljava/lang/String;

.field private final UA_NOTIFICATION_BUTTON_GROUP_PREFIX:Ljava/lang/String;

.field private final actionGroupMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;",
            ">;"
        }
    .end annotation
.end field

.field private channelTagRegistrationEnabled:Z

.field private final namedUser:Lcom/urbanairship/push/NamedUser;

.field private notificationFactory:Lcom/urbanairship/push/notifications/NotificationFactory;

.field private final preferences:Lcom/urbanairship/push/PushPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;)V
    .locals 2

    .prologue
    .line 202
    new-instance v0, Lcom/urbanairship/push/PushPreferences;

    invoke-direct {v0, p2}, Lcom/urbanairship/push/PushPreferences;-><init>(Lcom/urbanairship/PreferenceDataStore;)V

    new-instance v1, Lcom/urbanairship/push/NamedUser;

    invoke-direct {v1, p2}, Lcom/urbanairship/push/NamedUser;-><init>(Lcom/urbanairship/PreferenceDataStore;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/urbanairship/push/PushManager;-><init>(Landroid/content/Context;Lcom/urbanairship/push/PushPreferences;Lcom/urbanairship/push/NamedUser;)V

    .line 203
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/urbanairship/push/PushPreferences;Lcom/urbanairship/push/NamedUser;)V
    .locals 2

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/urbanairship/BaseManager;-><init>()V

    .line 179
    const-string v0, "ua_"

    iput-object v0, p0, Lcom/urbanairship/push/PushManager;->UA_NOTIFICATION_BUTTON_GROUP_PREFIX:Ljava/lang/String;

    .line 184
    const-string v0, "device"

    iput-object v0, p0, Lcom/urbanairship/push/PushManager;->DEFAULT_TAG_GROUP:Ljava/lang/String;

    .line 188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/push/PushManager;->actionGroupMap:Ljava/util/Map;

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/urbanairship/push/PushManager;->channelTagRegistrationEnabled:Z

    .line 206
    iput-object p2, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    .line 207
    new-instance v0, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;

    invoke-direct {v0, p1}, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/urbanairship/push/PushManager;->notificationFactory:Lcom/urbanairship/push/notifications/NotificationFactory;

    .line 208
    iput-object p3, p0, Lcom/urbanairship/push/PushManager;->namedUser:Lcom/urbanairship/push/NamedUser;

    .line 210
    sget v0, Lcom/urbanairship/Logger;->logLevel:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->getChannelId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/urbanairship/UAirship;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Channel ID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->getChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->actionGroupMap:Ljava/util/Map;

    invoke-static {}, Lcom/urbanairship/push/NotificationActionButtonGroupFactory;->createUrbanAirshipGroups()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 215
    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/push/PushManager;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/urbanairship/push/PushManager;->channelTagRegistrationEnabled:Z

    return v0
.end method

.method static getSecureId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 848
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addNotificationActionButtonGroup(Ljava/lang/String;Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;)V
    .locals 1

    .prologue
    .line 756
    const-string v0, "ua_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 757
    const-string v0, "Unable to add any notification button groups that starts with the reserved Urban Airship prefix ua_"

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    .line 762
    :goto_0
    return-void

    .line 761
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->actionGroupMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public editTagGroups()Lcom/urbanairship/push/TagGroupsEditor;
    .locals 2

    .prologue
    .line 703
    new-instance v0, Lcom/urbanairship/push/PushManager$1;

    const-string v1, "com.urbanairship.push.ACTION_UPDATE_CHANNEL_TAG_GROUPS"

    invoke-direct {v0, p0, v1}, Lcom/urbanairship/push/PushManager$1;-><init>(Lcom/urbanairship/push/PushManager;Ljava/lang/String;)V

    return-object v0
.end method

.method public getAdmId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->getAdmId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->getAlias()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->getChannelId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getChannelLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 805
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->getChannelLocation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChannelTagRegistrationEnabled()Z
    .locals 1

    .prologue
    .line 582
    iget-boolean v0, p0, Lcom/urbanairship/push/PushManager;->channelTagRegistrationEnabled:Z

    return v0
.end method

.method public getDeviceTagsEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->getChannelTagRegistrationEnabled()Z

    move-result v0

    return v0
.end method

.method public getGcmId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 536
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->getGcmId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGcmToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 878
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->getGcmToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastReceivedSendId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->getLastReceivedSendId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamedUser()Lcom/urbanairship/push/NamedUser;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->namedUser:Lcom/urbanairship/push/NamedUser;

    return-object v0
.end method

.method getNextChannelRegistrationPayload()Lcom/urbanairship/push/ChannelRegistrationPayload;
    .locals 3

    .prologue
    .line 401
    new-instance v0, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;

    invoke-direct {v0}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->setAlias(Ljava/lang/String;)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->getChannelTagRegistrationEnabled()Z

    move-result v1

    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->getTags()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->setTags(ZLjava/util/Set;)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->isOptIn()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->setOptIn(Z)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->isPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->isPushAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->setBackgroundEnabled(Z)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;

    move-result-object v0

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getRichPushManager()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/richpush/RichPushManager;->getRichPushUser()Lcom/urbanairship/richpush/RichPushUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/richpush/RichPushUser;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->setUserId(Ljava/lang/String;)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v1}, Lcom/urbanairship/push/PushPreferences;->getApid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->setApid(Ljava/lang/String;)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;

    move-result-object v0

    .line 409
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getPlatformType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 420
    :goto_1
    invoke-virtual {v0}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->build()Lcom/urbanairship/push/ChannelRegistrationPayload;

    move-result-object v0

    return-object v0

    .line 401
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 411
    :pswitch_0
    const-string v1, "android"

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->setDeviceType(Ljava/lang/String;)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->getGcmToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->setPushAddress(Ljava/lang/String;)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;

    goto :goto_1

    .line 415
    :pswitch_1
    const-string v1, "amazon"

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->setDeviceType(Ljava/lang/String;)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->getAdmId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->setPushAddress(Ljava/lang/String;)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;

    goto :goto_1

    .line 409
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getNotificationActionGroup(Ljava/lang/String;)Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;
    .locals 1

    .prologue
    .line 785
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->actionGroupMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;

    return-object v0
.end method

.method public getNotificationFactory()Lcom/urbanairship/push/notifications/NotificationFactory;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->notificationFactory:Lcom/urbanairship/push/notifications/NotificationFactory;

    return-object v0
.end method

.method getPreferences()Lcom/urbanairship/push/PushPreferences;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    return-object v0
.end method

.method public getQuietTimeInterval()[Ljava/util/Date;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->getQuietTimeInterval()[Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTags()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 517
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->getTags()Ljava/util/Set;

    move-result-object v0

    .line 518
    invoke-static {v0}, Lcom/urbanairship/push/TagUtils;->normalizeTags(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 521
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 522
    invoke-virtual {p0, v1}, Lcom/urbanairship/push/PushManager;->setTags(Ljava/util/Set;)V

    .line 524
    :cond_0
    return-object v1
.end method

.method public getUserNotificationsEnabled()Z
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->getUserNotificationsEnabled()Z

    move-result v0

    return v0
.end method

.method protected init()V
    .locals 3

    .prologue
    .line 220
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->migratePushEnabledSettings()V

    .line 223
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/urbanairship/push/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.urbanairship.push.ACTION_START_REGISTRATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 226
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 229
    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->getChannelId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->startUpdateTagsService()V

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->namedUser:Lcom/urbanairship/push/NamedUser;

    invoke-virtual {v0}, Lcom/urbanairship/push/NamedUser;->startUpdateService()V

    .line 238
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->namedUser:Lcom/urbanairship/push/NamedUser;

    invoke-virtual {v0}, Lcom/urbanairship/push/NamedUser;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->namedUser:Lcom/urbanairship/push/NamedUser;

    invoke-virtual {v0}, Lcom/urbanairship/push/NamedUser;->startUpdateTagsService()V

    .line 241
    :cond_1
    return-void
.end method

.method public isInQuietTime()Z
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->isInQuietTime()Z

    move-result v0

    return v0
.end method

.method public isOptIn()Z
    .locals 1

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->isPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->isPushAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->getUserNotificationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPushAvailable()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 377
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/UAirship;->getPlatformType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 383
    :cond_0
    :goto_0
    return v0

    .line 379
    :pswitch_0
    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->getPreferences()Lcom/urbanairship/push/PushPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/PushPreferences;->getAdmId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 381
    :pswitch_1
    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->getPreferences()Lcom/urbanairship/push/PushPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/PushPreferences;->getGcmToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 377
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isPushEnabled()Z
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->isPushEnabled()Z

    move-result v0

    return v0
.end method

.method public isQuietTimeEnabled()Z
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->isQuietTimeEnabled()Z

    move-result v0

    return v0
.end method

.method public isSoundEnabled()Z
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->isSoundEnabled()Z

    move-result v0

    return v0
.end method

.method public isVibrateEnabled()Z
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->isVibrateEnabled()Z

    move-result v0

    return v0
.end method

.method public removeNotificationActionButtonGroup(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 770
    const-string v0, "ua_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 771
    const-string v0, "Unable to remove any reserved Urban Airship actions groups that begin with ua_"

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 776
    :goto_0
    return-void

    .line 775
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->actionGroupMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method setAdmId(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 835
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/PushPreferences;->setAppVersionCode(I)V

    .line 836
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/PushPreferences;->setAdmId(Ljava/lang/String;)V

    .line 837
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/push/PushManager;->getSecureId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/PushPreferences;->setDeviceId(Ljava/lang/String;)V

    .line 838
    return-void
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 448
    if-eqz p1, :cond_0

    .line 449
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/urbanairship/util/UAStringUtil;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 453
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/PushPreferences;->setAlias(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->updateRegistration()V

    .line 456
    :cond_1
    return-void
.end method

.method public setAliasAndTags(Ljava/lang/String;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 343
    if-nez p2, :cond_0

    .line 344
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tags must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_0
    invoke-static {p2}, Lcom/urbanairship/push/TagUtils;->normalizeTags(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 351
    const/4 v0, 0x0

    .line 354
    iget-object v3, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v3}, Lcom/urbanairship/push/PushPreferences;->getAlias()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/urbanairship/util/UAStringUtil;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 355
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/PushPreferences;->setAlias(Ljava/lang/String;)V

    move v0, v1

    .line 360
    :cond_1
    iget-object v3, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v3}, Lcom/urbanairship/push/PushPreferences;->getTags()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 361
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0, v2}, Lcom/urbanairship/push/PushPreferences;->setTags(Ljava/util/Set;)V

    .line 365
    :goto_0
    if-eqz v1, :cond_2

    .line 366
    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->updateRegistration()V

    .line 368
    :cond_2
    return-void

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method setChannel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/PushPreferences;->setChannelId(Ljava/lang/String;)V

    .line 817
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0, p2}, Lcom/urbanairship/push/PushPreferences;->setChannelLocation(Ljava/lang/String;)V

    .line 818
    return-void
.end method

.method public setChannelTagRegistrationEnabled(Z)V
    .locals 0

    .prologue
    .line 592
    iput-boolean p1, p0, Lcom/urbanairship/push/PushManager;->channelTagRegistrationEnabled:Z

    .line 593
    return-void
.end method

.method public setDeviceTagsEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 571
    invoke-virtual {p0, p1}, Lcom/urbanairship/push/PushManager;->setChannelTagRegistrationEnabled(Z)V

    .line 572
    return-void
.end method

.method setGcmId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 826
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/PushPreferences;->setGcmId(Ljava/lang/String;)V

    .line 827
    return-void
.end method

.method setGcmToken(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 866
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/PushPreferences;->setGcmToken(Ljava/lang/String;)V

    .line 867
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/PushPreferences;->setAppVersionCode(I)V

    .line 868
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/push/PushManager;->getSecureId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/PushPreferences;->setDeviceId(Ljava/lang/String;)V

    .line 869
    return-void
.end method

.method setLastReceivedSendId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/PushPreferences;->setLastReceivedSendId(Ljava/lang/String;)V

    .line 685
    return-void
.end method

.method public setNotificationFactory(Lcom/urbanairship/push/notifications/NotificationFactory;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/urbanairship/push/PushManager;->notificationFactory:Lcom/urbanairship/push/notifications/NotificationFactory;

    .line 309
    return-void
.end method

.method public setPushEnabled(Z)V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/PushPreferences;->setPushEnabled(Z)V

    .line 253
    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->updateRegistration()V

    .line 254
    return-void
.end method

.method public setQuietTimeEnabled(Z)V
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/PushPreferences;->setQuietTimeEnabled(Z)V

    .line 647
    return-void
.end method

.method public setQuietTimeInterval(Ljava/util/Date;Ljava/util/Date;)V
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0, p1, p2}, Lcom/urbanairship/push/PushPreferences;->setQuietTimeInterval(Ljava/util/Date;Ljava/util/Date;)V

    .line 695
    return-void
.end method

.method public setSoundEnabled(Z)V
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/PushPreferences;->setSoundEnabled(Z)V

    .line 611
    return-void
.end method

.method public setTags(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 477
    if-nez p1, :cond_0

    .line 478
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tags must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 481
    :cond_0
    invoke-static {p1}, Lcom/urbanairship/push/TagUtils;->normalizeTags(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 482
    iget-object v1, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v1}, Lcom/urbanairship/push/PushPreferences;->getTags()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 483
    iget-object v1, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v1, v0}, Lcom/urbanairship/push/PushPreferences;->setTags(Ljava/util/Set;)V

    .line 484
    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->updateRegistration()V

    .line 486
    :cond_1
    return-void
.end method

.method public setUserNotificationsEnabled(Z)V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/PushPreferences;->setUserNotificationsEnabled(Z)V

    .line 279
    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->updateRegistration()V

    .line 280
    return-void
.end method

.method public setVibrateEnabled(Z)V
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/PushPreferences;->setVibrateEnabled(Z)V

    .line 629
    return-void
.end method

.method startUpdateTagsService()V
    .locals 3

    .prologue
    .line 855
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/urbanairship/push/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.urbanairship.push.ACTION_UPDATE_CHANNEL_TAG_GROUPS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 857
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 858
    return-void
.end method

.method public updateRegistration()V
    .locals 3

    .prologue
    .line 428
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 429
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/urbanairship/push/PushService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 430
    const-string v2, "com.urbanairship.push.ACTION_UPDATE_CHANNEL_REGISTRATION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 432
    return-void
.end method
