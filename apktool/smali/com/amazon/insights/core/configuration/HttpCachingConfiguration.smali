.class public Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/insights/core/configuration/Configuration;


# static fields
.field private static final CONFIG_KEY:Ljava/lang/String; = "configuration"

.field private static final CONFIG_KEY_LAST_SYNC:Ljava/lang/String; = "configuration.lastSyncDate"

.field private static final DEFAULT_SYNC_INTERVAL:J = 0x36ee80L

.field private static final ENDPOINT:Ljava/lang/String; = "https://applab-sdk.amazon.com/1.0"

.field private static final ENDPOINT_PATH:Ljava/lang/String; = "%s/applications/%s/configuration"

.field private static final UNIQUE_ID_HEADER_NAME:Ljava/lang/String; = "x-amzn-UniqueId"

.field private static final logger:Lcom/amazon/insights/core/log/Logger;


# instance fields
.field private final backgroundExecutor:Ljava/util/concurrent/ExecutorService;

.field private final context:Lcom/amazon/insights/core/InsightsContext;

.field private isUpdateInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private lastSync:Ljava/util/concurrent/atomic/AtomicLong;

.field private final overrideProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;

    invoke-static {v0}, Lcom/amazon/insights/core/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/amazon/insights/core/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->logger:Lcom/amazon/insights/core/log/Logger;

    return-void
.end method

