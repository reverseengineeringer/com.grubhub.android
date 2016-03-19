.class public Lcom/urbanairship/location/LocationService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field static final ACTION_CHECK_LOCATION_UPDATES:Ljava/lang/String; = "com.urbanairship.location.ACTION_CHECK_LOCATION_UPDATES"

.field static final ACTION_LOCATION_UPDATE:Ljava/lang/String; = "com.urbanairship.location.ACTION_LOCATION_UPDATE"

.field static final EXTRA_LOCATION_REQUEST_OPTIONS:Ljava/lang/String; = "com.urbanairship.location.EXTRA_LOCATION_REQUEST_OPTIONS"

.field static final EXTRA_RESULT_RECEIVER:Ljava/lang/String; = "com.urbanairship.location.EXTRA_RESULT_RECEIVER"

.field static final MSG_CANCEL_SINGLE_LOCATION_REQUEST:I = 0x6

.field private static final MSG_HANDLE_INTENT:I = 0x7

.field static final MSG_NEW_LOCATION_UPDATE:I = 0x3

.field static final MSG_REQUEST_SINGLE_LOCATION:I = 0x5

.field static final MSG_SINGLE_REQUEST_RESULT:I = 0x4

.field static final MSG_SUBSCRIBE_UPDATES:I = 0x1

.field static final MSG_UNSUBSCRIBE_UPDATES:I = 0x2

.field static final RESULT_LOCATION_UPDATES_STARTED:I = 0x1

.field static areUpdatesStopped:Z

.field static lastUpdateOptions:Lcom/urbanairship/location/LocationRequestOptions;


# instance fields
.field handler:Lcom/urbanairship/location/LocationService$IncomingHandler;

.field locationProvider:Lcom/urbanairship/location/UALocationProvider;

.field looper:Landroid/os/Looper;

.field private messenger:Landroid/os/Messenger;

