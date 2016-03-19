.class Lcom/urbanairship/location/FusedLocationAdapter$SingleLocationRequest;
.super Lcom/urbanairship/location/PendingLocationResult;
.source "SourceFile"


# instance fields
.field private final fusedLocationListener:Lcom/google/android/gms/location/LocationListener;

.field private final locationRequest:Lcom/google/android/gms/location/LocationRequest;

.field final synthetic this$0:Lcom/urbanairship/location/FusedLocationAdapter;


# direct methods
.method constructor <init>(Lcom/urbanairship/location/FusedLocationAdapter;Lcom/urbanairship/location/LocationRequestOptions;)V
    .locals 5

    .prologue
    .line 174
    iput-object p1, p0, Lcom/urbanairship/location/FusedLocationAdapter$SingleLocationRequest;->this$0:Lcom/urbanairship/location/FusedLocationAdapter;

    invoke-direct {p0}, Lcom/urbanairship/location/PendingLocationResult;-><init>()V

    .line 175
    # invokes: Lcom/urbanairship/location/FusedLocationAdapter;->createLocationRequest(Lcom/urbanairship/location/LocationRequestOptions;)Lcom/google/android/gms/location/LocationRequest;
    invoke-static {p1, p2}, Lcom/urbanairship/location/FusedLocationAdapter;->access$000(Lcom/urbanairship/location/FusedLocationAdapter;Lcom/urbanairship/location/LocationRequestOptions;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/location/FusedLocationAdapter$SingleLocationRequest;->locationRequest:Lcom/google/android/gms/location/LocationRequest;

    .line 176
    iget-object v0, p0, Lcom/urbanairship/location/FusedLocationAdapter$SingleLocationRequest;->locationRequest:Lcom/google/android/gms/location/LocationRequest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setNumUpdates(I)Lcom/google/android/gms/location/LocationRequest;

    .line 178
    new-instance v0, Lcom/urbanairship/location/FusedLocationAdapter$SingleLocationRequest$1;

    invoke-direct {v0, p0, p1}, Lcom/urbanairship/location/FusedLocationAdapter$SingleLocationRequest$1;-><init>(Lcom/urbanairship/location/FusedLocationAdapter$SingleLocationRequest;Lcom/urbanairship/location/FusedLocationAdapter;)V

    iput-object v0, p0, Lcom/urbanairship/location/FusedLocationAdapter$SingleLocationRequest;->fusedLocationListener:Lcom/google/android/gms/location/LocationListener;

    .line 185
    const-string v0, "FusedLocationAdapter - Starting single location request."

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 186
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    # getter for: Lcom/urbanairship/location/FusedLocationAdapter;->client:Lcom/google/android/gms/common/api/GoogleApiClient;
    invoke-static {p1}, Lcom/urbanairship/location/FusedLocationAdapter;->access$100(Lcom/urbanairship/location/FusedLocationAdapter;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    iget-object v2, p0, Lcom/urbanairship/location/FusedLocationAdapter$SingleLocationRequest;->locationRequest:Lcom/google/android/gms/location/LocationRequest;

    iget-object v3, p0, Lcom/urbanairship/location/FusedLocationAdapter$SingleLocationRequest;->fusedLocationListener:Lcom/google/android/gms/location/LocationListener;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/location/FusedLocationProviderApi;->requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)Lcom/google/android/gms/common/api/PendingResult;

    .line 187
    return-void
.end method


# virtual methods
.method protected onCancel()V
    .locals 3

    .prologue
    .line 191
    const-string v0, "FusedLocationAdapter - Canceling single location request."

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 192
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v1, p0, Lcom/urbanairship/location/FusedLocationAdapter$SingleLocationRequest;->this$0:Lcom/urbanairship/location/FusedLocationAdapter;

    # getter for: Lcom/urbanairship/location/FusedLocationAdapter;->client:Lcom/google/android/gms/common/api/GoogleApiClient;
    invoke-static {v1}, Lcom/urbanairship/location/FusedLocationAdapter;->access$100(Lcom/urbanairship/location/FusedLocationAdapter;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    iget-object v2, p0, Lcom/urbanairship/location/FusedLocationAdapter$SingleLocationRequest;->fusedLocationListener:Lcom/google/android/gms/location/LocationListener;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/location/FusedLocationProviderApi;->removeLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    .line 193
    return-void
.end method
