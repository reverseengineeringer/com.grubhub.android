.class Lcom/urbanairship/location/FusedLocationAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/location/FusedLocationAdapter;->connect()Z
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/location/FusedLocationAdapter;

.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcom/urbanairship/location/FusedLocationAdapter;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/urbanairship/location/FusedLocationAdapter$2;->this$0:Lcom/urbanairship/location/FusedLocationAdapter;

    iput-object p2, p0, Lcom/urbanairship/location/FusedLocationAdapter$2;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 90
    const-string v0, "FusedLocationAdapter - Google Play services connected for fused location."

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/urbanairship/location/FusedLocationAdapter$2;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 92
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 1

    .prologue
    .line 96
    const-string v0, "FusedLocationAdapter - Google Play services connection suspended for fused location."

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 97
    return-void
.end method
