.class Lcom/urbanairship/richpush/InboxServiceDelegate;
.super Lcom/urbanairship/BaseIntentService$Delegate;
.source "SourceFile"


# static fields
.field private static final CHANNEL_ID_HEADER:Ljava/lang/String; = "X-UA-Channel-ID"

.field private static final DELETE_MESSAGES_KEY:Ljava/lang/String; = "delete"

.field private static final DELETE_MESSAGES_PATH:Ljava/lang/String; = "api/user/%s/messages/delete/"

.field private static final MARK_READ_MESSAGES_KEY:Ljava/lang/String; = "mark_as_read"

.field private static final MARK_READ_MESSAGES_PATH:Ljava/lang/String; = "api/user/%s/messages/unread/"

.field private static final MESSAGES_PATH:Ljava/lang/String; = "api/user/%s/messages/"

.field private static final MESSAGE_URL:Ljava/lang/String; = "api/user/%s/messages/message/%s/"


# instance fields
.field private final airship:Lcom/urbanairship/UAirship;

.field private final hostUrl:Ljava/lang/String;

.field private final requestFactory:Lcom/urbanairship/http/RequestFactory;

.field private final resolver:Lcom/urbanairship/richpush/RichPushResolver;

.field private final user:Lcom/urbanairship/richpush/RichPushUser;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;)V
    .locals 6

    .prologue
    .line 75
    new-instance v3, Lcom/urbanairship/http/RequestFactory;

    invoke-direct {v3}, Lcom/urbanairship/http/RequestFactory;-><init>()V

    new-instance v4, Lcom/urbanairship/richpush/RichPushResolver;

    invoke-direct {v4, p1}, Lcom/urbanairship/richpush/RichPushResolver;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/urbanairship/richpush/InboxServiceDelegate;-><init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;Lcom/urbanairship/http/RequestFactory;Lcom/urbanairship/richpush/RichPushResolver;Lcom/urbanairship/UAirship;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;Lcom/urbanairship/http/RequestFactory;Lcom/urbanairship/richpush/RichPushResolver;Lcom/urbanairship/UAirship;)V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/urbanairship/BaseIntentService$Delegate;-><init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;)V

    .line 82
    iput-object p3, p0, Lcom/urbanairship/richpush/InboxServiceDelegate;->requestFactory:Lcom/urbanairship/http/RequestFactory;

    .line 83
    iput-object p4, p0, Lcom/urbanairship/richpush/InboxServiceDelegate;->resolver:Lcom/urbanairship/richpush/RichPushResolver;

    .line 84
    iput-object p5, p0, Lcom/urbanairship/richpush/InboxServiceDelegate;->airship:Lcom/urbanairship/UAirship;

    .line 85
    invoke-virtual {p5}, Lcom/urbanairship/UAirship;->getRichPushManager()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushManager;->getRichPushUser()Lcom/urbanairship/richpush/RichPushUser;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/richpush/InboxServiceDelegate;->user:Lcom/urbanairship/richpush/RichPushUser;

    .line 86
    invoke-virtual {p5}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v0

    iget-object v0, v0, Lcom/urbanairship/AirshipConfigOptions;->hostURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/urbanairship/richpush/InboxServiceDelegate;->hostUrl:Ljava/lang/String;

    .line 87
    return-void
.end method

.method private buildMessagesPayload(Ljava/lang/String;Ljava/util/Set;)Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 320
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 321
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 322
    iget-object v0, p0, Lcom/urbanairship/richpush/InboxServiceDelegate;->user:Lcom/urbanairship/richpush/RichPushUser;

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushUser;->getId()Ljava/lang/String;

    move-result-object v2

    .line 323
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 324
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/urbanairship/richpush/InboxServiceDelegate;->hostUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "api/user/%s/messages/message/%s/"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 325
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 329
    :catch_0
    move-exception v0

    .line 330
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 332
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 327
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    .line 328
    goto :goto_1
.end method