.method constructor <init>(Lcom/amazon/insights/core/InsightsContext;Ljava/util/concurrent/ExecutorService;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/insights/core/InsightsContext;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const-wide/16 v6, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->lastSync:Ljava/util/concurrent/atomic/AtomicLong;

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->isUpdateInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->properties:Ljava/util/Map;

    .line 57
    invoke-static {p1}, Lcom/amazon/insights/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static {p2}, Lcom/amazon/insights/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-static {p3}, Lcom/amazon/insights/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iput-object p1, p0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->context:Lcom/amazon/insights/core/InsightsContext;

    .line 62
    iput-object p3, p0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->overrideProperties:Ljava/util/Map;

    .line 63
    iput-object p2, p0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    .line 68
    invoke-direct {p0}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->getContext()Lcom/amazon/insights/core/InsightsContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/insights/core/InsightsContext;->getSystem()Lcom/amazon/insights/core/system/System;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/insights/core/system/System;->getPreferences()Lcom/amazon/insights/core/system/Preferences;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_0

    .line 71
    :try_start_0
    iget-object v2, p0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->lastSync:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v3, "configuration.lastSyncDate"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Lcom/amazon/insights/core/system/Preferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    const-string v2, "configuration"

    invoke-interface {v0, v2, v1}, Lcom/amazon/insights/core/system/Preferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    if-eqz v2, :cond_0

    .line 80
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 89
    :goto_1
    invoke-direct {p0, v0}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->updateMappings(Lorg/json/JSONObject;)V

    .line 90
    return-void

    .line 72
    :catch_0
    move-exception v2

    .line 73
    iget-object v2, p0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->lastSync:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto :goto_0

    .line 81
    :catch_1
    move-exception v0

    .line 82
    sget-object v2, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v3, "could not create Json object of Config"

    invoke-virtual {v2, v3, v0}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    iget-object v0, p0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->lastSync:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_0
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;)Lcom/amazon/insights/core/InsightsContext;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->context:Lcom/amazon/insights/core/InsightsContext;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->properties:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200()Lcom/amazon/insights/core/log/Logger;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->logger:Lcom/amazon/insights/core/log/Logger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;)Lcom/amazon/insights/core/InsightsContext;
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->getContext()Lcom/amazon/insights/core/InsightsContext;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->updateMappings(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->getIsUpdateInProgress()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    return-object v0
.end method

.method private evaluateLastSync()V
    .locals 8

    .prologue
    .line 389
    const-wide/32 v2, 0x36ee80

    .line 390
    iget-object v0, p0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->properties:Ljava/util/Map;

    const-string v1, "syncInterval"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 392
    if-eqz v0, :cond_1

    .line 393
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    move-wide v2, v0

    .line 400
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 401
    invoke-direct {p0}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->getLastSync()J

    move-result-wide v4

    sub-long/2addr v0, v4

    .line 403
    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 405
    invoke-virtual {p0}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->syncConfiguration()V

    .line 407
    :cond_0
    return-void

    .line 395
    :catch_0
    move-exception v0

    .line 396
    sget-object v1, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v4, "Could not get Long for propertyName: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "syncInterval"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    move-wide v0, v2

    goto :goto_0
.end method

.method private getBackgroundExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private getContext()Lcom/amazon/insights/core/InsightsContext;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->context:Lcom/amazon/insights/core/InsightsContext;

    return-object v0
.end method

.method private getIsUpdateInProgress()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->isUpdateInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private getLastSync()J
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->lastSync:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static newInstance(Lcom/amazon/insights/core/InsightsContext;Ljava/util/Map;)Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/insights/core/InsightsContext;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;-><init>(Lcom/amazon/insights/core/InsightsContext;Ljava/util/concurrent/ExecutorService;Ljava/util/Map;)V

    return-object v0
.end method

.method private optStringInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 247
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method private updateMappings(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 255
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 257
    if-eqz p1, :cond_0

    .line 258
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 260
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 263
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 264
    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    sget-object v3, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v4, "could not update property mappings"

    invoke-virtual {v3, v4, v0}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->overrideProperties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 273
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->properties:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 279
    return-void
.end method


# virtual methods
.method createHttpRequest()Lcom/amazon/insights/core/http/HttpClient$Request;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 367
    invoke-direct {p0}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->getContext()Lcom/amazon/insights/core/InsightsContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/insights/core/InsightsContext;->getHttpClient()Lcom/amazon/insights/core/http/HttpClient;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "An httpClient must be created in order to resolve configuration via http"

    invoke-static {v0, v3}, Lcom/amazon/insights/core/util/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 369
    const-string v0, "%s/applications/%s/configuration"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "configEndpoint"

    const-string v5, "https://applab-sdk.amazon.com/1.0"

    invoke-direct {p0, v4, v5}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->optStringInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-direct {p0}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->getContext()Lcom/amazon/insights/core/InsightsContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/insights/core/InsightsContext;->getCredentials()Lcom/amazon/insights/InsightsCredentials;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/insights/InsightsCredentials;->getApplicationKey()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 371
    invoke-direct {p0}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->getContext()Lcom/amazon/insights/core/InsightsContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/insights/core/InsightsContext;->getUniqueId()Lcom/amazon/insights/core/idresolver/Id;

    move-result-object v1

    .line 373
    invoke-virtual {p0}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->createHttpRequestInstance()Lcom/amazon/insights/core/http/HttpClient$Request;

    move-result-object v2

    .line 374
    invoke-interface {v2, v0}, Lcom/amazon/insights/core/http/HttpClient$Request;->setUrl(Ljava/lang/String;)Lcom/amazon/insights/core/http/HttpClient$Request;

    .line 375
    sget-object v0, Lcom/amazon/insights/core/http/HttpClient$HttpMethod;->GET:Lcom/amazon/insights/core/http/HttpClient$HttpMethod;

    invoke-interface {v2, v0}, Lcom/amazon/insights/core/http/HttpClient$Request;->setMethod(Lcom/amazon/insights/core/http/HttpClient$HttpMethod;)Lcom/amazon/insights/core/http/HttpClient$Request;

    .line 376
    const-string v3, "x-amzn-UniqueId"

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/amazon/insights/core/idresolver/Id;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {v2, v3, v0}, Lcom/amazon/insights/core/http/HttpClient$Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/insights/core/http/HttpClient$Request;

    .line 377
    return-object v2

    :cond_0
    move v0, v2

    .line 367
    goto :goto_0

    .line 376
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method createHttpRequestInstance()Lcom/amazon/insights/core/http/HttpClient$Request;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->context:Lcom/amazon/insights/core/InsightsContext;

    invoke-interface {v0}, Lcom/amazon/insights/core/InsightsContext;->getHttpClient()Lcom/amazon/insights/core/http/HttpClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/insights/core/http/HttpClient;->newRequest()Lcom/amazon/insights/core/http/HttpClient$Request;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 6

    .prologue
    .line 165
    const/4 v1, 0x0

    .line 166
    iget-object v0, p0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 168
    if-eqz v0, :cond_0

    .line 170
    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 177
    :goto_0
    invoke-direct {p0}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->evaluateLastSync()V

    .line 179
    return-object v0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    sget-object v2, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v3, "Could not get Boolean for propertyName: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public getDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 6

    .prologue
    .line 146
    const/4 v1, 0x0

    .line 147
    iget-object v0, p0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 149
    if-eqz v0, :cond_0

    .line 151
    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 158
    :goto_0
    invoke-direct {p0}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->evaluateLastSync()V

    .line 160
    return-object v0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    sget-object v2, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v3, "Could not get Double for propertyName: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 6

    .prologue
    .line 126
    const/4 v1, 0x0

    .line 127
    iget-object v0, p0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 129
    if-eqz v0, :cond_0

    .line 131
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 139
    :goto_0
    invoke-direct {p0}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->evaluateLastSync()V

    .line 141
    return-object v0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    sget-object v2, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v3, "Could not get Integer for propertyName: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 6

    .prologue
    .line 94
    const/4 v1, 0x0

    .line 95
    iget-object v0, p0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 97
    if-eqz v0, :cond_0

    .line 99
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 107
    :goto_0
    invoke-direct {p0}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->evaluateLastSync()V

    .line 109
    return-object v0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    sget-object v2, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v3, "Could not get Long for propertyName: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public getShort(Ljava/lang/String;)Ljava/lang/Short;
    .locals 6

    .prologue
    .line 184
    const/4 v1, 0x0

    .line 185
    iget-object v0, p0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 187
    if-eqz v0, :cond_0

    .line 189
    :try_start_0
    iget-object v2, p0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->properties:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    invoke-static {v0}, Ljava/lang/Short;->decode(Ljava/lang/String;)Ljava/lang/Short;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    move-object v1, v0

    .line 198
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->evaluateLastSync()V

    .line 200
    return-object v1

    .line 192
    :catch_0
    move-exception v0

    .line 193
    sget-object v2, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v3, "Could not get Short for propertyName: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 118
    invoke-direct {p0}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->evaluateLastSync()V

    .line 120
    return-object v0
.end method

.method public optBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 235
    invoke-virtual {p0, p1}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 236
    if-eqz v0, :cond_0

    move-object p2, v0

    :cond_0
    return-object p2
.end method

.method public optDouble(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 1

    .prologue
    .line 229
    invoke-virtual {p0, p1}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 230
    if-eqz v0, :cond_0

    move-object p2, v0

    :cond_0
    return-object p2
.end method

.method public optInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0, p1}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 218
    if-eqz v0, :cond_0

    move-object p2, v0

    :cond_0
    return-object p2
.end method

.method public optLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0, p1}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_0

    move-object p2, v0

    :cond_0
    return-object p2
.end method

.method public optShort(Ljava/lang/String;Ljava/lang/Short;)Ljava/lang/Short;
    .locals 1

    .prologue
    .line 223
    invoke-virtual {p0, p1}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->getShort(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v0

    .line 224
    if-eqz v0, :cond_0

    move-object p2, v0

    :cond_0
    return-object p2
.end method

.method public optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    invoke-virtual {p0, p1}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_0

    move-object p2, v0

    :cond_0
    return-object p2
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->evaluateLastSync()V

    .line 242
    return-void
.end method

.method setLastSync(J)V
    .locals 5

    .prologue
    .line 414
    iget-object v0, p0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->lastSync:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 415
    invoke-direct {p0}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->getContext()Lcom/amazon/insights/core/InsightsContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/insights/core/InsightsContext;->getSystem()Lcom/amazon/insights/core/system/System;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/insights/core/system/System;->getPreferences()Lcom/amazon/insights/core/system/Preferences;

    move-result-object v0

    .line 416
    const-string v1, "configuration.lastSyncDate"

    iget-object v2, p0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->lastSync:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/insights/core/system/Preferences;->putLong(Ljava/lang/String;J)V

    .line 417
    return-void
.end method

.method syncConfiguration()V
    .locals 3

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->getIsUpdateInProgress()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    invoke-direct {p0}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->getBackgroundExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration$1;

    invoke-direct {v1, p0}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration$1;-><init>(Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 360
    :cond_0
    return-void
.end method
