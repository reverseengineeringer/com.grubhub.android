.class Lcom/urbanairship/push/IncomingPushServiceDelegate;
.super Lcom/urbanairship/BaseIntentService$Delegate;
.source "SourceFile"


# static fields
.field private static final LAST_CANONICAL_IDS_KEY:Ljava/lang/String; = "com.urbanairship.push.LAST_CANONICAL_IDS"

.field private static final MAX_CANONICAL_IDS:I = 0xa

.field private static final RICH_PUSH_REFRESH_WAIT_TIME_MS:I = 0xea60


# instance fields
.field private final airship:Lcom/urbanairship/UAirship;

.field private final notificationManager:Landroid/support/v4/app/cj;

.field private final pushManager:Lcom/urbanairship/push/PushManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;)V
    .locals 2

    .prologue
    .line 85
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-static {p1}, Landroid/support/v4/app/cj;->a(Landroid/content/Context;)Landroid/support/v4/app/cj;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/urbanairship/push/IncomingPushServiceDelegate;-><init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;Lcom/urbanairship/UAirship;Landroid/support/v4/app/cj;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;Lcom/urbanairship/UAirship;Landroid/support/v4/app/cj;)V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/urbanairship/BaseIntentService$Delegate;-><init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;)V

    .line 92
    iput-object p3, p0, Lcom/urbanairship/push/IncomingPushServiceDelegate;->airship:Lcom/urbanairship/UAirship;

    .line 93
    invoke-virtual {p3}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/IncomingPushServiceDelegate;->pushManager:Lcom/urbanairship/push/PushManager;

    .line 94
    iput-object p4, p0, Lcom/urbanairship/push/IncomingPushServiceDelegate;->notificationManager:Landroid/support/v4/app/cj;

    .line 95
    return-void
.end method

