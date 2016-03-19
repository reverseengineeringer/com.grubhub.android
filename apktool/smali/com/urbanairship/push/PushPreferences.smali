.class Lcom/urbanairship/push/PushPreferences;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ADM_REGISTRATION_ID_KEY:Ljava/lang/String; = "com.urbanairship.push.ADM_REGISTRATION_ID_KEY"

.field private static final ALIAS_KEY:Ljava/lang/String; = "com.urbanairship.push.ALIAS"

.field private static final APID_KEY:Ljava/lang/String; = "com.urbanairship.push.APID"

.field private static final APP_VERSION_KEY:Ljava/lang/String; = "com.urbanairship.push.APP_VERSION"

.field private static final CHANNEL_ID_KEY:Ljava/lang/String; = "com.urbanairship.push.CHANNEL_ID"

.field private static final CHANNEL_ID_PREFERENCE_KEY:Ljava/lang/String; = "com.urbanairship.preferences.CHANNEL_ID"

.field private static final CHANNEL_LOCATION_KEY:Ljava/lang/String; = "com.urbanairship.push.CHANNEL_LOCATION"

.field private static final CHANNEL_LOCATION_PREFERENCE_KEY:Ljava/lang/String; = "com.urbanairship.preferences.CHANNEL_LOCATION"

.field private static final DEVICE_ID_KEY:Ljava/lang/String; = "com.urbanairship.push.DEVICE_ID"

.field private static final GCM_INSTANCE_ID_TOKEN_KEY:Ljava/lang/String; = "com.urbanairship.push.GCM_INSTANCE_ID_TOKEN_KEY"

.field private static final GCM_REGISTRATION_ID_KEY:Ljava/lang/String; = "com.urbanairship.push.GCM_REGISTRATION_ID_KEY"

.field private static final KEY_PREFIX:Ljava/lang/String; = "com.urbanairship.push"

.field private static final LAST_RECEIVED_SEND_ID:Ljava/lang/String; = "com.urbanairship.push.LAST_RECEIVED_SEND_ID"

.field private static final PUSH_ENABLED_KEY:Ljava/lang/String; = "com.urbanairship.push.PUSH_ENABLED"

.field private static final PUSH_ENABLED_SETTINGS_MIGRATED_KEY:Ljava/lang/String; = "com.urbanairship.push.PUSH_ENABLED_SETTINGS_MIGRATED"

.field private static final REGISTERED_GCM_SENDER_IDS:Ljava/lang/String; = "com.urbanairship.push.REGISTERED_GCM_SENDER_IDS"

.field private static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "com.urbanairship.preferences"

.field private static final SOUND_ENABLED_KEY:Ljava/lang/String; = "com.urbanairship.push.SOUND_ENABLED"

.field private static final TAGS_KEY:Ljava/lang/String; = "com.urbanairship.push.TAGS"

.field private static final USER_NOTIFICATIONS_ENABLED_KEY:Ljava/lang/String; = "com.urbanairship.push.USER_NOTIFICATIONS_ENABLED"

.field private static final VIBRATE_ENABLED_KEY:Ljava/lang/String; = "com.urbanairship.push.VIBRATE_ENABLED"


# instance fields
.field private final preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;


