.class public Lcom/urbanairship/preference/UAPreferenceAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CHANNEL_ID_MAX_RETRIES:I = 0x4

.field private static final CHANNEL_ID_RETRY_DELAY:I = 0x3e8


# instance fields
.field private channelIdRetryCount:I

.field private final preferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/urbanairship/preference/UAPreference$PreferenceType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceScreen;)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->preferences:Ljava/util/Map;

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->channelIdRetryCount:I

    .line 71
    invoke-direct {p0, p1}, Lcom/urbanairship/preference/UAPreferenceAdapter;->checkForUAPreferences(Landroid/preference/PreferenceGroup;)V

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/preference/UAPreferenceAdapter;Lcom/urbanairship/preference/UAPreference;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/urbanairship/preference/UAPreferenceAdapter;->trackPreference(Lcom/urbanairship/preference/UAPreference;)V

    return-void
.end method

.method static synthetic access$100(Lcom/urbanairship/preference/UAPreferenceAdapter;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->preferences:Ljava/util/Map;

    return-object v0
.end method

.method private checkForUAPreferences(Landroid/preference/PreferenceGroup;)V
    .locals 3

    .prologue
    .line 206
    if-nez p1, :cond_1

    .line 219
    :cond_0
    return-void

    .line 210
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 211
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 213
    instance-of v2, v0, Landroid/preference/PreferenceGroup;

    if-eqz v2, :cond_3

    .line 214
    check-cast v0, Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v0}, Lcom/urbanairship/preference/UAPreferenceAdapter;->checkForUAPreferences(Landroid/preference/PreferenceGroup;)V

    .line 210
    :cond_2
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 215
    :cond_3
    instance-of v2, v0, Lcom/urbanairship/preference/UAPreference;

    if-eqz v2, :cond_2

    .line 216
    check-cast v0, Lcom/urbanairship/preference/UAPreference;

    invoke-direct {p0, v0}, Lcom/urbanairship/preference/UAPreferenceAdapter;->trackPreference(Lcom/urbanairship/preference/UAPreference;)V

    goto :goto_1
.end method

