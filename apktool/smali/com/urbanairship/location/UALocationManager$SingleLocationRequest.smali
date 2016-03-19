.class Lcom/urbanairship/location/UALocationManager$SingleLocationRequest;
.super Lcom/urbanairship/location/PendingLocationResult;
.source "SourceFile"


# instance fields
.field private final options:Lcom/urbanairship/location/LocationRequestOptions;

.field private final requestId:I

.field final synthetic this$0:Lcom/urbanairship/location/UALocationManager;


# direct methods
.method constructor <init>(Lcom/urbanairship/location/UALocationManager;ILcom/urbanairship/location/LocationRequestOptions;)V
    .locals 0

    .prologue
    .line 534
    iput-object p1, p0, Lcom/urbanairship/location/UALocationManager$SingleLocationRequest;->this$0:Lcom/urbanairship/location/UALocationManager;

    invoke-direct {p0}, Lcom/urbanairship/location/PendingLocationResult;-><init>()V

    .line 535
    iput p2, p0, Lcom/urbanairship/location/UALocationManager$SingleLocationRequest;->requestId:I

    .line 536
    iput-object p3, p0, Lcom/urbanairship/location/UALocationManager$SingleLocationRequest;->options:Lcom/urbanairship/location/LocationRequestOptions;

    .line 537
    return-void
.end method


# virtual methods
.method protected onCancel()V
    .locals 4

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/urbanairship/location/UALocationManager$SingleLocationRequest;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager$SingleLocationRequest;->this$0:Lcom/urbanairship/location/UALocationManager;

    const/4 v1, 0x6

    iget v2, p0, Lcom/urbanairship/location/UALocationManager$SingleLocationRequest;->requestId:I

    const/4 v3, 0x0

    # invokes: Lcom/urbanairship/location/UALocationManager;->sendMessage(IILandroid/os/Bundle;)Z
    invoke-static {v0, v1, v2, v3}, Lcom/urbanairship/location/UALocationManager;->access$1100(Lcom/urbanairship/location/UALocationManager;IILandroid/os/Bundle;)Z

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager$SingleLocationRequest;->this$0:Lcom/urbanairship/location/UALocationManager;

    # getter for: Lcom/urbanairship/location/UALocationManager;->singleLocationRequests:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/urbanairship/location/UALocationManager;->access$900(Lcom/urbanairship/location/UALocationManager;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 546
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager$SingleLocationRequest;->this$0:Lcom/urbanairship/location/UALocationManager;

    # getter for: Lcom/urbanairship/location/UALocationManager;->singleLocationRequests:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/urbanairship/location/UALocationManager;->access$900(Lcom/urbanairship/location/UALocationManager;)Landroid/util/SparseArray;

    move-result-object v0

    iget v2, p0, Lcom/urbanairship/location/UALocationManager$SingleLocationRequest;->requestId:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 547
    monitor-exit v1

    .line 548
    return-void

    .line 547
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method declared-synchronized sendLocationRequest()V
    .locals 4

    .prologue
    .line 554
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/urbanairship/location/UALocationManager$SingleLocationRequest;->isDone()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    :goto_0
    monitor-exit p0

    return-void

    .line 558
    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 559
    const-string v1, "com.urbanairship.location.EXTRA_LOCATION_REQUEST_OPTIONS"

    iget-object v2, p0, Lcom/urbanairship/location/UALocationManager$SingleLocationRequest;->options:Lcom/urbanairship/location/LocationRequestOptions;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 560
    iget-object v1, p0, Lcom/urbanairship/location/UALocationManager$SingleLocationRequest;->this$0:Lcom/urbanairship/location/UALocationManager;

    const/4 v2, 0x5

    iget v3, p0, Lcom/urbanairship/location/UALocationManager$SingleLocationRequest;->requestId:I

    # invokes: Lcom/urbanairship/location/UALocationManager;->sendMessage(IILandroid/os/Bundle;)Z
    invoke-static {v1, v2, v3, v0}, Lcom/urbanairship/location/UALocationManager;->access$1100(Lcom/urbanairship/location/UALocationManager;IILandroid/os/Bundle;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 554
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
