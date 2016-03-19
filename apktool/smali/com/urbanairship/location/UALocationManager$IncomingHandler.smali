.class Lcom/urbanairship/location/UALocationManager$IncomingHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 480
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 481
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 485
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getLocationManager()Lcom/urbanairship/location/UALocationManager;

    move-result-object v2

    .line 487
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 515
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 489
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    .line 490
    if-eqz v0, :cond_0

    .line 493
    # getter for: Lcom/urbanairship/location/UALocationManager;->locationListeners:Ljava/util/List;
    invoke-static {v2}, Lcom/urbanairship/location/UALocationManager;->access$400(Lcom/urbanairship/location/UALocationManager;)Ljava/util/List;

    move-result-object v3

    monitor-enter v3

    .line 494
    :try_start_0
    # getter for: Lcom/urbanairship/location/UALocationManager;->locationListeners:Ljava/util/List;
    invoke-static {v2}, Lcom/urbanairship/location/UALocationManager;->access$400(Lcom/urbanairship/location/UALocationManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/urbanairship/location/LocationListener;

    .line 495
    invoke-interface {v1, v0}, Lcom/urbanairship/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_1

    .line 497
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 501
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    .line 502
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 505
    # getter for: Lcom/urbanairship/location/UALocationManager;->singleLocationRequests:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/urbanairship/location/UALocationManager;->access$900(Lcom/urbanairship/location/UALocationManager;)Landroid/util/SparseArray;

    move-result-object v4

    monitor-enter v4

    .line 506
    :try_start_2
    # getter for: Lcom/urbanairship/location/UALocationManager;->singleLocationRequests:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/urbanairship/location/UALocationManager;->access$900(Lcom/urbanairship/location/UALocationManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/urbanairship/location/PendingLocationResult;

    .line 507
    if-eqz v1, :cond_2

    .line 508
    invoke-virtual {v1, v0}, Lcom/urbanairship/location/PendingLocationResult;->setResult(Landroid/location/Location;)V

    .line 509
    # getter for: Lcom/urbanairship/location/UALocationManager;->singleLocationRequests:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/urbanairship/location/UALocationManager;->access$900(Lcom/urbanairship/location/UALocationManager;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 510
    # invokes: Lcom/urbanairship/location/UALocationManager;->updateServiceConnection()V
    invoke-static {v2}, Lcom/urbanairship/location/UALocationManager;->access$200(Lcom/urbanairship/location/UALocationManager;)V

    .line 512
    :cond_2
    monitor-exit v4

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 487
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