.method private getInternalPreference(Lcom/urbanairship/preference/UAPreference$PreferenceType;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    .line 104
    sget-object v2, Lcom/urbanairship/preference/UAPreferenceAdapter$3;->$SwitchMap$com$urbanairship$preference$UAPreference$PreferenceType:[I

    invoke-virtual {p1}, Lcom/urbanairship/preference/UAPreference$PreferenceType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 142
    :cond_0
    :goto_0
    return-object v0

    .line 106
    :pswitch_0
    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getLocationManager()Lcom/urbanairship/location/UALocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/location/UALocationManager;->isLocationUpdatesEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 109
    :pswitch_1
    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getLocationManager()Lcom/urbanairship/location/UALocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/location/UALocationManager;->isBackgroundLocationAllowed()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 112
    :pswitch_2
    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/PushManager;->getUserNotificationsEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 115
    :pswitch_3
    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/PushManager;->isQuietTimeEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 118
    :pswitch_4
    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/push/PushManager;->getQuietTimeInterval()[Ljava/util/Date;

    move-result-object v1

    .line 119
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 122
    :pswitch_5
    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/push/PushManager;->getQuietTimeInterval()[Ljava/util/Date;

    move-result-object v1

    .line 123
    if-eqz v1, :cond_0

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 126
    :pswitch_6
    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/PushManager;->isSoundEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 129
    :pswitch_7
    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/PushManager;->isVibrateEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 132
    :pswitch_8
    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/PushManager;->getChannelId()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 135
    :pswitch_9
    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getRichPushManager()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushManager;->getRichPushUser()Lcom/urbanairship/richpush/RichPushUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushUser;->getId()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 138
    :pswitch_a
    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/analytics/Analytics;->isEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private setInternalPreference(Lcom/urbanairship/preference/UAPreference$PreferenceType;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 153
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    .line 157
    sget-object v0, Lcom/urbanairship/preference/UAPreferenceAdapter$3;->$SwitchMap$com$urbanairship$preference$UAPreference$PreferenceType:[I

    invoke-virtual {p1}, Lcom/urbanairship/preference/UAPreference$PreferenceType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 197
    :goto_0
    :pswitch_0
    return-void

    .line 159
    :pswitch_1
    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getLocationManager()Lcom/urbanairship/location/UALocationManager;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/location/UALocationManager;->setBackgroundLocationAllowed(Z)V

    goto :goto_0

    .line 163
    :pswitch_2
    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getLocationManager()Lcom/urbanairship/location/UALocationManager;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/location/UALocationManager;->setLocationUpdatesEnabled(Z)V

    goto :goto_0

    .line 166
    :pswitch_3
    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/PushManager;->setUserNotificationsEnabled(Z)V

    goto :goto_0

    .line 169
    :pswitch_4
    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/PushManager;->setQuietTimeEnabled(Z)V

    goto :goto_0

    .line 172
    :pswitch_5
    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/PushManager;->setSoundEnabled(Z)V

    goto :goto_0

    .line 175
    :pswitch_6
    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/PushManager;->setVibrateEnabled(Z)V

    goto :goto_0

    .line 178
    :pswitch_7
    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/PushManager;->getQuietTimeInterval()[Ljava/util/Date;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    .line 180
    :goto_1
    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v0, v2}, Lcom/urbanairship/push/PushManager;->setQuietTimeInterval(Ljava/util/Date;Ljava/util/Date;)V

    goto :goto_0

    .line 179
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    goto :goto_1

    .line 183
    :pswitch_8
    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/PushManager;->getQuietTimeInterval()[Ljava/util/Date;

    move-result-object v0

    .line 184
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    .line 185
    :goto_2
    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2, v0}, Lcom/urbanairship/push/PushManager;->setQuietTimeInterval(Ljava/util/Date;Ljava/util/Date;)V

    goto/16 :goto_0

    .line 184
    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    goto :goto_2

    .line 192
    :pswitch_9
    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/analytics/Analytics;->setEnabled(Z)V

    goto/16 :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method private trackPreference(Lcom/urbanairship/preference/UAPreference;)V
    .locals 4

    .prologue
    .line 229
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    .line 230
    invoke-interface {p1}, Lcom/urbanairship/preference/UAPreference;->getPreferenceType()Lcom/urbanairship/preference/UAPreference$PreferenceType;

    move-result-object v1

    .line 232
    if-nez v1, :cond_0

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Preference returned a null preference type. Ignoring preference "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    .line 270
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-direct {p0, v1}, Lcom/urbanairship/preference/UAPreferenceAdapter;->getInternalPreference(Lcom/urbanairship/preference/UAPreference$PreferenceType;)Ljava/lang/Object;

    move-result-object v2

    .line 239
    if-eqz v2, :cond_2

    .line 241
    :try_start_0
    invoke-interface {p1, v2}, Lcom/urbanairship/preference/UAPreference;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :cond_1
    check-cast p1, Landroid/preference/Preference;

    new-instance v0, Lcom/urbanairship/preference/UAPreferenceAdapter$2;

    invoke-direct {v0, p0, v1}, Lcom/urbanairship/preference/UAPreferenceAdapter$2;-><init>(Lcom/urbanairship/preference/UAPreferenceAdapter;Lcom/urbanairship/preference/UAPreference$PreferenceType;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception setting value "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Ignoring preference "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 246
    :cond_2
    sget-object v2, Lcom/urbanairship/preference/UAPreference$PreferenceType;->CHANNEL_ID:Lcom/urbanairship/preference/UAPreference$PreferenceType;

    if-ne v1, v2, :cond_1

    .line 248
    invoke-virtual {v0}, Lcom/urbanairship/push/PushManager;->isPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->channelIdRetryCount:I

    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    .line 249
    iget v0, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->channelIdRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->channelIdRetryCount:I

    .line 250
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 251
    new-instance v1, Lcom/urbanairship/preference/UAPreferenceAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/urbanairship/preference/UAPreferenceAdapter$1;-><init>(Lcom/urbanairship/preference/UAPreferenceAdapter;Lcom/urbanairship/preference/UAPreference;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public applyUrbanAirshipPreferences()V
    .locals 6

    .prologue
    .line 80
    iget-object v0, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->preferences:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/preference/UAPreference$PreferenceType;

    .line 81
    iget-object v2, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->preferences:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 82
    if-eqz v2, :cond_0

    .line 87
    :try_start_0
    invoke-direct {p0, v0, v2}, Lcom/urbanairship/preference/UAPreferenceAdapter;->setInternalPreference(Lcom/urbanairship/preference/UAPreference$PreferenceType;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v3

    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to set "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", invalid value "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 92
    :cond_1
    return-void
.end method