# direct methods
.method public constructor <init>(Lcom/urbanairship/PreferenceDataStore;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    .line 97
    return-void
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 586
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 587
    const-string v1, "com.urbanairship.preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method getAdmId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 458
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.ADM_REGISTRATION_ID_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getAlias()Ljava/lang/String;
    .locals 3

    .prologue
    .line 362
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.ALIAS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getApid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 577
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.APID"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getAppVersionCode()I
    .locals 3

    .prologue
    .line 485
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.APP_VERSION"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getChannelId()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 544
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.CHANNEL_ID"

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    invoke-direct {p0}, Lcom/urbanairship/push/PushPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "com.urbanairship.preferences.CHANNEL_ID"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 546
    iget-object v1, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v2, "com.urbanairship.push.CHANNEL_ID"

    invoke-virtual {v1, v2, v0}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.CHANNEL_ID"

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getChannelLocation()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 512
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.CHANNEL_LOCATION"

    invoke-virtual {v0, v1, v4}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 513
    invoke-static {v0}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.CHANNEL_LOCATION"

    invoke-direct {p0}, Lcom/urbanairship/push/PushPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "com.urbanairship.preferences.CHANNEL_LOCATION"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.CHANNEL_LOCATION"

    invoke-virtual {v0, v1, v4}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 503
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.DEVICE_ID"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getGcmId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 423
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.GCM_REGISTRATION_ID_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getGcmToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 440
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.GCM_INSTANCE_ID_TOKEN_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLastReceivedSendId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 605
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.LAST_RECEIVED_SEND_ID"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPushEnabledSettingsMigrated()Z
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.PUSH_ENABLED_SETTINGS_MIGRATED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method getQuietTimeInterval()[Ljava/util/Date;
    .locals 10

    .prologue
    const/16 v9, 0xc

    const/16 v8, 0xb

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 299
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.QuietTime.START_HOUR"

    invoke-virtual {v0, v1, v5}, Lcom/urbanairship/PreferenceDataStore;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 300
    iget-object v1, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v2, "com.urbanairship.push.QuietTime.START_MINUTE"

    invoke-virtual {v1, v2, v5}, Lcom/urbanairship/PreferenceDataStore;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 301
    iget-object v2, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v3, "com.urbanairship.push.QuietTime.END_HOUR"

    invoke-virtual {v2, v3, v5}, Lcom/urbanairship/PreferenceDataStore;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 302
    iget-object v3, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v4, "com.urbanairship.push.QuietTime.END_MINUTE"

    invoke-virtual {v3, v4, v5}, Lcom/urbanairship/PreferenceDataStore;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 304
    if-eq v0, v5, :cond_0

    if-eq v1, v5, :cond_0

    if-eq v2, v5, :cond_0

    if-ne v3, v5, :cond_1

    .line 306
    :cond_0
    const/4 v0, 0x0

    .line 330
    :goto_0
    return-object v0

    .line 310
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 311
    invoke-virtual {v4, v8, v0}, Ljava/util/Calendar;->set(II)V

    .line 312
    invoke-virtual {v4, v9, v1}, Ljava/util/Calendar;->set(II)V

    .line 313
    const/16 v1, 0xd

    invoke-virtual {v4, v1, v6}, Ljava/util/Calendar;->set(II)V

    .line 314
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 317
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 318
    invoke-virtual {v4, v8, v2}, Ljava/util/Calendar;->set(II)V

    .line 319
    invoke-virtual {v4, v9, v3}, Ljava/util/Calendar;->set(II)V

    .line 320
    const/16 v3, 0xd

    invoke-virtual {v4, v3, v6}, Ljava/util/Calendar;->set(II)V

    .line 325
    if-ge v2, v0, :cond_2

    .line 326
    const/4 v0, 0x5

    invoke-virtual {v4, v0, v7}, Ljava/util/Calendar;->add(II)V

    .line 329
    :cond_2
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 330
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Date;

    aput-object v1, v0, v6

    aput-object v2, v0, v7

    goto :goto_0
.end method

.method getRegisteredGcmSenderIds()Ljava/util/Set;
    .locals 4
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
    .line 623
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 624
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v2, "com.urbanairship.push.REGISTERED_GCM_SENDER_IDS"

    invoke-virtual {v0, v2}, Lcom/urbanairship/PreferenceDataStore;->getJsonValue(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    .line 626
    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->isJsonList()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 627
    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->getList()Lcom/urbanairship/json/JsonList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/json/JsonValue;

    .line 628
    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->isString()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 629
    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 634
    :cond_1
    return-object v1
.end method

.method getTags()Ljava/util/Set;
    .locals 4
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
    .line 385
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 387
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v2, "com.urbanairship.push.TAGS"

    invoke-virtual {v0, v2}, Lcom/urbanairship/PreferenceDataStore;->getJsonValue(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    .line 389
    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->isJsonList()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 390
    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->getList()Lcom/urbanairship/json/JsonList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/json/JsonValue;

    .line 391
    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->isString()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 392
    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 397
    :cond_1
    return-object v1
.end method

.method getUserNotificationsEnabled()Z
    .locals 3

    .prologue
    .line 172
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.USER_NOTIFICATIONS_ENABLED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isInQuietTime()Z
    .locals 11

    .prologue
    const/16 v10, 0xb

    const/4 v9, 0x6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v8, -0x1

    .line 245
    invoke-virtual {p0}, Lcom/urbanairship/push/PushPreferences;->isQuietTimeEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 289
    :cond_0
    :goto_0
    return v1

    .line 249
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 251
    iget-object v3, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v4, "com.urbanairship.push.QuietTime.START_HOUR"

    invoke-virtual {v3, v4, v8}, Lcom/urbanairship/PreferenceDataStore;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 252
    iget-object v4, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v5, "com.urbanairship.push.QuietTime.START_MINUTE"

    invoke-virtual {v4, v5, v8}, Lcom/urbanairship/PreferenceDataStore;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 253
    iget-object v5, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v6, "com.urbanairship.push.QuietTime.END_HOUR"

    invoke-virtual {v5, v6, v8}, Lcom/urbanairship/PreferenceDataStore;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 254
    iget-object v6, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v7, "com.urbanairship.push.QuietTime.END_MINUTE"

    invoke-virtual {v6, v7, v8}, Lcom/urbanairship/PreferenceDataStore;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 256
    if-eq v8, v3, :cond_0

    if-eq v8, v4, :cond_0

    if-eq v8, v5, :cond_0

    if-eq v8, v6, :cond_0

    .line 265
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 266
    invoke-virtual {v7, v10, v3}, Ljava/util/Calendar;->set(II)V

    .line 267
    const/16 v3, 0xc

    invoke-virtual {v7, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 268
    const/16 v3, 0xd

    invoke-virtual {v7, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 270
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 271
    invoke-virtual {v3, v10, v5}, Ljava/util/Calendar;->set(II)V

    .line 272
    const/16 v4, 0xc

    invoke-virtual {v3, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 273
    const/16 v4, 0xd

    invoke-virtual {v3, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 278
    invoke-virtual {v7, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 279
    invoke-virtual {v7, v9, v8}, Ljava/util/Calendar;->add(II)V

    .line 285
    :cond_2
    invoke-virtual {v3, v7}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 286
    invoke-virtual {v3, v9, v0}, Ljava/util/Calendar;->add(II)V

    .line 289
    :cond_3
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method isPushEnabled()Z
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.PUSH_ENABLED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isQuietTimeEnabled()Z
    .locals 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.QuietTime.ENABLED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isSoundEnabled()Z
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.SOUND_ENABLED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isVibrateEnabled()Z
    .locals 3

    .prologue
    .line 208
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.VIBRATE_ENABLED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method migratePushEnabledSettings()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 105
    invoke-virtual {p0}, Lcom/urbanairship/push/PushPreferences;->getPushEnabledSettingsMigrated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 109
    :cond_0
    const-string v0, "Migrating push enabled preferences"

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.PUSH_ENABLED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting user notifications enabled to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/urbanairship/push/PushPreferences;->setUserNotificationsEnabled(Z)V

    .line 118
    if-nez v0, :cond_1

    .line 119
    const-string v0, "Push is now enabled. You can continue to toggle the opt-in state by enabling or disabling user notifications"

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 124
    :cond_1
    invoke-virtual {p0, v3}, Lcom/urbanairship/push/PushPreferences;->setPushEnabled(Z)V

    .line 126
    invoke-virtual {p0, v3}, Lcom/urbanairship/push/PushPreferences;->setPushEnabledSettingsMigrated(Z)V

    goto :goto_0
.end method

.method setAdmId(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.ADM_REGISTRATION_ID_KEY"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    return-void
.end method

.method setAlias(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.ALIAS"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    return-void
.end method

.method setAppVersionCode(I)V
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.APP_VERSION"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;I)V

    .line 477
    return-void
.end method

.method setChannelId(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 560
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.CHANNEL_ID"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    invoke-direct {p0}, Lcom/urbanairship/push/PushPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.urbanairship.preferences.CHANNEL_ID"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 564
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 565
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 569
    :goto_0
    return-void

    .line 567
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method setChannelLocation(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 526
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.CHANNEL_LOCATION"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    invoke-direct {p0}, Lcom/urbanairship/push/PushPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.urbanairship.preferences.CHANNEL_LOCATION"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 531
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 532
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 536
    :goto_0
    return-void

    .line 534
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method setDeviceId(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.DEVICE_ID"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    return-void
.end method

.method setGcmId(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 449
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.GCM_REGISTRATION_ID_KEY"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    return-void
.end method

.method setGcmToken(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 432
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.GCM_INSTANCE_ID_TOKEN_KEY"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    return-void
.end method

.method setLastReceivedSendId(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 596
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.LAST_RECEIVED_SEND_ID"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    return-void
.end method

.method setPushEnabled(Z)V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.PUSH_ENABLED"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Z)V

    .line 164
    return-void
.end method

.method setPushEnabledSettingsMigrated(Z)V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.PUSH_ENABLED_SETTINGS_MIGRATED"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Z)V

    .line 146
    return-void
.end method

.method setQuietTimeEnabled(Z)V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.QuietTime.ENABLED"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Z)V

    .line 236
    return-void
.end method

.method setQuietTimeInterval(Ljava/util/Date;Ljava/util/Date;)V
    .locals 6

    .prologue
    const/16 v4, 0xc

    const/16 v3, 0xb

    .line 340
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 341
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 342
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 343
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 345
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 346
    invoke-virtual {v2, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 347
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 348
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 350
    iget-object v4, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v5, "com.urbanairship.push.QuietTime.START_HOUR"

    invoke-virtual {v4, v5, v1}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;I)V

    .line 351
    iget-object v1, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v4, "com.urbanairship.push.QuietTime.START_MINUTE"

    invoke-virtual {v1, v4, v0}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;I)V

    .line 352
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.QuietTime.END_HOUR"

    invoke-virtual {v0, v1, v3}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;I)V

    .line 353
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.QuietTime.END_MINUTE"

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;I)V

    .line 354
    return-void
.end method

.method setRegisteredGcmSenderIds(Ljava/util/Set;)V
    .locals 3
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
    .line 614
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.REGISTERED_GCM_SENDER_IDS"

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/urbanairship/json/JsonValue;->wrap(Ljava/lang/Object;Lcom/urbanairship/json/JsonValue;)Lcom/urbanairship/json/JsonValue;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Lcom/urbanairship/json/JsonValue;)V

    .line 615
    return-void
.end method

.method setSoundEnabled(Z)V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.SOUND_ENABLED"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Z)V

    .line 200
    return-void
.end method

.method setTags(Ljava/util/Set;)V
    .locals 3
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
    .line 410
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.TAGS"

    invoke-virtual {v0, v1}, Lcom/urbanairship/PreferenceDataStore;->remove(Ljava/lang/String;)V

    .line 415
    :goto_0
    return-void

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.TAGS"

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/urbanairship/json/JsonValue;->wrap(Ljava/lang/Object;Lcom/urbanairship/json/JsonValue;)Lcom/urbanairship/json/JsonValue;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Lcom/urbanairship/json/JsonValue;)V

    goto :goto_0
.end method

.method setUserNotificationsEnabled(Z)V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.USER_NOTIFICATIONS_ENABLED"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Z)V

    .line 182
    return-void
.end method

.method setVibrateEnabled(Z)V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.VIBRATE_ENABLED"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Z)V

    .line 218
    return-void
.end method
