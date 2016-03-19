.class public Lcom/urbanairship/analytics/LocationEvent;
.super Lcom/urbanairship/analytics/Event;
.source "SourceFile"


# static fields
.field static final FOREGROUND_KEY:Ljava/lang/String; = "foreground"

.field static final H_ACCURACY_KEY:Ljava/lang/String; = "h_accuracy"

.field static final LATITUDE_KEY:Ljava/lang/String; = "lat"

.field static final LONGITUDE_KEY:Ljava/lang/String; = "long"

.field static final PROVIDER_KEY:Ljava/lang/String; = "provider"

.field static final REQUESTED_ACCURACY_KEY:Ljava/lang/String; = "requested_accuracy"

.field static final TYPE:Ljava/lang/String; = "location"

.field static final UPDATE_DISTANCE_KEY:Ljava/lang/String; = "update_dist"

.field static final UPDATE_TYPE_KEY:Ljava/lang/String; = "update_type"

.field static final V_ACCURACY_KEY:Ljava/lang/String; = "v_accuracy"


# instance fields
.field private final accuracy:Ljava/lang/String;

.field private final foreground:Ljava/lang/String;

.field private final latitude:Ljava/lang/String;

.field private final longitude:Ljava/lang/String;

.field private final provider:Ljava/lang/String;

.field private final requestedAccuracy:Ljava/lang/String;

.field private final updateDistance:Ljava/lang/String;

.field private final updateType:Lcom/urbanairship/analytics/LocationEvent$UpdateType;


# direct methods
.method public constructor <init>(Landroid/location/Location;Lcom/urbanairship/analytics/LocationEvent$UpdateType;IIZ)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 83
    invoke-direct {p0}, Lcom/urbanairship/analytics/Event;-><init>()V

    .line 90
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.6f"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/analytics/LocationEvent;->latitude:Ljava/lang/String;

    .line 91
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.6f"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/analytics/LocationEvent;->longitude:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UNKNOWN"

    :goto_0
    iput-object v0, p0, Lcom/urbanairship/analytics/LocationEvent;->provider:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/analytics/LocationEvent;->accuracy:Ljava/lang/String;

    .line 95
    if-ltz p3, :cond_1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/urbanairship/analytics/LocationEvent;->requestedAccuracy:Ljava/lang/String;

    .line 96
    if-ltz p4, :cond_2

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/urbanairship/analytics/LocationEvent;->updateDistance:Ljava/lang/String;

    .line 97
    if-eqz p5, :cond_3

    const-string v0, "true"

    :goto_3
    iput-object v0, p0, Lcom/urbanairship/analytics/LocationEvent;->foreground:Ljava/lang/String;

    .line 98
    iput-object p2, p0, Lcom/urbanairship/analytics/LocationEvent;->updateType:Lcom/urbanairship/analytics/LocationEvent$UpdateType;

    .line 99
    return-void

    .line 93
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 95
    :cond_1
    const-string v0, "NONE"

    goto :goto_1

    .line 96
    :cond_2
    const-string v0, "NONE"

    goto :goto_2

    .line 97
    :cond_3
    const-string v0, "false"

    goto :goto_3
.end method


# virtual methods
.method protected final getEventData()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 109
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 112
    :try_start_0
    const-string v0, "lat"

    iget-object v2, p0, Lcom/urbanairship/analytics/LocationEvent;->latitude:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    const-string v0, "long"

    iget-object v2, p0, Lcom/urbanairship/analytics/LocationEvent;->longitude:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    const-string v0, "requested_accuracy"

    iget-object v2, p0, Lcom/urbanairship/analytics/LocationEvent;->requestedAccuracy:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    const-string v0, "update_type"

    iget-object v2, p0, Lcom/urbanairship/analytics/LocationEvent;->updateType:Lcom/urbanairship/analytics/LocationEvent$UpdateType;

    invoke-virtual {v2}, Lcom/urbanairship/analytics/LocationEvent$UpdateType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    const-string v0, "provider"

    iget-object v2, p0, Lcom/urbanairship/analytics/LocationEvent;->provider:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    const-string v0, "h_accuracy"

    iget-object v2, p0, Lcom/urbanairship/analytics/LocationEvent;->accuracy:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    const-string v0, "v_accuracy"

    const-string v2, "NONE"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    const-string v0, "foreground"

    iget-object v2, p0, Lcom/urbanairship/analytics/LocationEvent;->foreground:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    const-string v0, "update_dist"

    iget-object v2, p0, Lcom/urbanairship/analytics/LocationEvent;->updateDistance:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    return-object v1

    .line 121
    :catch_0
    move-exception v0

    .line 122
    const-string v2, "LocationEvent - Error constructing JSON data."

    invoke-static {v2, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const-string v0, "location"

    return-object v0
.end method
