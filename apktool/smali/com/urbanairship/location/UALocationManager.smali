.class public Lcom/urbanairship/location/UALocationManager;
.super Lcom/urbanairship/BaseManager;
.source "SourceFile"


# instance fields
.field private final context:Landroid/content/Context;

.field private isBound:Z

.field private isSubscribed:Z

.field private final locationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/location/LocationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final messenger:Landroid/os/Messenger;

.field private nextSingleLocationRequestId:I

.field private final preferences:Lcom/urbanairship/location/LocationPreferences;

.field private final serviceConnection:Landroid/content/ServiceConnection;

.field private serviceMessenger:Landroid/os/Messenger;

.field private final singleLocationRequests:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/urbanairship/location/UALocationManager$SingleLocationRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;)V
    .locals 3

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/urbanairship/BaseManager;-><init>()V

    .line 72
    const/4 v0, 0x1

    iput v0, p0, Lcom/urbanairship/location/UALocationManager;->nextSingleLocationRequestId:I

    .line 73
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/location/UALocationManager;->singleLocationRequests:Landroid/util/SparseArray;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/location/UALocationManager;->locationListeners:Ljava/util/List;

    .line 86
    new-instance v0, Lcom/urbanairship/location/UALocationManager$1;

    invoke-direct {v0, p0}, Lcom/urbanairship/location/UALocationManager$1;-><init>(Lcom/urbanairship/location/UALocationManager;)V

    iput-object v0, p0, Lcom/urbanairship/location/UALocationManager;->serviceConnection:Landroid/content/ServiceConnection;

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/location/UALocationManager;->context:Landroid/content/Context;

    .line 112
    new-instance v0, Lcom/urbanairship/location/LocationPreferences;

    invoke-direct {v0, p2}, Lcom/urbanairship/location/LocationPreferences;-><init>(Lcom/urbanairship/PreferenceDataStore;)V

    iput-object v0, p0, Lcom/urbanairship/location/UALocationManager;->preferences:Lcom/urbanairship/location/LocationPreferences;

    .line 113
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/urbanairship/location/UALocationManager$IncomingHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/urbanairship/location/UALocationManager$IncomingHandler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/urbanairship/location/UALocationManager;->messenger:Landroid/os/Messenger;

    .line 121
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager;->preferences:Lcom/urbanairship/location/LocationPreferences;

    new-instance v1, Lcom/urbanairship/location/UALocationManager$2;

    invoke-direct {v1, p0}, Lcom/urbanairship/location/UALocationManager$2;-><init>(Lcom/urbanairship/location/UALocationManager;)V

    invoke-virtual {v0, v1}, Lcom/urbanairship/location/LocationPreferences;->setListener(Lcom/urbanairship/PreferenceDataStore$PreferenceChangeListener;)V

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/location/UALocationManager;Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/urbanairship/location/UALocationManager;->onServiceConnected(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$100(Lcom/urbanairship/location/UALocationManager;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/urbanairship/location/UALocationManager;->onServiceDisconnected()V

    return-void
.end method

.method static synthetic access$1000(Lcom/urbanairship/location/UALocationManager;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/urbanairship/location/UALocationManager;->unbindService()V

    return-void
.end method

.method static synthetic access$1100(Lcom/urbanairship/location/UALocationManager;IILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/urbanairship/location/UALocationManager;->sendMessage(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/urbanairship/location/UALocationManager;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/urbanairship/location/UALocationManager;->updateServiceConnection()V

    return-void
.end method

.method static synthetic access$300(Lcom/urbanairship/location/UALocationManager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/urbanairship/location/UALocationManager;)Ljava/util/List;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager;->locationListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/urbanairship/location/UALocationManager;)Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/urbanairship/location/UALocationManager;->isBound:Z

    return v0
.end method

.method static synthetic access$600(Lcom/urbanairship/location/UALocationManager;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/urbanairship/location/UALocationManager;->subscribeUpdates()V

    return-void
.end method

.method static synthetic access$700(Lcom/urbanairship/location/UALocationManager;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/urbanairship/location/UALocationManager;->bindService()V

    return-void
.end method

.method static synthetic access$800(Lcom/urbanairship/location/UALocationManager;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/urbanairship/location/UALocationManager;->unsubscribeUpdates()V

    return-void
.end method

.method static synthetic access$900(Lcom/urbanairship/location/UALocationManager;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager;->singleLocationRequests:Landroid/util/SparseArray;

    return-object v0
.end method

.method private declared-synchronized bindService()V
    .locals 4

    .prologue
    .line 374
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/urbanairship/location/UALocationManager;->isBound:Z

    if-nez v0, :cond_0

    .line 375
    const-string v0, "UALocationManager - Binding to location service."

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 378
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 379
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/urbanairship/location/LocationService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 380
    iget-object v2, p0, Lcom/urbanairship/location/UALocationManager;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 381
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/urbanairship/location/UALocationManager;->isBound:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 383
    :cond_1
    :try_start_1
    const-string v0, "Unable to bind to location service. Check that the location service is added to the manifest."

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 374
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onServiceConnected(Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 427
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/urbanairship/location/UALocationManager;->serviceMessenger:Landroid/os/Messenger;

    .line 430
    iget-object v2, p0, Lcom/urbanairship/location/UALocationManager;->singleLocationRequests:Landroid/util/SparseArray;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 431
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager;->singleLocationRequests:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager;->singleLocationRequests:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/location/UALocationManager$SingleLocationRequest;

    invoke-virtual {v0}, Lcom/urbanairship/location/UALocationManager$SingleLocationRequest;->sendLocationRequest()V

    .line 431
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 434
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 435
    :try_start_2
    invoke-direct {p0}, Lcom/urbanairship/location/UALocationManager;->updateServiceConnection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 436
    monitor-exit p0

    return-void

    .line 434
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 427
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onServiceDisconnected()V
    .locals 1

    .prologue
    .line 439
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/urbanairship/location/UALocationManager;->serviceMessenger:Landroid/os/Messenger;

    .line 440
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/location/UALocationManager;->isSubscribed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    monitor-exit p0

    return-void

    .line 439
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private sendMessage(IILandroid/os/Bundle;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 454
    iget-object v1, p0, Lcom/urbanairship/location/UALocationManager;->serviceMessenger:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 471
    :goto_0
    return v0

    .line 458
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, p1, p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    .line 459
    if-eqz p3, :cond_1

    .line 460
    invoke-virtual {v1, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 463
    :cond_1
    iget-object v2, p0, Lcom/urbanairship/location/UALocationManager;->messenger:Landroid/os/Messenger;

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 466
    :try_start_0
    iget-object v2, p0, Lcom/urbanairship/location/UALocationManager;->serviceMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    const/4 v0, 0x1

    goto :goto_0

    .line 468
    :catch_0
    move-exception v1

    .line 469
    const-string v1, "UALocationManager - Remote exception when sending message to location service"

    invoke-static {v1}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized subscribeUpdates()V
    .locals 3

    .prologue
    .line 392
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/urbanairship/location/UALocationManager;->isSubscribed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/urbanairship/location/UALocationManager;->sendMessage(IILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    const-string v0, "Subscribing to continuous location updates."

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 394
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/urbanairship/location/UALocationManager;->isSubscribed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    :cond_0
    monitor-exit p0

    return-void

    .line 392
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized unbindService()V
    .locals 2

    .prologue
    .line 418
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/urbanairship/location/UALocationManager;->isBound:Z

    if-eqz v0, :cond_0

    .line 419
    const-string v0, "UALocationManager - Unbinding to location service."

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 421
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/location/UALocationManager;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 422
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/location/UALocationManager;->isBound:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    :cond_0
    monitor-exit p0

    return-void

    .line 418
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized unsubscribeUpdates()V
    .locals 3

    .prologue
    .line 402
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/urbanairship/location/UALocationManager;->isSubscribed:Z

    if-eqz v0, :cond_0

    .line 403
    const-string v0, "Unsubscribing from continuous location updates."

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 404
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/urbanairship/location/UALocationManager;->sendMessage(IILandroid/os/Bundle;)Z

    .line 405
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/location/UALocationManager;->isSubscribed:Z

    .line 407
    invoke-direct {p0}, Lcom/urbanairship/location/UALocationManager;->updateServiceConnection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    :cond_0
    monitor-exit p0

    return-void

    .line 402
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateServiceConnection()V
    .locals 4

    .prologue
    .line 327
    new-instance v0, Lcom/urbanairship/location/UALocationManager$4;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/urbanairship/location/UALocationManager$4;-><init>(Lcom/urbanairship/location/UALocationManager;Landroid/os/Handler;)V

    .line 361
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/urbanairship/location/UALocationManager;->context:Landroid/content/Context;

    const-class v3, Lcom/urbanairship/location/LocationService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.urbanairship.location.ACTION_CHECK_LOCATION_UPDATES"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.urbanairship.location.EXTRA_RESULT_RECEIVER"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 365
    iget-object v1, p0, Lcom/urbanairship/location/UALocationManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 366
    const-string v0, "Unable to start location service. Check that the location service is added to the manifest."

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 368
    :cond_0
    return-void
.end method


# virtual methods
.method public addLocationListener(Lcom/urbanairship/location/LocationListener;)V
    .locals 2

    .prologue
    .line 244
    iget-object v1, p0, Lcom/urbanairship/location/UALocationManager;->locationListeners:Ljava/util/List;

    monitor-enter v1

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager;->locationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-direct {p0}, Lcom/urbanairship/location/UALocationManager;->updateServiceConnection()V

    .line 247
    monitor-exit v1

    .line 248
    return-void

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLocationRequestOptions()Lcom/urbanairship/location/LocationRequestOptions;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager;->preferences:Lcom/urbanairship/location/LocationPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/location/LocationPreferences;->getLocationRequestOptions()Lcom/urbanairship/location/LocationRequestOptions;

    move-result-object v0

    .line 231
    if-nez v0, :cond_0

    .line 232
    new-instance v0, Lcom/urbanairship/location/LocationRequestOptions$Builder;

    invoke-direct {v0}, Lcom/urbanairship/location/LocationRequestOptions$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/urbanairship/location/LocationRequestOptions$Builder;->create()Lcom/urbanairship/location/LocationRequestOptions;

    move-result-object v0

    .line 234
    :cond_0
    return-object v0
.end method

.method getPreferences()Lcom/urbanairship/location/LocationPreferences;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager;->preferences:Lcom/urbanairship/location/LocationPreferences;

    return-object v0
.end method

.method protected init()V
    .locals 4

    .prologue
    .line 141
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/urbanairship/location/UALocationManager$3;

    invoke-direct {v1, p0}, Lcom/urbanairship/location/UALocationManager$3;-><init>(Lcom/urbanairship/location/UALocationManager;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 161
    return-void
.end method

.method public isBackgroundLocationAllowed()Z
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager;->preferences:Lcom/urbanairship/location/LocationPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/location/LocationPreferences;->isBackgroundLocationAllowed()Z

    move-result v0

    return v0
.end method

.method public isLocationUpdatesEnabled()Z
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager;->preferences:Lcom/urbanairship/location/LocationPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/location/LocationPreferences;->isLocationUpdatesEnabled()Z

    move-result v0

    return v0
.end method

.method public removeLocationListener(Lcom/urbanairship/location/LocationListener;)V
    .locals 2

    .prologue
    .line 256
    iget-object v1, p0, Lcom/urbanairship/location/UALocationManager;->locationListeners:Ljava/util/List;

    monitor-enter v1

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager;->locationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 258
    invoke-direct {p0}, Lcom/urbanairship/location/UALocationManager;->updateServiceConnection()V

    .line 259
    monitor-exit v1

    .line 260
    return-void

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestSingleLocation()Lcom/urbanairship/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/urbanairship/PendingResult",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/urbanairship/location/UALocationManager;->getLocationRequestOptions()Lcom/urbanairship/location/LocationRequestOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/urbanairship/location/UALocationManager;->requestSingleLocation(Lcom/urbanairship/location/LocationRequestOptions;)Lcom/urbanairship/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public requestSingleLocation(Lcom/urbanairship/location/LocationRequestOptions;)Lcom/urbanairship/PendingResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/urbanairship/location/LocationRequestOptions;",
            ")",
            "Lcom/urbanairship/PendingResult",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    if-nez p1, :cond_0

    .line 292
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Location request options cannot be null or invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_0
    iget-object v1, p0, Lcom/urbanairship/location/UALocationManager;->singleLocationRequests:Landroid/util/SparseArray;

    monitor-enter v1

    .line 297
    :try_start_0
    iget v0, p0, Lcom/urbanairship/location/UALocationManager;->nextSingleLocationRequestId:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/urbanairship/location/UALocationManager;->nextSingleLocationRequestId:I

    .line 298
    new-instance v2, Lcom/urbanairship/location/UALocationManager$SingleLocationRequest;

    invoke-direct {v2, p0, v0, p1}, Lcom/urbanairship/location/UALocationManager$SingleLocationRequest;-><init>(Lcom/urbanairship/location/UALocationManager;ILcom/urbanairship/location/LocationRequestOptions;)V

    .line 299
    iget-object v3, p0, Lcom/urbanairship/location/UALocationManager;->singleLocationRequests:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 300
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    monitor-enter p0

    .line 303
    :try_start_1
    iget-boolean v0, p0, Lcom/urbanairship/location/UALocationManager;->isBound:Z

    if-nez v0, :cond_1

    .line 304
    invoke-direct {p0}, Lcom/urbanairship/location/UALocationManager;->bindService()V

    .line 308
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 310
    return-object v2

    .line 300
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 306
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Lcom/urbanairship/location/UALocationManager$SingleLocationRequest;->sendLocationRequest()V

    goto :goto_0

    .line 308
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public setBackgroundLocationAllowed(Z)V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager;->preferences:Lcom/urbanairship/location/LocationPreferences;

    invoke-virtual {v0, p1}, Lcom/urbanairship/location/LocationPreferences;->setBackgroundLocationAllowed(Z)V

    .line 210
    return-void
.end method

.method public setLocationRequestOptions(Lcom/urbanairship/location/LocationRequestOptions;)V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager;->preferences:Lcom/urbanairship/location/LocationPreferences;

    invoke-virtual {v0, p1}, Lcom/urbanairship/location/LocationPreferences;->setLocationRequestOptions(Lcom/urbanairship/location/LocationRequestOptions;)V

    .line 220
    return-void
.end method

.method public setLocationUpdatesEnabled(Z)V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager;->preferences:Lcom/urbanairship/location/LocationPreferences;

    invoke-virtual {v0, p1}, Lcom/urbanairship/location/LocationPreferences;->setLocationUpdatesEnabled(Z)V

    .line 189
    return-void
.end method
