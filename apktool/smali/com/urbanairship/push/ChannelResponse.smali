.class Lcom/urbanairship/push/ChannelResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final response:Lcom/urbanairship/http/Response;


# direct methods
.method public constructor <init>(Lcom/urbanairship/http/Response;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/urbanairship/push/ChannelResponse;->response:Lcom/urbanairship/http/Response;

    .line 47
    return-void
.end method


# virtual methods
.method getChannelId()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 64
    iget-object v1, p0, Lcom/urbanairship/push/ChannelResponse;->response:Lcom/urbanairship/http/Response;

    invoke-virtual {v1}, Lcom/urbanairship/http/Response;->getResponseBody()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    :goto_0
    return-object v0

    .line 69
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/urbanairship/push/ChannelResponse;->response:Lcom/urbanairship/http/Response;

    invoke-virtual {v2}, Lcom/urbanairship/http/Response;->getResponseBody()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "channel_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method getChannelLocation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/urbanairship/push/ChannelResponse;->response:Lcom/urbanairship/http/Response;

    invoke-virtual {v0}, Lcom/urbanairship/http/Response;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/urbanairship/push/ChannelResponse;->response:Lcom/urbanairship/http/Response;

    invoke-virtual {v0}, Lcom/urbanairship/http/Response;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Location"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 83
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 84
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 88
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/urbanairship/push/ChannelResponse;->response:Lcom/urbanairship/http/Response;

    invoke-virtual {v0}, Lcom/urbanairship/http/Response;->getStatus()I

    move-result v0

    return v0
.end method
