.class public Lcom/urbanairship/analytics/EventService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field static final ACTION_ADD:Ljava/lang/String; = "com.urbanairship.analytics.ADD"

.field static final ACTION_DELETE_ALL:Ljava/lang/String; = "com.urbanairship.analytics.DELETE_ALL"

.field static final ACTION_SEND:Ljava/lang/String; = "com.urbanairship.analytics.SEND"

.field private static final BATCH_DELAY:J = 0x2710L

.field static final EXTRA_EVENT_DATA:Ljava/lang/String; = "EXTRA_EVENT_DATA"

.field static final EXTRA_EVENT_ID:Ljava/lang/String; = "EXTRA_EVENT_ID"

.field static final EXTRA_EVENT_SESSION_ID:Ljava/lang/String; = "EXTRA_EVENT_SESSION_ID"

.field static final EXTRA_EVENT_TIME_STAMP:Ljava/lang/String; = "EXTRA_EVENT_TIME_STAMP"

.field static final EXTRA_EVENT_TYPE:Ljava/lang/String; = "EXTRA_EVENT_TYPE"

.field private static final REGION_BATCH_DELAY:J = 0x3e8L

.field private static backoffMs:J


# instance fields
.field private final eventClient:Lcom/urbanairship/analytics/EventAPIClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 98
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/urbanairship/analytics/EventService;->backoffMs:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 103
    const-string v0, "EventService"

    invoke-direct {p0, v0}, Lcom/urbanairship/analytics/EventService;-><init>(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lcom/urbanairship/analytics/EventAPIClient;

    invoke-direct {v0}, Lcom/urbanairship/analytics/EventAPIClient;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/urbanairship/analytics/EventService;-><init>(Ljava/lang/String;Lcom/urbanairship/analytics/EventAPIClient;)V

    .line 108
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/urbanairship/analytics/EventAPIClient;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 112
    iput-object p2, p0, Lcom/urbanairship/analytics/EventService;->eventClient:Lcom/urbanairship/analytics/EventAPIClient;

    .line 113
    return-void
.end method

.method private addEventFromIntent(Landroid/content/Intent;)V
    .locals 12

    .prologue
    const-wide/16 v10, 0x2710

    .line 153
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/analytics/Analytics;->getPreferences()Lcom/urbanairship/analytics/AnalyticsPreferences;

    move-result-object v6

    .line 154
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/analytics/Analytics;->getDataManager()Lcom/urbanairship/analytics/EventDataManager;

    move-result-object v0

    .line 156
    const-string v1, "EXTRA_EVENT_TYPE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    const-string v2, "EXTRA_EVENT_ID"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 158
    const-string v2, "EXTRA_EVENT_DATA"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 159
    const-string v4, "EXTRA_EVENT_TIME_STAMP"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 160
    const-string v4, "EXTRA_EVENT_SESSION_ID"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 162
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v5, :cond_0

    if-nez v3, :cond_1

    .line 163
    :cond_0
    const-string v0, "Event service unable to add event with missing data."

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    .line 199
    :goto_0
    return-void

    .line 168
    :cond_1
    invoke-virtual {v0}, Lcom/urbanairship/analytics/EventDataManager;->getDatabaseSize()I

    move-result v7

    invoke-virtual {v6}, Lcom/urbanairship/analytics/AnalyticsPreferences;->getMaxTotalDbSize()I

    move-result v8

    if-le v7, v8, :cond_2

    .line 169
    const-string v7, "Event database size exceeded. Deleting oldest session."

    invoke-static {v7}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0}, Lcom/urbanairship/analytics/EventDataManager;->getOldestSessionId()Ljava/lang/String;

    move-result-object v7

    .line 171
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 172
    invoke-virtual {v0, v7}, Lcom/urbanairship/analytics/EventDataManager;->deleteSession(Ljava/lang/String;)Z

    .line 176
    :cond_2
    invoke-virtual/range {v0 .. v5}, Lcom/urbanairship/analytics/EventDataManager;->insertEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_3

    .line 177
    const-string v0, "EventService - Unable to insert event into database."

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 181
    :cond_3
    const-string v0, "location"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/analytics/Analytics;->isAppInForeground()Z

    move-result v0

    if-nez v0, :cond_5

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 183
    invoke-virtual {v6}, Lcom/urbanairship/analytics/AnalyticsPreferences;->getLastSendTime()J

    move-result-wide v2

    .line 184
    sub-long/2addr v0, v2

    .line 185
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v2

    iget-wide v2, v2, Lcom/urbanairship/AirshipConfigOptions;->backgroundReportingIntervalMS:J

    .line 186
    sub-long v0, v2, v0

    .line 188
    invoke-direct {p0}, Lcom/urbanairship/analytics/EventService;->getNextSendDelay()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_4

    cmp-long v2, v0, v10

    if-lez v2, :cond_4

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LocationEvent was inserted, but may not be updated until "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms have passed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 190
    invoke-direct {p0, v0, v1}, Lcom/urbanairship/analytics/EventService;->scheduleEventUpload(J)V

    goto/16 :goto_0

    .line 192
    :cond_4
    invoke-direct {p0}, Lcom/urbanairship/analytics/EventService;->getNextSendDelay()J

    move-result-wide v0

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/urbanairship/analytics/EventService;->scheduleEventUpload(J)V

    goto/16 :goto_0

    .line 194
    :cond_5
    const-string v0, "region_event"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 195
    const-wide/16 v0, 0x3e8

    invoke-direct {p0, v0, v1}, Lcom/urbanairship/analytics/EventService;->scheduleEventUpload(J)V

    goto/16 :goto_0

    .line 197
    :cond_6
    invoke-direct {p0}, Lcom/urbanairship/analytics/EventService;->getNextSendDelay()J

    move-result-wide v0

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/urbanairship/analytics/EventService;->scheduleEventUpload(J)V

    goto/16 :goto_0
