.class Lcom/urbanairship/location/UALocationProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final adapters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/location/LocationAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private connectedAdapter:Lcom/urbanairship/location/LocationAdapter;

.field private isConnected:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/location/UALocationProvider;->adapters:Ljava/util/List;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/location/UALocationProvider;->isConnected:Z

    .line 59
    invoke-static {}, Lcom/urbanairship/google/PlayServicesUtils;->isGooglePlayStoreAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/urbanairship/google/PlayServicesUtils;->isFusedLocationDependencyAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/urbanairship/location/UALocationProvider;->adapters:Ljava/util/List;

    new-instance v1, Lcom/urbanairship/location/FusedLocationAdapter;

    invoke-direct {v1, p1}, Lcom/urbanairship/location/FusedLocationAdapter;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/location/UALocationProvider;->adapters:Ljava/util/List;

    new-instance v1, Lcom/urbanairship/location/StandardLocationAdapter;

    invoke-direct {v1, p1}, Lcom/urbanairship/location/StandardLocationAdapter;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method varargs constructor <init>([Lcom/urbanairship/location/LocationAdapter;)V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/location/UALocationProvider;->adapters:Ljava/util/List;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/location/UALocationProvider;->isConnected:Z

    .line 67
    iget-object v0, p0, Lcom/urbanairship/location/UALocationProvider;->adapters:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 68
    return-void
.end method


# virtual methods
.method public cancelRequests(Landroid/app/PendingIntent;)V
    .locals 5

    .prologue
    .line 76
    const-string v0, "UALocationProvider - Canceling location requests."

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/urbanairship/location/UALocationProvider;->adapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/location/LocationAdapter;

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UALocationProvider - Canceling location requests for adapter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 86
    iget-object v2, p0, Lcom/urbanairship/location/UALocationProvider;->connectedAdapter:Lcom/urbanairship/location/LocationAdapter;

    if-eq v0, v2, :cond_1

    invoke-interface {v0}, Lcom/urbanairship/location/LocationAdapter;->connect()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 88
    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Lcom/urbanairship/location/LocationAdapter;->cancelLocationUpdates(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/urbanairship/location/UALocationProvider;->connectedAdapter:Lcom/urbanairship/location/LocationAdapter;

    if-eq v0, v2, :cond_0

    .line 95
    invoke-interface {v0}, Lcom/urbanairship/location/LocationAdapter;->disconnect()V

    goto :goto_0

    .line 89
    :catch_0
    move-exception v2

    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to cancel location updates: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    goto :goto_1

    .line 98
    :cond_3
    return-void
.end method

.method public connect()V
    .locals 4

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/urbanairship/location/UALocationProvider;->isConnected:Z

    if-eqz v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/location/UALocationProvider;->adapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/location/LocationAdapter;

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UALocationProvider - Attempting to connect to location adapter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 163
    invoke-interface {v0}, Lcom/urbanairship/location/LocationAdapter;->connect()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UALocationProvider - Connected to location adapter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 165
    iput-object v0, p0, Lcom/urbanairship/location/UALocationProvider;->connectedAdapter:Lcom/urbanairship/location/LocationAdapter;

    .line 172
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/urbanairship/location/UALocationProvider;->isConnected:Z

    goto :goto_0

    .line 168
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UALocationProvider - Failed to connect to location adapter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/urbanairship/location/UALocationProvider;->isConnected:Z

    if-nez v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 183
    :cond_0
    const-string v0, "UALocationProvider - Disconnecting from location provider."

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/urbanairship/location/UALocationProvider;->connectedAdapter:Lcom/urbanairship/location/LocationAdapter;

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/urbanairship/location/UALocationProvider;->connectedAdapter:Lcom/urbanairship/location/LocationAdapter;

    invoke-interface {v0}, Lcom/urbanairship/location/LocationAdapter;->disconnect()V

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/urbanairship/location/UALocationProvider;->connectedAdapter:Lcom/urbanairship/location/LocationAdapter;

    .line 190
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/location/UALocationProvider;->isConnected:Z

    goto :goto_0
.end method

.method public requestLocationUpdates(Lcom/urbanairship/location/LocationRequestOptions;Landroid/app/PendingIntent;)V
    .locals 3

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/urbanairship/location/UALocationProvider;->isConnected:Z

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Provider must be connected before making requests."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/location/UALocationProvider;->connectedAdapter:Lcom/urbanairship/location/LocationAdapter;

    if-nez v0, :cond_1

    .line 113
    const-string v0, "UALocationProvider - Ignoring request, connected adapter unavailable."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 123
    :goto_0
    return-void

    .line 117
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UALocationProvider - Requesting location updates: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/location/UALocationProvider;->connectedAdapter:Lcom/urbanairship/location/LocationAdapter;

    invoke-interface {v0, p1, p2}, Lcom/urbanairship/location/LocationAdapter;->requestLocationUpdates(Lcom/urbanairship/location/LocationRequestOptions;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to request location updates: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
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
    const/4 v0, 0x0

    .line 134
    iget-boolean v1, p0, Lcom/urbanairship/location/UALocationProvider;->isConnected:Z

    if-nez v1, :cond_0

    .line 135
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Provider must be connected before making requests."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/urbanairship/location/UALocationProvider;->connectedAdapter:Lcom/urbanairship/location/LocationAdapter;

    if-nez v1, :cond_1

    .line 139
    const-string v1, "UALocationProvider - Ignoring request, connected adapter unavailable."

    invoke-static {v1}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 149
    :goto_0
    return-object v0

    .line 143
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UALocationProvider - Requesting single location update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/urbanairship/location/UALocationProvider;->connectedAdapter:Lcom/urbanairship/location/LocationAdapter;

    invoke-interface {v1, p1}, Lcom/urbanairship/location/LocationAdapter;->requestSingleLocation(Lcom/urbanairship/location/LocationRequestOptions;)Lcom/urbanairship/PendingResult;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v1

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to request location: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
