.class Lcom/urbanairship/richpush/UserServiceDelegate;
.super Lcom/urbanairship/BaseIntentService$Delegate;
.source "SourceFile"


# static fields
.field private static final LAST_UPDATE_TIME:Ljava/lang/String; = "com.urbanairship.user.LAST_UPDATE_TIME"

.field private static final PAYLOAD_ADD_KEY:Ljava/lang/String; = "add"

.field private static final PAYLOAD_AMAZON_CHANNELS_KEY:Ljava/lang/String; = "amazon_channels"

.field private static final PAYLOAD_ANDROID_CHANNELS_KEY:Ljava/lang/String; = "android_channels"

.field private static final USER_CREATION_PATH:Ljava/lang/String; = "api/user/"

.field static final USER_UPDATE_INTERVAL_MS:J = 0x5265c00L

.field private static final USER_UPDATE_PATH:Ljava/lang/String; = "api/user/%s/"


# instance fields
.field private final airship:Lcom/urbanairship/UAirship;

.field private final requestFactory:Lcom/urbanairship/http/RequestFactory;

.field private final user:Lcom/urbanairship/richpush/RichPushUser;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;)V
    .locals 2

    .prologue
    .line 69
    new-instance v0, Lcom/urbanairship/http/RequestFactory;

    invoke-direct {v0}, Lcom/urbanairship/http/RequestFactory;-><init>()V

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/urbanairship/richpush/UserServiceDelegate;-><init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;Lcom/urbanairship/http/RequestFactory;Lcom/urbanairship/UAirship;)V

    .line 70
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;Lcom/urbanairship/http/RequestFactory;Lcom/urbanairship/UAirship;)V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/urbanairship/BaseIntentService$Delegate;-><init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;)V

    .line 76
    iput-object p3, p0, Lcom/urbanairship/richpush/UserServiceDelegate;->requestFactory:Lcom/urbanairship/http/RequestFactory;

    .line 77
    iput-object p4, p0, Lcom/urbanairship/richpush/UserServiceDelegate;->airship:Lcom/urbanairship/UAirship;

    .line 78
    invoke-virtual {p4}, Lcom/urbanairship/UAirship;->getRichPushManager()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushManager;->getRichPushUser()Lcom/urbanairship/richpush/RichPushUser;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/richpush/UserServiceDelegate;->user:Lcom/urbanairship/richpush/RichPushUser;

    .line 79
    return-void
.end method