.end method

.method private getNextSendDelay()J
    .locals 4

    .prologue
    .line 261
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/analytics/Analytics;->getPreferences()Lcom/urbanairship/analytics/AnalyticsPreferences;

    move-result-object v0

    .line 262
    invoke-virtual {v0}, Lcom/urbanairship/analytics/AnalyticsPreferences;->getLastSendTime()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/urbanairship/analytics/AnalyticsPreferences;->getMinBatchInterval()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, v2

    sget-wide v2, Lcom/urbanairship/analytics/EventService;->backoffMs:J

    add-long/2addr v0, v2

    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private scheduleEventUpload(J)V
    .locals 13

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long v4, v0, p1

    .line 274
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/analytics/Analytics;->getPreferences()Lcom/urbanairship/analytics/AnalyticsPreferences;

    move-result-object v6

    .line 275
    invoke-virtual {p0}, Lcom/urbanairship/analytics/EventService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 278
    new-instance v7, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/urbanairship/analytics/EventService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v8, Lcom/urbanairship/analytics/EventService;

    invoke-direct {v7, v1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 279
    const-string v1, "com.urbanairship.analytics.SEND"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    invoke-virtual {v6}, Lcom/urbanairship/analytics/AnalyticsPreferences;->getScheduledSendTime()J

    move-result-wide v8

    .line 284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v1, v8, v10

    if-ltz v1, :cond_0

    cmp-long v1, v8, v4

    if-lez v1, :cond_2

    :cond_0
    move v1, v3

    .line 287
    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/urbanairship/analytics/EventService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v8, 0x20000000

    invoke-static {v1, v2, v7, v8}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    if-nez v1, :cond_3

    .line 288
    :cond_1
    invoke-virtual {p0}, Lcom/urbanairship/analytics/EventService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v8, 0x8000000

    invoke-static {v1, v2, v7, v8}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 291
    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 292
    invoke-virtual {v6, v4, v5}, Lcom/urbanairship/analytics/AnalyticsPreferences;->setScheduledSendTime(J)V

    .line 296
    :goto_1
    return-void

    :cond_2
    move v1, v2

    .line 284
    goto :goto_0

    .line 294
    :cond_3
    const-string v0, "EventService - Alarm already scheduled for an earlier time."

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private uploadEvents()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 205
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/analytics/Analytics;->getPreferences()Lcom/urbanairship/analytics/AnalyticsPreferences;

    move-result-object v1

    .line 206
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/analytics/Analytics;->getDataManager()Lcom/urbanairship/analytics/EventDataManager;

    move-result-object v2

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/urbanairship/analytics/AnalyticsPreferences;->setLastSendTime(J)V

    .line 210
    invoke-virtual {v2}, Lcom/urbanairship/analytics/EventDataManager;->getEventCount()I

    move-result v3

    .line 212
    if-gtz v3, :cond_1

    .line 213
    const-string v0, "EventService - No events to send. Ending analytics upload."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    invoke-virtual {v2}, Lcom/urbanairship/analytics/EventDataManager;->getDatabaseSize()I

    move-result v0

    div-int/2addr v0, v3

    .line 220
    invoke-virtual {v1}, Lcom/urbanairship/analytics/AnalyticsPreferences;->getMaxBatchSize()I

    move-result v4

    div-int v0, v4, v0

    invoke-virtual {v2, v0}, Lcom/urbanairship/analytics/EventDataManager;->getEvents(I)Ljava/util/Map;

    move-result-object v4

    .line 222
    iget-object v0, p0, Lcom/urbanairship/analytics/EventService;->eventClient:Lcom/urbanairship/analytics/EventAPIClient;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/urbanairship/analytics/EventAPIClient;->sendEvents(Ljava/util/Collection;)Lcom/urbanairship/analytics/EventResponse;

    move-result-object v5

    .line 224
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/urbanairship/analytics/EventResponse;->getStatus()I

    move-result v0

    const/16 v6, 0xc8

    if-ne v0, v6, :cond_4

    const/4 v0, 0x1

    .line 226
    :goto_1
    if-eqz v0, :cond_5

    .line 227
    const-string v6, "Analytic events uploaded successfully."

    invoke-static {v6}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 228
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/urbanairship/analytics/EventDataManager;->deleteEvents(Ljava/util/Set;)Z

    .line 229
    sput-wide v8, Lcom/urbanairship/analytics/EventService;->backoffMs:J

    .line 242
    :goto_2
    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v0

    sub-int v0, v3, v0

    if-lez v0, :cond_3

    .line 243
    :cond_2
    const-string v0, "EventService - Scheduling next event batch upload."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 244
    invoke-direct {p0}, Lcom/urbanairship/analytics/EventService;->getNextSendDelay()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/urbanairship/analytics/EventService;->scheduleEventUpload(J)V

    .line 247
    :cond_3
    if-eqz v5, :cond_0

    .line 248
    invoke-virtual {v5}, Lcom/urbanairship/analytics/EventResponse;->getMaxTotalSize()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/urbanairship/analytics/AnalyticsPreferences;->setMaxTotalDbSize(I)V

    .line 249
    invoke-virtual {v5}, Lcom/urbanairship/analytics/EventResponse;->getMaxBatchSize()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/urbanairship/analytics/AnalyticsPreferences;->setMaxBatchSize(I)V

    .line 250
    invoke-virtual {v5}, Lcom/urbanairship/analytics/EventResponse;->getMaxWait()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/urbanairship/analytics/AnalyticsPreferences;->setMaxWait(I)V

    .line 251
    invoke-virtual {v5}, Lcom/urbanairship/analytics/EventResponse;->getMinBatchInterval()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/urbanairship/analytics/AnalyticsPreferences;->setMinBatchInterval(I)V

    goto :goto_0

    .line 224
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 232
    :cond_5
    sget-wide v6, Lcom/urbanairship/analytics/EventService;->backoffMs:J

    cmp-long v2, v6, v8

    if-nez v2, :cond_6

    .line 233
    invoke-virtual {v1}, Lcom/urbanairship/analytics/AnalyticsPreferences;->getMinBatchInterval()I

    move-result v2

    int-to-long v6, v2

    sput-wide v6, Lcom/urbanairship/analytics/EventService;->backoffMs:J

    .line 238
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Analytic events failed to send. Will retry in "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v6, Lcom/urbanairship/analytics/EventService;->backoffMs:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "ms."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 235
    :cond_6
    sget-wide v6, Lcom/urbanairship/analytics/EventService;->backoffMs:J

    const-wide/16 v8, 0x2

    mul-long/2addr v6, v8

    invoke-virtual {v1}, Lcom/urbanairship/analytics/AnalyticsPreferences;->getMaxWait()I

    move-result v2

    int-to-long v8, v2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    sput-wide v6, Lcom/urbanairship/analytics/EventService;->backoffMs:J

    goto :goto_3
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 118
    invoke-virtual {p0}, Lcom/urbanairship/analytics/EventService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Autopilot;->automaticTakeOff(Landroid/content/Context;)V

    .line 119
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 123
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EventService - Received intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EventService - Unrecognized intent action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :sswitch_0
    const-string v2, "com.urbanairship.analytics.DELETE_ALL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v2, "com.urbanairship.analytics.ADD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v2, "com.urbanairship.analytics.SEND"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    .line 131
    :pswitch_0
    const-string v0, "Deleting all analytic events."

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 132
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/analytics/Analytics;->getDataManager()Lcom/urbanairship/analytics/EventDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/analytics/EventDataManager;->deleteAllEvents()V

    goto :goto_0

    .line 135
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/urbanairship/analytics/EventService;->addEventFromIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 138
    :pswitch_2
    invoke-direct {p0}, Lcom/urbanairship/analytics/EventService;->uploadEvents()V

    goto :goto_0

    .line 129
    :sswitch_data_0
    .sparse-switch
        -0x5b20e7d4 -> :sswitch_1
        -0x8f3dec3 -> :sswitch_2
        0x6eb156e2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
