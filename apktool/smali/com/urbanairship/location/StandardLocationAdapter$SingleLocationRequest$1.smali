.class Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest$1;
.super Lcom/urbanairship/location/StandardLocationAdapter$AndroidLocationListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;-><init>(Lcom/urbanairship/location/StandardLocationAdapter;Lcom/urbanairship/location/LocationRequestOptions;)V
.end annotation


# instance fields
.field final synthetic this$1:Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;

.field final synthetic val$this$0:Lcom/urbanairship/location/StandardLocationAdapter;


# direct methods
.method constructor <init>(Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;Lcom/urbanairship/location/StandardLocationAdapter;)V
    .locals 1

    .prologue
    .line 193
    iput-object p1, p0, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest$1;->this$1:Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;

    iput-object p2, p0, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest$1;->val$this$0:Lcom/urbanairship/location/StandardLocationAdapter;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/urbanairship/location/StandardLocationAdapter$AndroidLocationListener;-><init>(Lcom/urbanairship/location/StandardLocationAdapter$1;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest$1;->this$1:Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;

    # invokes: Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;->stopUpdates()V
    invoke-static {v0}, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;->access$200(Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;)V

    .line 197
    iget-object v0, p0, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest$1;->this$1:Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;

    invoke-virtual {v0, p1}, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;->setResult(Landroid/location/Location;)V

    .line 198
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StandardLocationAdapter - Provider disabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 203
    monitor-enter p0

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest$1;->this$1:Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;

    invoke-virtual {v0}, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest$1;->this$1:Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;

    # invokes: Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;->listenForLocationChanges()V
    invoke-static {v0}, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;->access$300(Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;)V

    .line 207
    :cond_0
    monitor-exit p0

    .line 208
    return-void

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
