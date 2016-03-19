.class Lcom/urbanairship/push/TagGroupsAPIClient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ADD_KEY:Ljava/lang/String; = "add"

.field private static final AMAZON_CHANNEL_KEY:Ljava/lang/String; = "amazon_channel"

.field private static final ANDROID_CHANNEL_KEY:Ljava/lang/String; = "android_channel"

.field private static final AUDIENCE_KEY:Ljava/lang/String; = "audience"

.field private static final CHANNEL_TAGS_PATH:Ljava/lang/String; = "api/channels/tags/"

.field private static final NAMED_USER_ID_KEY:Ljava/lang/String; = "named_user_id"

.field private static final NAMED_USER_TAGS_PATH:Ljava/lang/String; = "api/named_users/tags/"

.field private static final REMOVE_KEY:Ljava/lang/String; = "remove"


# instance fields
.field private final appKey:Ljava/lang/String;

.field private final appSecret:Ljava/lang/String;

.field private final requestFactory:Lcom/urbanairship/http/RequestFactory;

.field private final urlString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/urbanairship/AirshipConfigOptions;)V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/urbanairship/http/RequestFactory;

    invoke-direct {v0}, Lcom/urbanairship/http/RequestFactory;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/urbanairship/push/TagGroupsAPIClient;-><init>(Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/http/RequestFactory;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/http/RequestFactory;)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p2, p0, Lcom/urbanairship/push/TagGroupsAPIClient;->requestFactory:Lcom/urbanairship/http/RequestFactory;

    .line 72
    iget-object v0, p1, Lcom/urbanairship/AirshipConfigOptions;->hostURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/urbanairship/push/TagGroupsAPIClient;->urlString:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Lcom/urbanairship/AirshipConfigOptions;->getAppKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/TagGroupsAPIClient;->appKey:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Lcom/urbanairship/AirshipConfigOptions;->getAppSecret()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/TagGroupsAPIClient;->appSecret:Ljava/lang/String;

    .line 75
    return-void
.end method

.method private request(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/urbanairship/http/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/urbanairship/http/Response;"
        }
    .end annotation

    .prologue
    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 143
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 146
    invoke-interface {v1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v2, "audience"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-interface {p4}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    const-string v1, "add"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_0
    invoke-interface {p5}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 152
    const-string v1, "remove"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_1
    :try_start_0
    invoke-static {v0}, Lcom/urbanairship/json/JsonValue;->wrap(Ljava/lang/Object;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/urbanairship/json/JsonException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating tag groups with payload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/urbanairship/push/TagGroupsAPIClient;->requestFactory:Lcom/urbanairship/http/RequestFactory;

    const-string v2, "POST"

    invoke-virtual {v1, v2, p1}, Lcom/urbanairship/http/RequestFactory;->createRequest(Ljava/lang/String;Ljava/net/URL;)Lcom/urbanairship/http/Request;

    move-result-object v1

    iget-object v2, p0, Lcom/urbanairship/push/TagGroupsAPIClient;->appKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/urbanairship/push/TagGroupsAPIClient;->appSecret:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/urbanairship/http/Request;->setCredentials(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v1

    const-string v2, "application/json"

    invoke-virtual {v1, v0, v2}, Lcom/urbanairship/http/Request;->setRequestBody(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v0

    const-string v1, "Accept"

    const-string v2, "application/vnd.urbanairship+json; version=3;"

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/http/Request;->execute()Lcom/urbanairship/http/Response;

    move-result-object v0

    .line 171
    if-nez v0, :cond_2

    .line 172
    const-string v1, "Failed to receive a response for tag groups."

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 177
    :goto_0
    return-object v0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    const-string v1, "Failed to create channel tag groups payload as json."

    invoke-static {v1, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 160
    const/4 v0, 0x0

    goto :goto_0

    .line 174
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received a response for tag groups: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method getChannelType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 186
    const/4 v0, 0x0

    .line 187
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getPlatformType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 195
    :goto_0
    return-object v0

    .line 189
    :pswitch_0
    const-string v0, "android_channel"

    goto :goto_0

    .line 192
    :pswitch_1
    const-string v0, "amazon_channel"

    goto :goto_0

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getTagURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 4

    .prologue
    .line 207
    const/4 v1, 0x0

    .line 209
    :try_start_0
    new-instance v0, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/urbanairship/push/TagGroupsAPIClient;->urlString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_0
    return-object v0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    const-string v2, "Invalid tag URL."

    invoke-static {v2, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method updateChannelTags(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/urbanairship/http/Response;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/urbanairship/http/Response;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 115
    const-string v1, "api/channels/tags/"

    invoke-virtual {p0, v1}, Lcom/urbanairship/push/TagGroupsAPIClient;->getTagURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 116
    if-nez v1, :cond_0

    .line 117
    const-string v1, "The channel tags URL cannot be null."

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 126
    :goto_0
    return-object v0

    .line 121
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    const-string v1, "Both addTags and removeTags cannot be empty."

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {p0}, Lcom/urbanairship/push/TagGroupsAPIClient;->getChannelType()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/urbanairship/push/TagGroupsAPIClient;->request(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/urbanairship/http/Response;

    move-result-object v0

    goto :goto_0
.end method

.method updateNamedUserTags(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/urbanairship/http/Response;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/urbanairship/http/Response;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 89
    const-string v1, "api/named_users/tags/"

    invoke-virtual {p0, v1}, Lcom/urbanairship/push/TagGroupsAPIClient;->getTagURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 90
    if-nez v1, :cond_0

    .line 91
    const-string v1, "The named user tags URL cannot be null."

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 100
    :goto_0
    return-object v0

    .line 95
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    const-string v1, "Both addTags and removeTags cannot be empty."

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_1
    const-string v2, "named_user_id"

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/urbanairship/push/TagGroupsAPIClient;->request(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/urbanairship/http/Response;

    move-result-object v0

    goto :goto_0
.end method