.field private final pendingResultMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/Messenger;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/urbanairship/PendingResult",
            "<",
            "Landroid/location/Location;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final subscribedClients:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    sput-boolean v0, Lcom/urbanairship/location/LocationService;->areUpdatesStopped:Z

    .line 162
    const/4 v0, 0x0

    sput-object v0, Lcom/urbanairship/location/LocationService;->lastUpdateOptions:Lcom/urbanairship/location/LocationRequestOptions;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 139
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/location/LocationService;->subscribedClients:Ljava/util/Set;

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/location/LocationService;->pendingResultMap:Ljava/util/HashMap;

    .line 523
    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/location/LocationService;Landroid/os/Messenger;IILjava/lang/Object;)Z
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/urbanairship/location/LocationService;->sendClientMessage(Landroid/os/Messenger;IILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/urbanairship/location/LocationService;Landroid/os/Messenger;I)Lcom/urbanairship/PendingResult;
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/urbanairship/location/LocationService;->removePendingResult(Landroid/os/Messenger;I)Lcom/urbanairship/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/urbanairship/location/LocationService;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/urbanairship/location/LocationService;->onUnsubscribeUpdates(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$300(Lcom/urbanairship/location/LocationService;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/urbanairship/location/LocationService;->onSubscribeUpdates(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/urbanairship/location/LocationService;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/urbanairship/location/LocationService;->onRequestSingleUpdate(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$500(Lcom/urbanairship/location/LocationService;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/urbanairship/location/LocationService;->onCancelSingleUpdate(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$600(Lcom/urbanairship/location/LocationService;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/urbanairship/location/LocationService;->onHandleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private addPendingResult(Landroid/os/Messenger;ILcom/urbanairship/PendingResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Messenger;",
            "I",
            "Lcom/urbanairship/PendingResult",
            "<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 428
    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->pendingResultMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 429
    if-eqz p1, :cond_1

    if-lez p2, :cond_1

    .line 430
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->pendingResultMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->pendingResultMap:Ljava/util/HashMap;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->pendingResultMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 435
    :cond_1
    monitor-exit v1

    .line 436
    return-void

    .line 435
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private createLocationUpdateIntent(Lcom/urbanairship/location/LocationRequestOptions;)Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 498
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/urbanairship/location/LocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/urbanairship/location/LocationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.urbanairship.location.ACTION_LOCATION_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 501
    if-eqz p1, :cond_0

    .line 502
    const-string v1, "com.urbanairship.location.EXTRA_LOCATION_REQUEST_OPTIONS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 505
    :cond_0
    invoke-virtual {p0}, Lcom/urbanairship/location/LocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private isContinuousLocationUpdatesAllowed()Z
    .locals 3

    .prologue
    .line 515
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getLocationManager()Lcom/urbanairship/location/UALocationManager;

    move-result-object v0

    .line 516
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v1

    .line 517
    invoke-virtual {v0}, Lcom/urbanairship/location/UALocationManager;->isLocationUpdatesEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/urbanairship/location/UALocationManager;->isBackgroundLocationAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/urbanairship/analytics/Analytics;->isAppInForeground()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCancelSingleUpdate(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 303
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 304
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 306
    invoke-direct {p0, v1, v0}, Lcom/urbanairship/location/LocationService;->removePendingResult(Landroid/os/Messenger;I)Lcom/urbanairship/PendingResult;

    move-result-object v2

    .line 307
    if-eqz v2, :cond_0

    .line 308
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LocationService - Canceled single request for client: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ID: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 309
    invoke-interface {v2}, Lcom/urbanairship/PendingResult;->cancel()V

    .line 311
    :cond_0
    return-void
.end method

.method private onCheckLocationUpdates(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 383
    .line 384
    invoke-direct {p0}, Lcom/urbanairship/location/LocationService;->isContinuousLocationUpdatesAllowed()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 387
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/UAirship;->getLocationManager()Lcom/urbanairship/location/UALocationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/location/UALocationManager;->getLocationRequestOptions()Lcom/urbanairship/location/LocationRequestOptions;

    move-result-object v2

    .line 393
    sget-object v3, Lcom/urbanairship/location/LocationService;->lastUpdateOptions:Lcom/urbanairship/location/LocationRequestOptions;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/urbanairship/location/LocationService;->lastUpdateOptions:Lcom/urbanairship/location/LocationRequestOptions;

    invoke-virtual {v3, v2}, Lcom/urbanairship/location/LocationRequestOptions;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 394
    :cond_0
    const-string v3, "LocationService - Starting updates."

    invoke-static {v3}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 396
    sput-object v2, Lcom/urbanairship/location/LocationService;->lastUpdateOptions:Lcom/urbanairship/location/LocationRequestOptions;

    .line 397
    sput-boolean v1, Lcom/urbanairship/location/LocationService;->areUpdatesStopped:Z

    .line 399
    invoke-direct {p0, v2}, Lcom/urbanairship/location/LocationService;->createLocationUpdateIntent(Lcom/urbanairship/location/LocationRequestOptions;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 401
    iget-object v3, p0, Lcom/urbanairship/location/LocationService;->locationProvider:Lcom/urbanairship/location/UALocationProvider;

    invoke-virtual {v3}, Lcom/urbanairship/location/UALocationProvider;->connect()V

    .line 402
    iget-object v3, p0, Lcom/urbanairship/location/LocationService;->locationProvider:Lcom/urbanairship/location/UALocationProvider;

    invoke-virtual {v3, v1}, Lcom/urbanairship/location/UALocationProvider;->cancelRequests(Landroid/app/PendingIntent;)V

    .line 404
    iget-object v3, p0, Lcom/urbanairship/location/LocationService;->locationProvider:Lcom/urbanairship/location/UALocationProvider;

    invoke-virtual {v3, v2, v1}, Lcom/urbanairship/location/UALocationProvider;->requestLocationUpdates(Lcom/urbanairship/location/LocationRequestOptions;Landroid/app/PendingIntent;)V

    :cond_1
    move v1, v0

    .line 414
    :cond_2
    :goto_0
    const-string v0, "com.urbanairship.location.EXTRA_RESULT_RECEIVER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    .line 415
    if-eqz v0, :cond_3

    .line 416
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 418
    :cond_3
    return-void

    .line 407
    :cond_4
    sget-boolean v2, Lcom/urbanairship/location/LocationService;->areUpdatesStopped:Z

    if-nez v2, :cond_2

    .line 408
    const-string v2, "LocationService - Stopping updates."

    invoke-static {v2}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 409
    iget-object v2, p0, Lcom/urbanairship/location/LocationService;->locationProvider:Lcom/urbanairship/location/UALocationProvider;

    invoke-direct {p0, v4}, Lcom/urbanairship/location/LocationService;->createLocationUpdateIntent(Lcom/urbanairship/location/LocationRequestOptions;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/urbanairship/location/UALocationProvider;->cancelRequests(Landroid/app/PendingIntent;)V

    .line 410
    sput-object v4, Lcom/urbanairship/location/LocationService;->lastUpdateOptions:Lcom/urbanairship/location/LocationRequestOptions;

    .line 411
    sput-boolean v0, Lcom/urbanairship/location/LocationService;->areUpdatesStopped:Z

    goto :goto_0
.end method

.method private onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 209
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationService - Received intent with action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 217
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/urbanairship/location/LocationService;->onCheckLocationUpdates(Landroid/content/Intent;)V

    goto :goto_0

    .line 215
    :sswitch_0
    const-string v2, "com.urbanairship.location.ACTION_CHECK_LOCATION_UPDATES"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v2, "com.urbanairship.location.ACTION_LOCATION_UPDATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    .line 220
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/urbanairship/location/LocationService;->onLocationUpdate(Landroid/content/Intent;)V

    goto :goto_0

    .line 215
    nop

    :sswitch_data_0
    .sparse-switch
        -0x355d426c -> :sswitch_0
        0x21f7aa36 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onLocationUpdate(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 319
    invoke-direct {p0}, Lcom/urbanairship/location/LocationService;->isContinuousLocationUpdatesAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/urbanairship/location/LocationService;->areUpdatesStopped:Z

    if-eqz v0, :cond_1

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    const-string v0, "com.urbanairship.location.EXTRA_LOCATION_REQUEST_OPTIONS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/location/LocationRequestOptions;

    .line 333
    sget-object v1, Lcom/urbanairship/location/LocationService;->lastUpdateOptions:Lcom/urbanairship/location/LocationRequestOptions;

    if-nez v1, :cond_2

    .line 334
    sput-object v0, Lcom/urbanairship/location/LocationService;->lastUpdateOptions:Lcom/urbanairship/location/LocationRequestOptions;

    .line 342
    :cond_2
    const-string v1, "providerEnabled"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 343
    const-string v0, "LocationService - Restarting location updates. One of the location providers was enabled or disabled."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 346
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getLocationManager()Lcom/urbanairship/location/UALocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/location/UALocationManager;->getLocationRequestOptions()Lcom/urbanairship/location/LocationRequestOptions;

    move-result-object v0

    .line 347
    invoke-direct {p0, v0}, Lcom/urbanairship/location/LocationService;->createLocationUpdateIntent(Lcom/urbanairship/location/LocationRequestOptions;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 349
    iget-object v2, p0, Lcom/urbanairship/location/LocationService;->locationProvider:Lcom/urbanairship/location/UALocationProvider;

    invoke-virtual {v2}, Lcom/urbanairship/location/UALocationProvider;->connect()V

    .line 350
    iget-object v2, p0, Lcom/urbanairship/location/LocationService;->locationProvider:Lcom/urbanairship/location/UALocationProvider;

    invoke-virtual {v2, v1}, Lcom/urbanairship/location/UALocationProvider;->cancelRequests(Landroid/app/PendingIntent;)V

    .line 351
    iget-object v2, p0, Lcom/urbanairship/location/LocationService;->locationProvider:Lcom/urbanairship/location/UALocationProvider;

    invoke-virtual {v2, v0, v1}, Lcom/urbanairship/location/UALocationProvider;->requestLocationUpdates(Lcom/urbanairship/location/LocationRequestOptions;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 356
    :cond_3
    const-string v1, "location"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "location"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    :goto_1
    check-cast v1, Landroid/location/Location;

    check-cast v1, Landroid/location/Location;

    .line 360
    if-eqz v1, :cond_0

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received location update: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 364
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v2

    sget-object v3, Lcom/urbanairship/analytics/LocationEvent$UpdateType;->CONTINUOUS:Lcom/urbanairship/analytics/LocationEvent$UpdateType;

    invoke-virtual {v2, v1, v0, v3}, Lcom/urbanairship/analytics/Analytics;->recordLocation(Landroid/location/Location;Lcom/urbanairship/location/LocationRequestOptions;Lcom/urbanairship/analytics/LocationEvent$UpdateType;)V

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/urbanairship/location/LocationService;->subscribedClients:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 367
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    .line 368
    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-direct {p0, v0, v3, v4, v1}, Lcom/urbanairship/location/LocationService;->sendClientMessage(Landroid/os/Messenger;IILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 370
    iget-object v3, p0, Lcom/urbanairship/location/LocationService;->subscribedClients:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 356
    :cond_5
    const-string v1, "com.google.android.location.LOCATION"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    goto :goto_1
.end method

.method private onRequestSingleUpdate(Landroid/os/Message;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x4

    .line 254
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 255
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 257
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "com.urbanairship.location.EXTRA_LOCATION_REQUEST_OPTIONS"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/location/LocationRequestOptions;

    .line 258
    if-nez v0, :cond_0

    .line 259
    const-string v0, "Location service unable to perform single location request. Missing request options."

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    .line 260
    invoke-direct {p0, v2, v5, v1, v6}, Lcom/urbanairship/location/LocationService;->sendClientMessage(Landroid/os/Messenger;IILjava/lang/Object;)Z

    .line 295
    :goto_0
    return-void

    .line 264
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LocationService - Single location request for client: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 265
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requesting single location update with request options: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 268
    iget-object v3, p0, Lcom/urbanairship/location/LocationService;->locationProvider:Lcom/urbanairship/location/UALocationProvider;

    invoke-virtual {v3}, Lcom/urbanairship/location/UALocationProvider;->connect()V

    .line 269
    iget-object v3, p0, Lcom/urbanairship/location/LocationService;->locationProvider:Lcom/urbanairship/location/UALocationProvider;

    invoke-virtual {v3, v0}, Lcom/urbanairship/location/UALocationProvider;->requestSingleLocation(Lcom/urbanairship/location/LocationRequestOptions;)Lcom/urbanairship/PendingResult;

    move-result-object v3

    .line 271
    if-nez v3, :cond_1

    .line 272
    const-string v0, "Location service unable to perform single location request. UALocationProvider failed to request a location."

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    .line 274
    invoke-direct {p0, v2, v5, v1, v6}, Lcom/urbanairship/location/LocationService;->sendClientMessage(Landroid/os/Messenger;IILjava/lang/Object;)Z

    goto :goto_0

    .line 278
    :cond_1
    invoke-direct {p0, v2, v1, v3}, Lcom/urbanairship/location/LocationService;->addPendingResult(Landroid/os/Messenger;ILcom/urbanairship/PendingResult;)V

    .line 280
    new-instance v4, Lcom/urbanairship/location/LocationService$1;

    invoke-direct {v4, p0, v2, v1, v0}, Lcom/urbanairship/location/LocationService$1;-><init>(Lcom/urbanairship/location/LocationService;Landroid/os/Messenger;ILcom/urbanairship/location/LocationRequestOptions;)V

    invoke-interface {v3, v4}, Lcom/urbanairship/PendingResult;->onResult(Lcom/urbanairship/PendingResult$ResultCallback;)V

    goto :goto_0
.end method

.method private onSubscribeUpdates(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationService - Client subscribed for updates: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->subscribedClients:Ljava/util/Set;

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_0
    return-void
.end method

.method private onUnsubscribeUpdates(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->subscribedClients:Ljava/util/Set;

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationService - Client unsubscribed from updates: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 246
    :cond_0
    return-void
.end method

.method private declared-synchronized removePendingResult(Landroid/os/Messenger;I)Lcom/urbanairship/PendingResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Messenger;",
            "I)",
            "Lcom/urbanairship/PendingResult",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 446
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/urbanairship/location/LocationService;->pendingResultMap:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 447
    :try_start_1
    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->pendingResultMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 448
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 464
    :goto_0
    monitor-exit p0

    return-object v1

    .line 451
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->pendingResultMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 452
    if-eqz v0, :cond_2

    .line 453
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/urbanairship/PendingResult;

    .line 455
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 456
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 457
    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->pendingResultMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    :cond_1
    monitor-exit v2

    goto :goto_0

    .line 463
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 446
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 463
    :cond_2
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method private sendClientMessage(Landroid/os/Messenger;IILjava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 478
    if-nez p1, :cond_0

    .line 486
    :goto_0
    return v0

    .line 483
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1, p2, p3, v2, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    const/4 v0, 0x1

    goto :goto_0

    .line 485
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->messenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 180
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 181
    invoke-virtual {p0}, Lcom/urbanairship/location/LocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Autopilot;->automaticTakeOff(Landroid/content/Context;)V

    .line 183
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LocationService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 186
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/location/LocationService;->looper:Landroid/os/Looper;

    .line 187
    new-instance v0, Lcom/urbanairship/location/LocationService$IncomingHandler;

    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->looper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/urbanairship/location/LocationService$IncomingHandler;-><init>(Lcom/urbanairship/location/LocationService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/urbanairship/location/LocationService;->handler:Lcom/urbanairship/location/LocationService$IncomingHandler;

    .line 188
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->handler:Lcom/urbanairship/location/LocationService$IncomingHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/urbanairship/location/LocationService;->messenger:Landroid/os/Messenger;

    .line 190
    new-instance v0, Lcom/urbanairship/location/UALocationProvider;

    invoke-virtual {p0}, Lcom/urbanairship/location/LocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/urbanairship/location/UALocationProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/urbanairship/location/LocationService;->locationProvider:Lcom/urbanairship/location/UALocationProvider;

    .line 192
    const-string v0, "LocationService - Service created."

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->locationProvider:Lcom/urbanairship/location/UALocationProvider;

    invoke-virtual {v0}, Lcom/urbanairship/location/UALocationProvider;->disconnect()V

    .line 173
    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->looper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 174
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 175
    const-string v0, "LocationService - Service destroyed."

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->handler:Lcom/urbanairship/location/LocationService$IncomingHandler;

    invoke-virtual {v0}, Lcom/urbanairship/location/LocationService$IncomingHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 198
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 199
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 200
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 202
    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->handler:Lcom/urbanairship/location/LocationService$IncomingHandler;

    invoke-virtual {v1, v0}, Lcom/urbanairship/location/LocationService$IncomingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 204
    const/4 v0, 0x2

    return v0
.end method