.method private getMessageIdsFromCursor(Landroid/database/Cursor;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 292
    if-nez p1, :cond_0

    .line 293
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 308
    :goto_0
    return-object v0

    .line 296
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(I)V

    move v0, v1

    .line 299
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 300
    if-ne v0, v1, :cond_1

    .line 301
    const-string v0, "message_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 303
    :cond_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 306
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    move-object v0, v2

    .line 308
    goto :goto_0
.end method

.method private messagesFromResponse(Ljava/lang/String;)[Landroid/content/ContentValues;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 337
    if-nez p1, :cond_1

    .line 338
    const/4 v0, 0x0

    .line 368
    :cond_0
    return-object v0

    .line 341
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "messages"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 343
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 344
    new-array v0, v3, [Landroid/content/ContentValues;

    .line 346
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 347
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 349
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 350
    const-string v6, "timestamp"

    const-string v7, "message_sent"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string v6, "message_id"

    const-string v7, "message_id"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v6, "message_url"

    const-string v7, "message_url"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v6, "message_body_url"

    const-string v7, "message_body_url"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v6, "message_read_url"

    const-string v7, "message_read_url"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v6, "title"

    const-string v7, "title"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v6, "unread_orig"

    const-string v7, "unread"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 358
    const-string v6, "extra"

    const-string v7, "extra"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v6, "raw_message_object"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string v6, "message_expiry"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 362
    const-string v6, "expiration_timestamp"

    const-string v7, "message_expiry"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :cond_2
    aput-object v5, v0, v1

    .line 346
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method private syncDeletedMessageState()V
    .locals 5

    .prologue
    .line 202
    iget-object v0, p0, Lcom/urbanairship/richpush/InboxServiceDelegate;->resolver:Lcom/urbanairship/richpush/RichPushResolver;

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushResolver;->getDeletedMessages()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/urbanairship/richpush/InboxServiceDelegate;->getMessageIdsFromCursor(Landroid/database/Cursor;)Ljava/util/Set;

    move-result-object v0

    .line 204
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    const-string v1, "api/user/%s/messages/delete/"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/urbanairship/richpush/InboxServiceDelegate;->user:Lcom/urbanairship/richpush/RichPushUser;

    invoke-virtual {v4}, Lcom/urbanairship/richpush/RichPushUser;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/urbanairship/richpush/RichPushUpdateService;->getUserURL(Ljava/lang/String;[Ljava/lang/Object;)Ljava/net/URL;

    move-result-object v1

    .line 210
    if-eqz v1, :cond_0

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InboxServiceDelegate - Found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " messages to delete."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 220
    const-string v2, "delete"

    invoke-direct {p0, v2, v0}, Lcom/urbanairship/richpush/InboxServiceDelegate;->buildMessagesPayload(Ljava/lang/String;Ljava/util/Set;)Lorg/json/JSONObject;

    move-result-object v2

    .line 221
    if-eqz v2, :cond_0

    .line 225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InboxServiceDelegate - Deleting inbox messages with payload: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 226
    iget-object v3, p0, Lcom/urbanairship/richpush/InboxServiceDelegate;->requestFactory:Lcom/urbanairship/http/RequestFactory;

    const-string v4, "POST"

    invoke-virtual {v3, v4, v1}, Lcom/urbanairship/http/RequestFactory;->createRequest(Ljava/lang/String;Ljava/net/URL;)Lcom/urbanairship/http/Request;

    move-result-object v1

    iget-object v3, p0, Lcom/urbanairship/richpush/InboxServiceDelegate;->user:Lcom/urbanairship/richpush/RichPushUser;

    invoke-virtual {v3}, Lcom/urbanairship/richpush/RichPushUser;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/urbanairship/richpush/InboxServiceDelegate;->user:Lcom/urbanairship/richpush/RichPushUser;

    invoke-virtual {v4}, Lcom/urbanairship/richpush/RichPushUser;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/urbanairship/http/Request;->setCredentials(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v1

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "application/json"

    invoke-virtual {v1, v2, v3}, Lcom/urbanairship/http/Request;->setRequestBody(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v1

    const-string v2, "X-UA-Channel-ID"

    iget-object v3, p0, Lcom/urbanairship/richpush/InboxServiceDelegate;->airship:Lcom/urbanairship/UAirship;

    invoke-virtual {v3}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/PushManager;->getChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/urbanairship/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v1

    const-string v2, "Accept"

    const-string v3, "application/vnd.urbanairship+json; version=3;"

    invoke-virtual {v1, v2, v3}, Lcom/urbanairship/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/http/Request;->execute()Lcom/urbanairship/http/Response;

    move-result-object v1

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InboxServiceDelegate - Delete inbox messages response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 234
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/urbanairship/http/Response;->getStatus()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 235
    iget-object v1, p0, Lcom/urbanairship/richpush/InboxServiceDelegate;->resolver:Lcom/urbanairship/richpush/RichPushResolver;

    invoke-virtual {v1, v0}, Lcom/urbanairship/richpush/RichPushResolver;->deleteMessages(Ljava/util/Set;)I

    goto/16 :goto_0
.end method

.method private syncReadMessageState()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 243
    iget-object v0, p0, Lcom/urbanairship/richpush/InboxServiceDelegate;->resolver:Lcom/urbanairship/richpush/RichPushResolver;

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushResolver;->getReadUpdatedMessages()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/urbanairship/richpush/InboxServiceDelegate;->getMessageIdsFromCursor(Landroid/database/Cursor;)Ljava/util/Set;

    move-result-object v0

    .line 245
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    const-string v1, "api/user/%s/messages/unread/"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/urbanairship/richpush/InboxServiceDelegate;->user:Lcom/urbanairship/richpush/RichPushUser;

    invoke-virtual {v3}, Lcom/urbanairship/richpush/RichPushUser;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/urbanairship/richpush/RichPushUpdateService;->getUserURL(Ljava/lang/String;[Ljava/lang/Object;)Ljava/net/URL;

    move-result-object v1

    .line 252
    if-eqz v1, :cond_0

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InboxServiceDelegate - Found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " messages to mark read."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 262
    const-string v2, "mark_as_read"

    invoke-direct {p0, v2, v0}, Lcom/urbanairship/richpush/InboxServiceDelegate;->buildMessagesPayload(Ljava/lang/String;Ljava/util/Set;)Lorg/json/JSONObject;

    move-result-object v2

    .line 263
    if-eqz v2, :cond_0

    .line 267
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InboxServiceDelegate - Marking inbox messages read request with payload: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 268
    iget-object v3, p0, Lcom/urbanairship/richpush/InboxServiceDelegate;->requestFactory:Lcom/urbanairship/http/RequestFactory;

    const-string v4, "POST"

    invoke-virtual {v3, v4, v1}, Lcom/urbanairship/http/RequestFactory;->createRequest(Ljava/lang/String;Ljava/net/URL;)Lcom/urbanairship/http/Request;

    move-result-object v1

    iget-object v3, p0, Lcom/urbanairship/richpush/InboxServiceDelegate;->user:Lcom/urbanairship/richpush/RichPushUser;

    invoke-virtual {v3}, Lcom/urbanairship/richpush/RichPushUser;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/urbanairship/richpush/InboxServiceDelegate;->user:Lcom/urbanairship/richpush/RichPushUser;

    invoke-virtual {v4}, Lcom/urbanairship/richpush/RichPushUser;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/urbanairship/http/Request;->setCredentials(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v1

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "application/json"

    invoke-virtual {v1, v2, v3}, Lcom/urbanairship/http/Request;->setRequestBody(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v1

    const-string v2, "X-UA-Channel-ID"

    iget-object v3, p0, Lcom/urbanairship/richpush/InboxServiceDelegate;->airship:Lcom/urbanairship/UAirship;

    invoke-virtual {v3}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/PushManager;->getChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/urbanairship/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v1

    const-string v2, "Accept"

    const-string v3, "application/vnd.urbanairship+json; version=3;"

    invoke-virtual {v1, v2, v3}, Lcom/urbanairship/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/http/Request;->execute()Lcom/urbanairship/http/Response;

    move-result-object v1

    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InboxServiceDelegate - Mark inbox messages read response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 277
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/urbanairship/http/Response;->getStatus()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 278
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 279
    const-string v2, "unread_orig"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 280
    iget-object v2, p0, Lcom/urbanairship/richpush/InboxServiceDelegate;->resolver:Lcom/urbanairship/richpush/RichPushResolver;

    invoke-virtual {v2, v0, v1}, Lcom/urbanairship/richpush/RichPushResolver;->updateMessages(Ljava/util/Set;Landroid/content/ContentValues;)I

    goto/16 :goto_0
.end method

.method private updateInbox([Landroid/content/ContentValues;)V
    .locals 7

    .prologue
    .line 170
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 171
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 173
    array-length v3, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, p1, v0

    .line 174
    const-string v5, "message_id"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 175
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v6, p0, Lcom/urbanairship/richpush/InboxServiceDelegate;->resolver:Lcom/urbanairship/richpush/RichPushResolver;

    invoke-virtual {v6, v5, v4}, Lcom/urbanairship/richpush/RichPushResolver;->updateMessage(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    .line 178
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 184
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/ContentValues;

    .line 185
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 186
    iget-object v1, p0, Lcom/urbanairship/richpush/InboxServiceDelegate;->resolver:Lcom/urbanairship/richpush/RichPushResolver;

    invoke-virtual {v1, v0}, Lcom/urbanairship/richpush/RichPushResolver;->insertMessages([Landroid/content/ContentValues;)I

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/urbanairship/richpush/InboxServiceDelegate;->resolver:Lcom/urbanairship/richpush/RichPushResolver;

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushResolver;->getAllMessages()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/urbanairship/richpush/InboxServiceDelegate;->getMessageIdsFromCursor(Landroid/database/Cursor;)Ljava/util/Set;

    move-result-object v0

    .line 191
    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 192
    iget-object v1, p0, Lcom/urbanairship/richpush/InboxServiceDelegate;->resolver:Lcom/urbanairship/richpush/RichPushResolver;

    invoke-virtual {v1, v0}, Lcom/urbanairship/richpush/RichPushResolver;->deleteMessages(Ljava/util/Set;)I

    .line 195
    iget-object v0, p0, Lcom/urbanairship/richpush/InboxServiceDelegate;->airship:Lcom/urbanairship/UAirship;

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getRichPushManager()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushManager;->getRichPushInbox()Lcom/urbanairship/richpush/RichPushInbox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushInbox;->refresh()V

    .line 196
    return-void
.end method

.method private updateMessages()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 113
    const-string v2, "Refreshing inbox messages."

    invoke-static {v2}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 115
    const-string v2, "api/user/%s/messages/"

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/urbanairship/richpush/InboxServiceDelegate;->user:Lcom/urbanairship/richpush/RichPushUser;

    invoke-virtual {v4}, Lcom/urbanairship/richpush/RichPushUser;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/urbanairship/richpush/RichPushUpdateService;->getUserURL(Ljava/lang/String;[Ljava/lang/Object;)Ljava/net/URL;

    move-result-object v2

    .line 116
    if-nez v2, :cond_0

    .line 160
    :goto_0
    return v0

    .line 120
    :cond_0
    const-string v3, "InboxServiceDelegate - Fetching inbox messages."

    invoke-static {v3}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 121
    iget-object v3, p0, Lcom/urbanairship/richpush/InboxServiceDelegate;->requestFactory:Lcom/urbanairship/http/RequestFactory;

    const-string v4, "GET"

    invoke-virtual {v3, v4, v2}, Lcom/urbanairship/http/RequestFactory;->createRequest(Ljava/lang/String;Ljava/net/URL;)Lcom/urbanairship/http/Request;

    move-result-object v2

    iget-object v3, p0, Lcom/urbanairship/richpush/InboxServiceDelegate;->user:Lcom/urbanairship/richpush/RichPushUser;

    invoke-virtual {v3}, Lcom/urbanairship/richpush/RichPushUser;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/urbanairship/richpush/InboxServiceDelegate;->user:Lcom/urbanairship/richpush/RichPushUser;

    invoke-virtual {v4}, Lcom/urbanairship/richpush/RichPushUser;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/urbanairship/http/Request;->setCredentials(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v2

    const-string v3, "Accept"

    const-string v4, "application/vnd.urbanairship+json; version=3;"

    invoke-virtual {v2, v3, v4}, Lcom/urbanairship/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v2

    const-string v3, "X-UA-Channel-ID"

    iget-object v4, p0, Lcom/urbanairship/richpush/InboxServiceDelegate;->airship:Lcom/urbanairship/UAirship;

    invoke-virtual {v4}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/PushManager;->getChannelId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/urbanairship/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v2

    invoke-virtual {p0}, Lcom/urbanairship/richpush/InboxServiceDelegate;->getDataStore()Lcom/urbanairship/PreferenceDataStore;

    move-result-object v3

    const-string v4, "com.urbanairship.user.LAST_MESSAGE_REFRESH_TIME"

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v4, v6, v7}, Lcom/urbanairship/PreferenceDataStore;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/urbanairship/http/Request;->setIfModifiedSince(J)Lcom/urbanairship/http/Request;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/http/Request;->execute()Lcom/urbanairship/http/Response;

    move-result-object v3

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InboxServiceDelegate - Fetch inbox messages response: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 130
    if-nez v3, :cond_1

    const/4 v2, -0x1

    .line 133
    :goto_1
    const/16 v4, 0x130

    if-ne v2, v4, :cond_2

    .line 134
    const-string v0, "Inbox messages already up-to-date. "

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    move v0, v1

    .line 135
    goto :goto_0

    .line 130
    :cond_1
    invoke-virtual {v3}, Lcom/urbanairship/http/Response;->getStatus()I

    move-result v2

    goto :goto_1

    .line 139
    :cond_2
    const/16 v4, 0xc8

    if-ne v2, v4, :cond_4

    .line 142
    :try_start_0
    invoke-virtual {v3}, Lcom/urbanairship/http/Response;->getResponseBody()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/urbanairship/richpush/InboxServiceDelegate;->messagesFromResponse(Ljava/lang/String;)[Landroid/content/ContentValues;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 148
    if-nez v0, :cond_3

    .line 149
    const-string v0, "Inbox message list is empty."

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    :goto_2
    move v0, v1

    .line 156
    goto/16 :goto_0

    .line 143
    :catch_0
    move-exception v1

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to update inbox. Unable to parse response body: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lcom/urbanairship/http/Response;->getResponseBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 151
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " inbox messages."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 152
    invoke-direct {p0, v0}, Lcom/urbanairship/richpush/InboxServiceDelegate;->updateInbox([Landroid/content/ContentValues;)V

    .line 153
    invoke-virtual {p0}, Lcom/urbanairship/richpush/InboxServiceDelegate;->getDataStore()Lcom/urbanairship/PreferenceDataStore;

    move-result-object v0

    const-string v2, "com.urbanairship.user.LAST_MESSAGE_REFRESH_TIME"

    invoke-virtual {v3}, Lcom/urbanairship/http/Response;->getLastModifiedTime()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;J)V

    goto :goto_2

    .line 159
    :cond_4
    const-string v1, "Unable to update inbox messages."

    invoke-static {v1}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 91
    const-string v0, "com.urbanairship.richpush.MESSAGES_UPDATE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-static {}, Lcom/urbanairship/richpush/RichPushUser;->isCreated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    const-string v0, "InboxServiceDelegate - User has not been created, canceling messages update"

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 97
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/urbanairship/richpush/RichPushUpdateService;->respond(Landroid/content/Intent;Z)V

    goto :goto_0

    .line 99
    :cond_1
    invoke-direct {p0}, Lcom/urbanairship/richpush/InboxServiceDelegate;->updateMessages()Z

    move-result v0

    .line 100
    invoke-static {p1, v0}, Lcom/urbanairship/richpush/RichPushUpdateService;->respond(Landroid/content/Intent;Z)V

    .line 102
    invoke-direct {p0}, Lcom/urbanairship/richpush/InboxServiceDelegate;->syncReadMessageState()V

    .line 103
    invoke-direct {p0}, Lcom/urbanairship/richpush/InboxServiceDelegate;->syncDeletedMessageState()V

    goto :goto_0
.end method
