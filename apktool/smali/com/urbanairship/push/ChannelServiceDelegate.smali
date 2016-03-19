.class Lcom/urbanairship/push/ChannelServiceDelegate;
.super Lcom/urbanairship/BaseIntentService$Delegate;
.source "SourceFile"


# static fields
.field private static final CHANNEL_REREGISTRATION_INTERVAL_MS:J = 0x5265c00L

.field private static final LAST_REGISTRATION_PAYLOAD_KEY:Ljava/lang/String; = "com.urbanairship.push.LAST_REGISTRATION_PAYLOAD"

.field private static final LAST_REGISTRATION_TIME_KEY:Ljava/lang/String; = "com.urbanairship.push.LAST_REGISTRATION_TIME"

.field private static isPushRegistering:Z

.field private static isRegistrationStarted:Z


# instance fields
.field private final airship:Lcom/urbanairship/UAirship;

.field private final channelClient:Lcom/urbanairship/push/ChannelAPIClient;

.field private final pushManager:Lcom/urbanairship/push/PushManager;

.field private final pushPreferences:Lcom/urbanairship/push/PushPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    sput-boolean v0, Lcom/urbanairship/push/ChannelServiceDelegate;->isPushRegistering:Z

    .line 72
    sput-boolean v0, Lcom/urbanairship/push/ChannelServiceDelegate;->isRegistrationStarted:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;)V
    .locals 2

    .prologue
    .line 79
    new-instance v0, Lcom/urbanairship/push/ChannelAPIClient;

    invoke-direct {v0}, Lcom/urbanairship/push/ChannelAPIClient;-><init>()V

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/urbanairship/push/ChannelServiceDelegate;-><init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;Lcom/urbanairship/push/ChannelAPIClient;Lcom/urbanairship/UAirship;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;Lcom/urbanairship/push/ChannelAPIClient;Lcom/urbanairship/UAirship;)V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/urbanairship/BaseIntentService$Delegate;-><init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;)V

    .line 86
    iput-object p3, p0, Lcom/urbanairship/push/ChannelServiceDelegate;->channelClient:Lcom/urbanairship/push/ChannelAPIClient;

    .line 87
    iput-object p4, p0, Lcom/urbanairship/push/ChannelServiceDelegate;->airship:Lcom/urbanairship/UAirship;

    .line 88
    invoke-virtual {p4}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/ChannelServiceDelegate;->pushManager:Lcom/urbanairship/push/PushManager;

    .line 89
    invoke-virtual {p4}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/PushManager;->getPreferences()Lcom/urbanairship/push/PushPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/ChannelServiceDelegate;->pushPreferences:Lcom/urbanairship/push/PushPreferences;

    .line 90
    return-void
.end method