.method private createNewUserPayload(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 209
    invoke-direct {p0}, Lcom/urbanairship/richpush/UserServiceDelegate;->getPayloadChannelsKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v1, Lcom/urbanairship/json/JsonValue;->NULL:Lcom/urbanairship/json/JsonValue;

    invoke-static {v0, v1}, Lcom/urbanairship/json/JsonValue;->wrap(Ljava/lang/Object;Lcom/urbanairship/json/JsonValue;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createUpdateUserPayload(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 219
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 220
    const-string v1, "add"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 223
    invoke-direct {p0}, Lcom/urbanairship/richpush/UserServiceDelegate;->getPayloadChannelsKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/urbanairship/json/JsonValue;->NULL:Lcom/urbanairship/json/JsonValue;

    invoke-static {v1, v0}, Lcom/urbanairship/json/JsonValue;->wrap(Ljava/lang/Object;Lcom/urbanairship/json/JsonValue;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createUser()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 112
    iget-object v1, p0, Lcom/urbanairship/richpush/UserServiceDelegate;->airship:Lcom/urbanairship/UAirship;

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/push/PushManager;->getChannelId()Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-static {v1}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    const-string v0, "UserServiceDelegate - No Channel. User will be created after channel registrations finishes."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    move v0, v2

    .line 161
    :goto_0
    return v0

    .line 118
    :cond_0
    const-string v3, "api/user/"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/urbanairship/richpush/RichPushUpdateService;->getUserURL(Ljava/lang/String;[Ljava/lang/Object;)Ljava/net/URL;

    move-result-object v3

    .line 119
    if-nez v3, :cond_1

    move v0, v2

    .line 120
    goto :goto_0

    .line 123
    :cond_1
    invoke-direct {p0, v1}, Lcom/urbanairship/richpush/UserServiceDelegate;->createNewUserPayload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UserServiceDelegate - Creating Rich Push user with payload: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 125
    iget-object v4, p0, Lcom/urbanairship/richpush/UserServiceDelegate;->requestFactory:Lcom/urbanairship/http/RequestFactory;

    const-string v5, "POST"

    invoke-virtual {v4, v5, v3}, Lcom/urbanairship/http/RequestFactory;->createRequest(Ljava/lang/String;Ljava/net/URL;)Lcom/urbanairship/http/Request;

    move-result-object v3

    iget-object v4, p0, Lcom/urbanairship/richpush/UserServiceDelegate;->airship:Lcom/urbanairship/UAirship;

    invoke-virtual {v4}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/AirshipConfigOptions;->getAppKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/urbanairship/richpush/UserServiceDelegate;->airship:Lcom/urbanairship/UAirship;

    invoke-virtual {v5}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/AirshipConfigOptions;->getAppSecret()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/urbanairship/http/Request;->setCredentials(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v3

    const-string v4, "application/json"

    invoke-virtual {v3, v1, v4}, Lcom/urbanairship/http/Request;->setRequestBody(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v1

    const-string v3, "Accept"

    const-string v4, "application/vnd.urbanairship+json; version=3;"

    invoke-virtual {v1, v3, v4}, Lcom/urbanairship/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/http/Request;->execute()Lcom/urbanairship/http/Response;

    move-result-object v3

    .line 132
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/urbanairship/http/Response;->getStatus()I

    move-result v1

    const/16 v4, 0xc9

    if-eq v1, v4, :cond_3

    .line 133
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserServiceDelegate - Rich Push user creation failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    move v0, v2

    .line 134
    goto :goto_0

    .line 141
    :cond_3
    :try_start_0
    invoke-virtual {v3}, Lcom/urbanairship/http/Response;->getResponseBody()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/json/JsonValue;->parseString(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/json/JsonValue;->getMap()Lcom/urbanairship/json/JsonMap;

    move-result-object v4

    .line 142
    if-eqz v4, :cond_6

    .line 143
    const-string v0, "user_id"

    invoke-virtual {v4, v0}, Lcom/urbanairship/json/JsonMap;->get(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->getString()Ljava/lang/String;

    move-result-object v1

    .line 144
    const-string v0, "password"

    invoke-virtual {v4, v0}, Lcom/urbanairship/json/JsonMap;->get(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->getString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/urbanairship/json/JsonException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 151
    :goto_1
    invoke-static {v1}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v0}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 152
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserServiceDelegate - Rich Push user creation failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    move v0, v2

    .line 153
    goto/16 :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserServiceDelegate - Unable to parse Rich Push user response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    move v0, v2

    .line 148
    goto/16 :goto_0

    .line 156
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created Rich Push user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/urbanairship/richpush/UserServiceDelegate;->getDataStore()Lcom/urbanairship/PreferenceDataStore;

    move-result-object v2

    const-string v3, "com.urbanairship.user.LAST_UPDATE_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;J)V

    .line 158
    invoke-virtual {p0}, Lcom/urbanairship/richpush/UserServiceDelegate;->getDataStore()Lcom/urbanairship/PreferenceDataStore;

    move-result-object v2

    const-string v3, "com.urbanairship.user.LAST_MESSAGE_REFRESH_TIME"

    invoke-virtual {v2, v3}, Lcom/urbanairship/PreferenceDataStore;->remove(Ljava/lang/String;)V

    .line 159
    iget-object v2, p0, Lcom/urbanairship/richpush/UserServiceDelegate;->user:Lcom/urbanairship/richpush/RichPushUser;

    invoke-virtual {v2, v1, v0}, Lcom/urbanairship/richpush/RichPushUser;->setUser(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_6
    move-object v1, v0

    goto :goto_1
.end method

.method private getPayloadChannelsKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/urbanairship/richpush/UserServiceDelegate;->airship:Lcom/urbanairship/UAirship;

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getPlatformType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 239
    const-string v0, "android_channels"

    :goto_0
    return-object v0

    .line 236
    :pswitch_0
    const-string v0, "amazon_channels"

    goto :goto_0

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private updateUser()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 170
    iget-object v2, p0, Lcom/urbanairship/richpush/UserServiceDelegate;->airship:Lcom/urbanairship/UAirship;

    invoke-virtual {v2}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/PushManager;->getChannelId()Ljava/lang/String;

    move-result-object v2

    .line 172
    invoke-static {v2}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 173
    const-string v1, "UserServiceDelegate - No Channel. Skipping Rich Push user update."

    invoke-static {v1}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 199
    :cond_0
    :goto_0
    return v0

    .line 178
    :cond_1
    const-string v3, "api/user/%s/"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/urbanairship/richpush/UserServiceDelegate;->user:Lcom/urbanairship/richpush/RichPushUser;

    invoke-virtual {v5}, Lcom/urbanairship/richpush/RichPushUser;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Lcom/urbanairship/richpush/RichPushUpdateService;->getUserURL(Ljava/lang/String;[Ljava/lang/Object;)Ljava/net/URL;

    move-result-object v3

    .line 179
    if-eqz v3, :cond_0

    .line 183
    invoke-direct {p0, v2}, Lcom/urbanairship/richpush/UserServiceDelegate;->createUpdateUserPayload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 184
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UserServiceDelegate - Updating user with payload: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 185
    iget-object v4, p0, Lcom/urbanairship/richpush/UserServiceDelegate;->requestFactory:Lcom/urbanairship/http/RequestFactory;

    const-string v5, "POST"

    invoke-virtual {v4, v5, v3}, Lcom/urbanairship/http/RequestFactory;->createRequest(Ljava/lang/String;Ljava/net/URL;)Lcom/urbanairship/http/Request;

    move-result-object v3

    iget-object v4, p0, Lcom/urbanairship/richpush/UserServiceDelegate;->user:Lcom/urbanairship/richpush/RichPushUser;

    invoke-virtual {v4}, Lcom/urbanairship/richpush/RichPushUser;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/urbanairship/richpush/UserServiceDelegate;->user:Lcom/urbanairship/richpush/RichPushUser;

    invoke-virtual {v5}, Lcom/urbanairship/richpush/RichPushUser;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/urbanairship/http/Request;->setCredentials(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v3

    const-string v4, "application/json"

    invoke-virtual {v3, v2, v4}, Lcom/urbanairship/http/Request;->setRequestBody(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v2

    const-string v3, "Accept"

    const-string v4, "application/vnd.urbanairship+json; version=3;"

    invoke-virtual {v2, v3, v4}, Lcom/urbanairship/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/http/Request;->execute()Lcom/urbanairship/http/Response;

    move-result-object v2

    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UserServiceDelegate - Update Rich Push user response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 192
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/urbanairship/http/Response;->getStatus()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_2

    .line 193
    const-string v0, "Rich Push user updated."

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/urbanairship/richpush/UserServiceDelegate;->getDataStore()Lcom/urbanairship/PreferenceDataStore;

    move-result-object v0

    const-string v2, "com.urbanairship.user.LAST_UPDATE_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;J)V

    move v0, v1

    .line 195
    goto/16 :goto_0

    .line 198
    :cond_2
    invoke-virtual {p0}, Lcom/urbanairship/richpush/UserServiceDelegate;->getDataStore()Lcom/urbanairship/PreferenceDataStore;

    move-result-object v1

    const-string v2, "com.urbanairship.user.LAST_UPDATE_TIME"

    invoke-virtual {v1, v2, v0}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 83
    const-string v0, "com.urbanairship.richpush.USER_UPDATE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    const-string v0, "com.urbanairship.richpush.EXTRA_FORCEFULLY"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    invoke-virtual {p0}, Lcom/urbanairship/richpush/UserServiceDelegate;->getDataStore()Lcom/urbanairship/PreferenceDataStore;

    move-result-object v0

    const-string v1, "com.urbanairship.user.LAST_UPDATE_TIME"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/urbanairship/PreferenceDataStore;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 90
    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    const-wide/32 v4, 0x5265c00

    add-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 97
    :cond_2
    invoke-static {}, Lcom/urbanairship/richpush/RichPushUser;->isCreated()Z

    move-result v0

    if-nez v0, :cond_3

    .line 98
    invoke-direct {p0}, Lcom/urbanairship/richpush/UserServiceDelegate;->createUser()Z

    move-result v0

    .line 103
    :goto_1
    invoke-static {p1, v0}, Lcom/urbanairship/richpush/RichPushUpdateService;->respond(Landroid/content/Intent;Z)V

    goto :goto_0

    .line 100
    :cond_3
    invoke-direct {p0}, Lcom/urbanairship/richpush/UserServiceDelegate;->updateUser()Z

    move-result v0

    goto :goto_1
.end method