.method private createPushArrivedEvent(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 338
    invoke-static {p1}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/IncomingPushServiceDelegate;->airship:Lcom/urbanairship/UAirship;

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v0

    new-instance v1, Lcom/urbanairship/analytics/PushArrivedEvent;

    invoke-direct {v1, p1}, Lcom/urbanairship/analytics/PushArrivedEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/urbanairship/analytics/Analytics;->addEvent(Lcom/urbanairship/analytics/Event;)V

    .line 343
    return-void
.end method

.method private isUniqueCanonicalId(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 353
    invoke-static {p1}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 383
    :goto_0
    return v0

    .line 359
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/urbanairship/push/IncomingPushServiceDelegate;->getDataStore()Lcom/urbanairship/PreferenceDataStore;

    move-result-object v0

    const-string v3, "com.urbanairship.push.LAST_CANONICAL_IDS"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/json/JsonValue;->parseString(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->getList()Lcom/urbanairship/json/JsonList;
    :try_end_0
    .catch Lcom/urbanairship/json/JsonException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 364
    :goto_1
    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 367
    :goto_2
    invoke-static {p1}, Lcom/urbanairship/json/JsonValue;->wrap(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v3

    .line 370
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 371
    const/4 v0, 0x0

    goto :goto_0

    .line 360
    :catch_0
    move-exception v0

    .line 361
    const-string v3, "IncomingPushServiceDelegate - Unable to parse canonical Ids."

    invoke-static {v3, v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_1

    .line 364
    :cond_1
    invoke-virtual {v0}, Lcom/urbanairship/json/JsonList;->getList()Ljava/util/List;

    move-result-object v0

    goto :goto_2

    .line 375
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0xa

    if-le v3, v4, :cond_3

    .line 377
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0xa

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v0, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 381
    :cond_3
    invoke-virtual {p0}, Lcom/urbanairship/push/IncomingPushServiceDelegate;->getDataStore()Lcom/urbanairship/PreferenceDataStore;

    move-result-object v3

    const-string v4, "com.urbanairship.push.LAST_CANONICAL_IDS"

    invoke-static {v0, v2}, Lcom/urbanairship/json/JsonValue;->wrap(Ljava/lang/Object;Lcom/urbanairship/json/JsonValue;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 383
    goto :goto_0
.end method

.method private onAdmMessageReceived(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/urbanairship/push/IncomingPushServiceDelegate;->airship:Lcom/urbanairship/UAirship;

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getPlatformType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 152
    const-string v0, "Received intent from invalid transport acting as ADM."

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 168
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/IncomingPushServiceDelegate;->airship:Lcom/urbanairship/UAirship;

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/PushManager;->isPushAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 157
    const-string v0, "IncomingPushServiceDelegate - Received intent from ADM without registering."

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :cond_1
    const-string v0, "com.urbanairship.push.EXTRA_INTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 162
    if-nez v0, :cond_2

    .line 163
    const-string v0, "IncomingPushServiceDelegate - Received ADM message missing original intent."

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 167
    :cond_2
    new-instance v1, Lcom/urbanairship/push/PushMessage;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/urbanairship/push/PushMessage;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, v1}, Lcom/urbanairship/push/IncomingPushServiceDelegate;->processMessage(Lcom/urbanairship/push/PushMessage;)V

    goto :goto_0
.end method

.method private onGcmMessageReceived(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/urbanairship/push/IncomingPushServiceDelegate;->airship:Lcom/urbanairship/UAirship;

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getPlatformType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 116
    const-string v0, "Received intent from invalid transport acting as GCM."

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 143
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/IncomingPushServiceDelegate;->airship:Lcom/urbanairship/UAirship;

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/PushManager;->isPushAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    const-string v0, "IncomingPushServiceDelegate - Received intent from GCM without registering."

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_1
    const-string v0, "com.urbanairship.push.EXTRA_INTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 126
    if-nez v0, :cond_2

    .line 127
    const-string v0, "IncomingPushServiceDelegate - Received GCM message missing original intent."

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_2
    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/urbanairship/push/IncomingPushServiceDelegate;->airship:Lcom/urbanairship/UAirship;

    invoke-virtual {v2}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v2

    iget-object v2, v2, Lcom/urbanairship/AirshipConfigOptions;->gcmSender:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring GCM message from sender: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_3
    const-string v1, "deleted_messages"

    const-string v2, "message_type"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GCM deleted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "total_deleted"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pending messages."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_4
    new-instance v1, Lcom/urbanairship/push/PushMessage;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/urbanairship/push/PushMessage;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, v1}, Lcom/urbanairship/push/IncomingPushServiceDelegate;->processMessage(Lcom/urbanairship/push/PushMessage;)V

    goto/16 :goto_0
.end method

.method private processMessage(Lcom/urbanairship/push/PushMessage;)V
    .locals 4

    .prologue
    .line 176
    iget-object v0, p0, Lcom/urbanairship/push/IncomingPushServiceDelegate;->pushManager:Lcom/urbanairship/push/PushManager;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushManager;->isPushEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    const-string v0, "Received a push when push is disabled! Ignoring."

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 224
    :goto_0
    return-void

    .line 181
    :cond_0
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getCanonicalPushId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/urbanairship/push/IncomingPushServiceDelegate;->isUniqueCanonicalId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received a duplicate push with canonical ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getCanonicalPushId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/urbanairship/push/IncomingPushServiceDelegate;->pushManager:Lcom/urbanairship/push/PushManager;

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getSendId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/PushManager;->setLastReceivedSendId(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getSendId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/urbanairship/push/IncomingPushServiceDelegate;->createPushArrivedEvent(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    const-string v0, "Received expired push message, ignoring."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 194
    :cond_2
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->isPing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 195
    const-string v0, "IncomingPushServiceDelegate - Received UA Ping"

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 201
    const-string v1, "com.urbanairship.PUSH_MESSAGE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 202
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getActions()Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lcom/urbanairship/actions/Situation;->PUSH_RECEIVED:Lcom/urbanairship/actions/Situation;

    invoke-static {v1, v2, v3, v0}, Lcom/urbanairship/actions/ActionService;->runActions(Landroid/content/Context;Ljava/util/Map;Lcom/urbanairship/actions/Situation;Landroid/os/Bundle;)V

    .line 205
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getInAppMessage()Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_4

    .line 207
    const-string v1, "IncomingPushServiceDelegate - Received a Push with an in-app message."

    invoke-static {v1}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 208
    iget-object v1, p0, Lcom/urbanairship/push/IncomingPushServiceDelegate;->airship:Lcom/urbanairship/UAirship;

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getInAppMessageManager()Lcom/urbanairship/push/iam/InAppMessageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/push/iam/InAppMessageManager;->setPendingMessage(Lcom/urbanairship/push/iam/InAppMessage;)V

    .line 211
    :cond_4
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getRichPushMessageId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 212
    const-string v0, "IncomingPushServiceDelegate - Received a Rich Push."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 213
    invoke-direct {p0}, Lcom/urbanairship/push/IncomingPushServiceDelegate;->refreshRichPushMessages()V

    .line 216
    :cond_5
    const/4 v0, 0x0

    .line 217
    iget-object v1, p0, Lcom/urbanairship/push/IncomingPushServiceDelegate;->pushManager:Lcom/urbanairship/push/PushManager;

    invoke-virtual {v1}, Lcom/urbanairship/push/PushManager;->getUserNotificationsEnabled()Z

    move-result v1

    if-nez v1, :cond_6

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User notifications disabled. Unable to display notification for message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 223
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/urbanairship/push/IncomingPushServiceDelegate;->sendPushReceivedBroadcast(Lcom/urbanairship/push/PushMessage;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 220
    :cond_6
    iget-object v0, p0, Lcom/urbanairship/push/IncomingPushServiceDelegate;->pushManager:Lcom/urbanairship/push/PushManager;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushManager;->getNotificationFactory()Lcom/urbanairship/push/notifications/NotificationFactory;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/urbanairship/push/IncomingPushServiceDelegate;->showNotification(Lcom/urbanairship/push/PushMessage;Lcom/urbanairship/push/notifications/NotificationFactory;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1
.end method

.method private refreshRichPushMessages()V
    .locals 4

    .prologue
    .line 317
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 318
    iget-object v1, p0, Lcom/urbanairship/push/IncomingPushServiceDelegate;->airship:Lcom/urbanairship/UAirship;

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getRichPushManager()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v1

    new-instance v2, Lcom/urbanairship/push/IncomingPushServiceDelegate$1;

    invoke-direct {v2, p0, v0}, Lcom/urbanairship/push/IncomingPushServiceDelegate$1;-><init>(Lcom/urbanairship/push/IncomingPushServiceDelegate;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v1, v2}, Lcom/urbanairship/richpush/RichPushManager;->refreshMessages(Lcom/urbanairship/richpush/RichPushManager$RefreshMessagesCallback;)V

    .line 326
    const-wide/32 v2, 0xea60

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :goto_0
    return-void

    .line 327
    :catch_0
    move-exception v0

    .line 328
    const-string v0, "Interrupted while waiting for rich push messages to refresh"

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendPushReceivedBroadcast(Lcom/urbanairship/push/PushMessage;Ljava/lang/Integer;)V
    .locals 3

    .prologue
    .line 301
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.urbanairship.push.RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.urbanairship.push.EXTRA_PUSH_MESSAGE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 306
    if-eqz p2, :cond_0

    .line 307
    const-string v1, "com.urbanairship.push.NOTIFICATION_ID"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 310
    :cond_0
    invoke-virtual {p0}, Lcom/urbanairship/push/IncomingPushServiceDelegate;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/urbanairship/UAirship;->getUrbanAirshipPermission()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 311
    return-void
.end method

.method private showNotification(Lcom/urbanairship/push/PushMessage;Lcom/urbanairship/push/notifications/NotificationFactory;)Ljava/lang/Integer;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 236
    if-nez p2, :cond_0

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NotificationFactory is null. Unable to display notification for message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 290
    :goto_0
    return-object v0

    .line 242
    :cond_0
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/urbanairship/push/notifications/NotificationFactory;->getNextId(Lcom/urbanairship/push/PushMessage;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 243
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2, p1, v2}, Lcom/urbanairship/push/notifications/NotificationFactory;->createNotification(Lcom/urbanairship/push/PushMessage;I)Landroid/app/Notification;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 249
    if-eqz v2, :cond_7

    .line 250
    iget-object v3, p0, Lcom/urbanairship/push/IncomingPushServiceDelegate;->pushManager:Lcom/urbanairship/push/PushManager;

    invoke-virtual {v3}, Lcom/urbanairship/push/PushManager;->isVibrateEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/urbanairship/push/IncomingPushServiceDelegate;->pushManager:Lcom/urbanairship/push/PushManager;

    invoke-virtual {v3}, Lcom/urbanairship/push/PushManager;->isInQuietTime()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 252
    :cond_1
    iput-object v0, v2, Landroid/app/Notification;->vibrate:[J

    .line 253
    iget v3, v2, Landroid/app/Notification;->defaults:I

    and-int/lit8 v3, v3, -0x3

    iput v3, v2, Landroid/app/Notification;->defaults:I

    .line 256
    :cond_2
    iget-object v3, p0, Lcom/urbanairship/push/IncomingPushServiceDelegate;->pushManager:Lcom/urbanairship/push/PushManager;

    invoke-virtual {v3}, Lcom/urbanairship/push/PushManager;->isSoundEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/urbanairship/push/IncomingPushServiceDelegate;->pushManager:Lcom/urbanairship/push/PushManager;

    invoke-virtual {v3}, Lcom/urbanairship/push/PushManager;->isInQuietTime()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 258
    :cond_3
    iput-object v0, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 259
    iget v0, v2, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x2

    iput v0, v2, Landroid/app/Notification;->defaults:I

    .line 262
    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/urbanairship/push/IncomingPushServiceDelegate;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/urbanairship/CoreReceiver;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.urbanairship.ACTION_NOTIFICATION_OPENED_PROXY"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "com.urbanairship.push.EXTRA_PUSH_MESSAGE"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "com.urbanairship.push.NOTIFICATION_ID"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    .line 269
    iget-object v3, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_5

    .line 270
    const-string v3, "com.urbanairship.push.EXTRA_NOTIFICATION_CONTENT_INTENT"

    iget-object v4, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 273
    :cond_5
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/urbanairship/push/IncomingPushServiceDelegate;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/urbanairship/CoreReceiver;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "com.urbanairship.ACTION_NOTIFICATION_DISMISSED_PROXY"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.urbanairship.push.EXTRA_PUSH_MESSAGE"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.urbanairship.push.NOTIFICATION_ID"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v3

    .line 279
    iget-object v4, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_6

    .line 280
    const-string v4, "com.urbanairship.push.EXTRA_NOTIFICATION_DELETE_INTENT"

    iget-object v5, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 283
    :cond_6
    invoke-virtual {p0}, Lcom/urbanairship/push/IncomingPushServiceDelegate;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 284
    invoke-virtual {p0}, Lcom/urbanairship/push/IncomingPushServiceDelegate;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Posting notification "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " with ID "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/urbanairship/push/IncomingPushServiceDelegate;->notificationManager:Landroid/support/v4/app/cj;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3, v2}, Landroid/support/v4/app/cj;->a(ILandroid/app/Notification;)V

    :cond_7
    move-object v0, v1

    .line 290
    goto/16 :goto_0

    .line 244
    :catch_0
    move-exception v1

    .line 245
    const-string v2, "Unable to create and display notification."

    invoke-static {v2, v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 99
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 107
    :goto_1
    return-void

    .line 99
    :sswitch_0
    const-string v2, "com.urbanairship.push.ACTION_RECEIVE_ADM_MESSAGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "com.urbanairship.push.ACTION_RECEIVE_GCM_MESSAGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 101
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/urbanairship/push/IncomingPushServiceDelegate;->onAdmMessageReceived(Landroid/content/Intent;)V

    goto :goto_1

    .line 104
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/urbanairship/push/IncomingPushServiceDelegate;->onGcmMessageReceived(Landroid/content/Intent;)V

    goto :goto_1

    .line 99
    :sswitch_data_0
    .sparse-switch
        -0x43dae3c5 -> :sswitch_1
        0x33125cd4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