.method private createChannel(Landroid/content/Intent;Lcom/urbanairship/push/ChannelRegistrationPayload;)V
    .locals 6

    .prologue
    const/16 v5, 0xc8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 311
    iget-object v0, p0, Lcom/urbanairship/push/ChannelServiceDelegate;->channelClient:Lcom/urbanairship/push/ChannelAPIClient;

    invoke-virtual {v0, p2}, Lcom/urbanairship/push/ChannelAPIClient;->createChannelWithPayload(Lcom/urbanairship/push/ChannelRegistrationPayload;)Lcom/urbanairship/push/ChannelResponse;

    move-result-object v0

    .line 314
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/urbanairship/push/ChannelResponse;->getStatus()I

    move-result v1

    invoke-static {v1}, Lcom/urbanairship/util/UAHttpStatusUtil;->inServerErrorRange(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 316
    :cond_0
    const-string v0, "Channel registration failed, will retry."

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0, p1}, Lcom/urbanairship/push/ChannelServiceDelegate;->retryIntent(Landroid/content/Intent;)V

    .line 356
    :goto_0
    return-void

    .line 322
    :cond_1
    invoke-virtual {v0}, Lcom/urbanairship/push/ChannelResponse;->getStatus()I

    move-result v1

    if-eq v1, v5, :cond_2

    invoke-virtual {v0}, Lcom/urbanairship/push/ChannelResponse;->getStatus()I

    move-result v1

    const/16 v2, 0xc9

    if-ne v1, v2, :cond_5

    .line 323
    :cond_2
    invoke-virtual {v0}, Lcom/urbanairship/push/ChannelResponse;->getChannelLocation()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/urbanairship/push/ChannelResponse;->getChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Channel creation succeeded with status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/urbanairship/push/ChannelResponse;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " channel ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/urbanairship/push/ChannelResponse;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 327
    iget-object v1, p0, Lcom/urbanairship/push/ChannelServiceDelegate;->pushManager:Lcom/urbanairship/push/PushManager;

    invoke-virtual {v0}, Lcom/urbanairship/push/ChannelResponse;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/urbanairship/push/ChannelResponse;->getChannelLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/urbanairship/push/PushManager;->setChannel(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-direct {p0, p2}, Lcom/urbanairship/push/ChannelServiceDelegate;->setLastRegistrationPayload(Lcom/urbanairship/push/ChannelRegistrationPayload;)V

    .line 329
    invoke-direct {p0, v4}, Lcom/urbanairship/push/ChannelServiceDelegate;->sendRegistrationFinishedBroadcast(Z)V

    .line 331
    invoke-virtual {v0}, Lcom/urbanairship/push/ChannelResponse;->getStatus()I

    move-result v0

    if-ne v0, v5, :cond_3

    .line 333
    iget-object v0, p0, Lcom/urbanairship/push/ChannelServiceDelegate;->airship:Lcom/urbanairship/UAirship;

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v0

    iget-boolean v0, v0, Lcom/urbanairship/AirshipConfigOptions;->clearNamedUser:Z

    if-eqz v0, :cond_3

    .line 335
    iget-object v0, p0, Lcom/urbanairship/push/ChannelServiceDelegate;->pushManager:Lcom/urbanairship/push/PushManager;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushManager;->getNamedUser()Lcom/urbanairship/push/NamedUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/NamedUser;->disassociateNamedUserIfNull()V

    .line 340
    :cond_3
    iget-object v0, p0, Lcom/urbanairship/push/ChannelServiceDelegate;->pushManager:Lcom/urbanairship/push/PushManager;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushManager;->getNamedUser()Lcom/urbanairship/push/NamedUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/NamedUser;->startUpdateService()V

    .line 341
    iget-object v0, p0, Lcom/urbanairship/push/ChannelServiceDelegate;->pushManager:Lcom/urbanairship/push/PushManager;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushManager;->updateRegistration()V

    .line 342
    iget-object v0, p0, Lcom/urbanairship/push/ChannelServiceDelegate;->pushManager:Lcom/urbanairship/push/PushManager;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushManager;->startUpdateTagsService()V

    .line 343
    iget-object v0, p0, Lcom/urbanairship/push/ChannelServiceDelegate;->airship:Lcom/urbanairship/UAirship;

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getRichPushManager()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/urbanairship/richpush/RichPushManager;->updateUser(Z)V

    goto/16 :goto_0

    .line 345
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to register with channel ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/urbanairship/push/ChannelResponse;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " channel location: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/urbanairship/push/ChannelResponse;->getChannelLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 347
    invoke-direct {p0, v3}, Lcom/urbanairship/push/ChannelServiceDelegate;->sendRegistrationFinishedBroadcast(Z)V

    goto/16 :goto_0

    .line 354
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Channel registration failed with status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/urbanairship/push/ChannelResponse;->getStatus()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 355
    invoke-direct {p0, v3}, Lcom/urbanairship/push/ChannelServiceDelegate;->sendRegistrationFinishedBroadcast(Z)V

    goto/16 :goto_0
.end method

.method private getChannelLocationURL()Ljava/net/URL;
    .locals 4

    .prologue
    .line 379
    iget-object v0, p0, Lcom/urbanairship/push/ChannelServiceDelegate;->pushManager:Lcom/urbanairship/push/PushManager;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushManager;->getChannelLocation()Ljava/lang/String;

    move-result-object v1

    .line 380
    invoke-static {v1}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :goto_0
    return-object v0

    .line 383
    :catch_0
    move-exception v0

    .line 384
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Channel location from preferences was invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 388
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getLastRegistrationPayload()Lcom/urbanairship/push/ChannelRegistrationPayload;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 485
    invoke-virtual {p0}, Lcom/urbanairship/push/ChannelServiceDelegate;->getDataStore()Lcom/urbanairship/PreferenceDataStore;

    move-result-object v1

    const-string v2, "com.urbanairship.push.LAST_REGISTRATION_PAYLOAD"

    invoke-virtual {v1, v2, v0}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 488
    :try_start_0
    invoke-static {v1}, Lcom/urbanairship/push/ChannelRegistrationPayload;->parseJson(Ljava/lang/String;)Lcom/urbanairship/push/ChannelRegistrationPayload;
    :try_end_0
    .catch Lcom/urbanairship/json/JsonException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 491
    :goto_0
    return-object v0

    .line 489
    :catch_0
    move-exception v1

    .line 490
    const-string v2, "ChannelServiceDelegate - Failed to parse payload from JSON."

    invoke-static {v2, v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getLastRegistrationTime()J
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 501
    invoke-virtual {p0}, Lcom/urbanairship/push/ChannelServiceDelegate;->getDataStore()Lcom/urbanairship/PreferenceDataStore;

    move-result-object v2

    const-string v3, "com.urbanairship.push.LAST_REGISTRATION_TIME"

    invoke-virtual {v2, v3, v0, v1}, Lcom/urbanairship/PreferenceDataStore;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 504
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 505
    invoke-virtual {p0}, Lcom/urbanairship/push/ChannelServiceDelegate;->getDataStore()Lcom/urbanairship/PreferenceDataStore;

    move-result-object v2

    const-string v3, "com.urbanairship.push.LAST_REGISTRATION_TIME"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;I)V

    .line 509
    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method private isPushRegistrationAllowed()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 397
    iget-object v2, p0, Lcom/urbanairship/push/ChannelServiceDelegate;->airship:Lcom/urbanairship/UAirship;

    invoke-virtual {v2}, Lcom/urbanairship/UAirship;->getPlatformType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 411
    :goto_0
    return v0

    .line 399
    :pswitch_0
    iget-object v2, p0, Lcom/urbanairship/push/ChannelServiceDelegate;->airship:Lcom/urbanairship/UAirship;

    invoke-virtual {v2}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v2

    const-string v3, "GCM"

    invoke-virtual {v2, v3}, Lcom/urbanairship/AirshipConfigOptions;->isTransportAllowed(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 400
    const-string v1, "Unable to register for push. GCM transport type is not allowed."

    invoke-static {v1}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move v0, v1

    .line 403
    goto :goto_0

    .line 405
    :pswitch_1
    iget-object v2, p0, Lcom/urbanairship/push/ChannelServiceDelegate;->airship:Lcom/urbanairship/UAirship;

    invoke-virtual {v2}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v2

    const-string v3, "ADM"

    invoke-virtual {v2, v3}, Lcom/urbanairship/AirshipConfigOptions;->isTransportAllowed(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 406
    const-string v1, "Unable to register for push. ADM transport type is not allowed."

    invoke-static {v1}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 409
    goto :goto_0

    .line 397
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private needsPushRegistration()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 425
    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v3, p0, Lcom/urbanairship/push/ChannelServiceDelegate;->pushPreferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v3}, Lcom/urbanairship/push/PushPreferences;->getAppVersionCode()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 426
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChannelServiceDelegate - Version code changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Push re-registration required."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 464
    :cond_0
    :goto_0
    return v0

    .line 428
    :cond_1
    invoke-virtual {p0}, Lcom/urbanairship/push/ChannelServiceDelegate;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/push/PushManager;->getSecureId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/urbanairship/push/ChannelServiceDelegate;->pushPreferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v3}, Lcom/urbanairship/push/PushPreferences;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 429
    const-string v1, "ChannelServiceDelegate - Device ID changed. Push re-registration required."

    invoke-static {v1}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    goto :goto_0

    .line 433
    :cond_2
    iget-object v2, p0, Lcom/urbanairship/push/ChannelServiceDelegate;->airship:Lcom/urbanairship/UAirship;

    invoke-virtual {v2}, Lcom/urbanairship/UAirship;->getPlatformType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 464
    goto :goto_0

    .line 435
    :pswitch_0
    iget-object v2, p0, Lcom/urbanairship/push/ChannelServiceDelegate;->pushManager:Lcom/urbanairship/push/PushManager;

    invoke-virtual {v2}, Lcom/urbanairship/push/PushManager;->getGcmId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 439
    iget-object v2, p0, Lcom/urbanairship/push/ChannelServiceDelegate;->pushManager:Lcom/urbanairship/push/PushManager;

    invoke-virtual {v2}, Lcom/urbanairship/push/PushManager;->getGcmToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 443
    iget-object v2, p0, Lcom/urbanairship/push/ChannelServiceDelegate;->airship:Lcom/urbanairship/UAirship;

    invoke-virtual {v2}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/AirshipConfigOptions;->getGCMSenderIds()Ljava/util/Set;

    move-result-object v2

    .line 444
    iget-object v3, p0, Lcom/urbanairship/push/ChannelServiceDelegate;->pushPreferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v3}, Lcom/urbanairship/push/PushPreferences;->getRegisteredGcmSenderIds()Ljava/util/Set;

    move-result-object v3

    .line 447
    if-eqz v3, :cond_3

    invoke-interface {v3, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 448
    const-string v1, "ChannelServiceDelegate - GCM sender IDs changed. Push re-registration required."

    invoke-static {v1}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    goto :goto_0

    .line 452
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChannelServiceDelegate - GCM already registered with ID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/urbanairship/push/ChannelServiceDelegate;->pushManager:Lcom/urbanairship/push/PushManager;

    invoke-virtual {v2}, Lcom/urbanairship/push/PushManager;->getGcmId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    move v0, v1

    .line 453
    goto :goto_0

    .line 456
    :pswitch_1
    iget-object v2, p0, Lcom/urbanairship/push/ChannelServiceDelegate;->pushManager:Lcom/urbanairship/push/PushManager;

    invoke-virtual {v2}, Lcom/urbanairship/push/PushManager;->getAdmId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChannelServiceDelegate - ADM already registered with ID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/urbanairship/push/ChannelServiceDelegate;->pushManager:Lcom/urbanairship/push/PushManager;

    invoke-virtual {v2}, Lcom/urbanairship/push/PushManager;->getAdmId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    move v0, v1

    .line 461
    goto/16 :goto_0

    .line 433
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onAdmRegistrationFinished(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/urbanairship/push/ChannelServiceDelegate;->airship:Lcom/urbanairship/UAirship;

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getPlatformType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/urbanairship/amazon/ADMUtils;->isADMAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 203
    :cond_0
    const-string v0, "Received intent from invalid transport acting as ADM."

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 229
    :goto_0
    return-void

    .line 207
    :cond_1
    const-string v0, "com.urbanairship.push.EXTRA_INTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 208
    if-nez v0, :cond_2

    .line 209
    const-string v0, "ChannelServiceDelegate - Received ADM message missing original intent."

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :cond_2
    const-string v1, "error"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ADM error occurred: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 223
    :cond_3
    :goto_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/urbanairship/push/ChannelServiceDelegate;->isPushRegistering:Z

    .line 226
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/urbanairship/push/ChannelServiceDelegate;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/urbanairship/push/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.urbanairship.push.ACTION_UPDATE_CHANNEL_REGISTRATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 228
    invoke-virtual {p0}, Lcom/urbanairship/push/ChannelServiceDelegate;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 216
    :cond_4
    const-string v1, "registration_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    if-eqz v0, :cond_3

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ADM registration successful. Registration ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lcom/urbanairship/push/ChannelServiceDelegate;->pushManager:Lcom/urbanairship/push/PushManager;

    invoke-virtual {v1, v0}, Lcom/urbanairship/push/PushManager;->setAdmId(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onStartRegistration()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 118
    sget-boolean v0, Lcom/urbanairship/push/ChannelServiceDelegate;->isRegistrationStarted:Z

    if-eqz v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 123
    :cond_0
    sput-boolean v1, Lcom/urbanairship/push/ChannelServiceDelegate;->isRegistrationStarted:Z

    .line 125
    invoke-direct {p0}, Lcom/urbanairship/push/ChannelServiceDelegate;->isPushRegistrationAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/urbanairship/push/ChannelServiceDelegate;->needsPushRegistration()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    sput-boolean v1, Lcom/urbanairship/push/ChannelServiceDelegate;->isPushRegistering:Z

    .line 129
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/urbanairship/push/ChannelServiceDelegate;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/urbanairship/push/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.urbanairship.push.ACTION_UPDATE_PUSH_REGISTRATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 131
    invoke-virtual {p0}, Lcom/urbanairship/push/ChannelServiceDelegate;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 134
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/urbanairship/push/ChannelServiceDelegate;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/urbanairship/push/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.urbanairship.push.ACTION_UPDATE_CHANNEL_REGISTRATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 136
    invoke-virtual {p0}, Lcom/urbanairship/push/ChannelServiceDelegate;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private onUpdateChannelRegistration(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 235
    sget-boolean v0, Lcom/urbanairship/push/ChannelServiceDelegate;->isPushRegistering:Z

    if-eqz v0, :cond_0

    .line 236
    const-string v0, "ChannelServiceDelegate - Push registration in progress, skipping registration update."

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 251
    :goto_0
    return-void

    .line 240
    :cond_0
    const-string v0, "ChannelServiceDelegate - Performing channel registration."

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/urbanairship/push/ChannelServiceDelegate;->pushManager:Lcom/urbanairship/push/PushManager;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushManager;->getNextChannelRegistrationPayload()Lcom/urbanairship/push/ChannelRegistrationPayload;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lcom/urbanairship/push/ChannelServiceDelegate;->pushManager:Lcom/urbanairship/push/PushManager;

    invoke-virtual {v1}, Lcom/urbanairship/push/PushManager;->getChannelId()Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-direct {p0}, Lcom/urbanairship/push/ChannelServiceDelegate;->getChannelLocationURL()Ljava/net/URL;

    move-result-object v2

    .line 246
    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 247
    invoke-direct {p0, p1, v2, v0}, Lcom/urbanairship/push/ChannelServiceDelegate;->updateChannel(Landroid/content/Intent;Ljava/net/URL;Lcom/urbanairship/push/ChannelRegistrationPayload;)V

    goto :goto_0

    .line 249
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/urbanairship/push/ChannelServiceDelegate;->createChannel(Landroid/content/Intent;Lcom/urbanairship/push/ChannelRegistrationPayload;)V

    goto :goto_0
.end method

.method private onUpdatePushRegistration(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 146
    sput-boolean v1, Lcom/urbanairship/push/ChannelServiceDelegate;->isPushRegistering:Z

    .line 148
    iget-object v0, p0, Lcom/urbanairship/push/ChannelServiceDelegate;->airship:Lcom/urbanairship/UAirship;

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getPlatformType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 184
    const-string v0, "Unknown platform type. Unable to register for push."

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 187
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/urbanairship/push/ChannelServiceDelegate;->isPushRegistering:Z

    if-nez v0, :cond_1

    .line 189
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/urbanairship/push/ChannelServiceDelegate;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/urbanairship/push/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.urbanairship.push.ACTION_UPDATE_CHANNEL_REGISTRATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 192
    invoke-virtual {p0}, Lcom/urbanairship/push/ChannelServiceDelegate;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 194
    :cond_1
    return-void

    .line 151
    :pswitch_0
    const-string v0, "com.urbanairship.push.EXTRA_GCM_TOKEN_REFRESH"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/urbanairship/push/ChannelServiceDelegate;->pushManager:Lcom/urbanairship/push/PushManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/PushManager;->setGcmToken(Ljava/lang/String;)V

    .line 153
    const-string v0, "com.urbanairship.push.EXTRA_GCM_TOKEN_REFRESH"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 156
    :cond_2
    invoke-static {}, Lcom/urbanairship/google/PlayServicesUtils;->isGoogleCloudMessagingDependencyAvailable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 157
    const-string v0, "GCM is unavailable. Unable to register for push notifications. If using the modular Google Play Services dependencies, make sure the application includes the com.google.android.gms:play-services-gcm dependency."

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/urbanairship/push/GCMRegistrar;->register()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    const-string v0, "GCM registration failed."

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GCM registration failed, will retry. GCM error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 169
    sput-boolean v3, Lcom/urbanairship/push/ChannelServiceDelegate;->isPushRegistering:Z

    .line 170
    invoke-virtual {p0, p1}, Lcom/urbanairship/push/ChannelServiceDelegate;->retryIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 176
    :pswitch_1
    invoke-static {}, Lcom/urbanairship/amazon/ADMUtils;->isADMSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 177
    invoke-virtual {p0}, Lcom/urbanairship/push/ChannelServiceDelegate;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/amazon/ADMUtils;->startRegistration(Landroid/content/Context;)V

    .line 178
    sput-boolean v3, Lcom/urbanairship/push/ChannelServiceDelegate;->isPushRegistering:Z

    goto :goto_0

    .line 180
    :cond_4
    const-string v0, "ADM is not supported on this device."

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sendRegistrationFinishedBroadcast(Z)V
    .locals 3

    .prologue
    .line 519
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.urbanairship.push.CHANNEL_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.urbanairship.push.EXTRA_CHANNEL_ID"

    iget-object v2, p0, Lcom/urbanairship/push/ChannelServiceDelegate;->pushManager:Lcom/urbanairship/push/PushManager;

    invoke-virtual {v2}, Lcom/urbanairship/push/PushManager;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 524
    if-nez p1, :cond_0

    .line 525
    const-string v1, "com.urbanairship.push.EXTRA_ERROR"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 528
    :cond_0
    invoke-virtual {p0}, Lcom/urbanairship/push/ChannelServiceDelegate;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/urbanairship/UAirship;->getUrbanAirshipPermission()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 529
    return-void
.end method

.method private setLastRegistrationPayload(Lcom/urbanairship/push/ChannelRegistrationPayload;)V
    .locals 4

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/urbanairship/push/ChannelServiceDelegate;->getDataStore()Lcom/urbanairship/PreferenceDataStore;

    move-result-object v0

    const-string v1, "com.urbanairship.push.LAST_REGISTRATION_PAYLOAD"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Lcom/urbanairship/json/JsonSerializable;)V

    .line 475
    invoke-virtual {p0}, Lcom/urbanairship/push/ChannelServiceDelegate;->getDataStore()Lcom/urbanairship/PreferenceDataStore;

    move-result-object v0

    const-string v1, "com.urbanairship.push.LAST_REGISTRATION_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;J)V

    .line 476
    return-void
.end method

.method private shouldUpdateRegistration(Lcom/urbanairship/push/ChannelRegistrationPayload;)Z
    .locals 6

    .prologue
    .line 366
    invoke-direct {p0}, Lcom/urbanairship/push/ChannelServiceDelegate;->getLastRegistrationPayload()Lcom/urbanairship/push/ChannelRegistrationPayload;

    move-result-object v0

    .line 367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/urbanairship/push/ChannelServiceDelegate;->getLastRegistrationTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 368
    invoke-virtual {p1, v0}, Lcom/urbanairship/push/ChannelRegistrationPayload;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x5265c00

    cmp-long v0, v2, v0

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateChannel(Landroid/content/Intent;Ljava/net/URL;Lcom/urbanairship/push/ChannelRegistrationPayload;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 261
    invoke-direct {p0, p3}, Lcom/urbanairship/push/ChannelServiceDelegate;->shouldUpdateRegistration(Lcom/urbanairship/push/ChannelRegistrationPayload;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    const-string v0, "ChannelServiceDelegate - Channel already up to date."

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 302
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/ChannelServiceDelegate;->channelClient:Lcom/urbanairship/push/ChannelAPIClient;

    invoke-virtual {v0, p2, p3}, Lcom/urbanairship/push/ChannelAPIClient;->updateChannelWithPayload(Ljava/net/URL;Lcom/urbanairship/push/ChannelRegistrationPayload;)Lcom/urbanairship/push/ChannelResponse;

    move-result-object v0

    .line 269
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/urbanairship/push/ChannelResponse;->getStatus()I

    move-result v1

    invoke-static {v1}, Lcom/urbanairship/util/UAHttpStatusUtil;->inServerErrorRange(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 271
    :cond_1
    const-string v0, "Channel registration failed, will retry."

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0, p1}, Lcom/urbanairship/push/ChannelServiceDelegate;->retryIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 277
    :cond_2
    invoke-virtual {v0}, Lcom/urbanairship/push/ChannelResponse;->getStatus()I

    move-result v1

    invoke-static {v1}, Lcom/urbanairship/util/UAHttpStatusUtil;->inSuccessRange(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Channel registration succeeded with status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/urbanairship/push/ChannelResponse;->getStatus()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 281
    invoke-direct {p0, p3}, Lcom/urbanairship/push/ChannelServiceDelegate;->setLastRegistrationPayload(Lcom/urbanairship/push/ChannelRegistrationPayload;)V

    .line 282
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/urbanairship/push/ChannelServiceDelegate;->sendRegistrationFinishedBroadcast(Z)V

    goto :goto_0

    .line 287
    :cond_3
    invoke-virtual {v0}, Lcom/urbanairship/push/ChannelResponse;->getStatus()I

    move-result v1

    const/16 v2, 0x199

    if-ne v1, v2, :cond_4

    .line 289
    iget-object v0, p0, Lcom/urbanairship/push/ChannelServiceDelegate;->pushManager:Lcom/urbanairship/push/PushManager;

    invoke-virtual {v0, v3, v3}, Lcom/urbanairship/push/PushManager;->setChannel(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/urbanairship/push/ChannelServiceDelegate;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/urbanairship/push/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.urbanairship.push.ACTION_UPDATE_CHANNEL_REGISTRATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 294
    invoke-virtual {p0}, Lcom/urbanairship/push/ChannelServiceDelegate;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 300
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Channel registration failed with status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/urbanairship/push/ChannelResponse;->getStatus()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 301
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/urbanairship/push/ChannelServiceDelegate;->sendRegistrationFinishedBroadcast(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 111
    :goto_1
    return-void

    .line 94
    :sswitch_0
    const-string v2, "com.urbanairship.push.ACTION_START_REGISTRATION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "com.urbanairship.push.ACTION_UPDATE_PUSH_REGISTRATION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "com.urbanairship.push.ACTION_ADM_REGISTRATION_FINISHED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "com.urbanairship.push.ACTION_UPDATE_CHANNEL_REGISTRATION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 96
    :pswitch_0
    invoke-direct {p0}, Lcom/urbanairship/push/ChannelServiceDelegate;->onStartRegistration()V

    goto :goto_1

    .line 100
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/urbanairship/push/ChannelServiceDelegate;->onUpdatePushRegistration(Landroid/content/Intent;)V

    goto :goto_1

    .line 104
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/urbanairship/push/ChannelServiceDelegate;->onAdmRegistrationFinished(Landroid/content/Intent;)V

    goto :goto_1

    .line 108
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/urbanairship/push/ChannelServiceDelegate;->onUpdateChannelRegistration(Landroid/content/Intent;)V

    goto :goto_1

    .line 94
    :sswitch_data_0
    .sparse-switch
        -0x3bd17948 -> :sswitch_0
        -0x35b60096 -> :sswitch_1
        0x2af863e1 -> :sswitch_2
        0x539af969 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
