.class public Lcom/urbanairship/analytics/PushArrivedEvent;
.super Lcom/urbanairship/analytics/Event;
.source "SourceFile"


# static fields
.field static final TYPE:Ljava/lang/String; = "push_arrived"


# instance fields
.field private final pushId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/urbanairship/analytics/Event;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/urbanairship/analytics/PushArrivedEvent;->pushId:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method protected final getEventData()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 63
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 66
    :try_start_0
    const-string v0, "push_id"

    iget-object v2, p0, Lcom/urbanairship/analytics/PushArrivedEvent;->pushId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    const-string v0, "connection_type"

    invoke-virtual {p0}, Lcom/urbanairship/analytics/PushArrivedEvent;->getConnectionType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    invoke-virtual {p0}, Lcom/urbanairship/analytics/PushArrivedEvent;->getConnectionSubType()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v0}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    const-string v2, "connection_subtype"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    :cond_0
    const-string v0, "carrier"

    invoke-virtual {p0}, Lcom/urbanairship/analytics/PushArrivedEvent;->getCarrier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-object v1

    .line 78
    :catch_0
    move-exception v0

    .line 79
    const-string v2, "PushArrivedEvent - Error constructing JSON data."

    invoke-static {v2, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, "push_arrived"

    return-object v0
.end method
