.class public Lcom/amazon/insights/abtest/DefaultABTestClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/insights/ABTestClient;


# static fields
.field protected static final ALLOW_OPERATION_AFTER_HEADER:Ljava/lang/String; = "x-amzn-Allow-Operation-After"

.field static final DEFAULT_ABTEST_ENABLEMENT:Z = true

.field static final DEFAULT_ALLOCATION_REQUEST_RETRIES:I = 0x1

.field static final DEFAULT_ENDPOINT:Ljava/lang/String; = "https://applab-sdk.amazon.com/1.0"

.field static final DEFAULT_MAX_ALLOCATIONS:I = 0xa

.field private static final ENDPOINT_PATH:Ljava/lang/String; = "%s/applications/%s/treatments"

.field static final KEY_ABTEST_ENABLED:Ljava/lang/String; = "isABTestEnabled"

.field static final KEY_ALLOCATION_REQUEST_RETRIES:Ljava/lang/String; = "allocationRequestRetries"

.field static final KEY_ENDPOINT:Ljava/lang/String; = "projectEndpoint"

.field static final KEY_MAX_ALLOCATIONS:Ljava/lang/String; = "maxAllocations"

.field static final KEY_VARIATION_IDS:Ljava/lang/String; = "_treatment_ids"

.field private static final logger:Lcom/amazon/insights/core/log/Logger;


# instance fields
.field private final appliedVariationIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Lcom/amazon/insights/core/InsightsContext;

.field private final eventClient:Lcom/amazon/insights/event/InternalEventClient;

.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private final variationCache:Lcom/amazon/insights/abtest/cache/VariationCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/amazon/insights/abtest/DefaultABTestClient;

    invoke-static {v0}, Lcom/amazon/insights/core/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/amazon/insights/core/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/amazon/insights/abtest/DefaultABTestClient;->logger:Lcom/amazon/insights/core/log/Logger;

    return-void
.end method

.method constructor <init>(Lcom/amazon/insights/core/InsightsContext;Ljava/util/concurrent/ExecutorService;Lcom/amazon/insights/event/InternalEventClient;Lcom/amazon/insights/abtest/cache/VariationCache;)V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const-string v0, "A valid context wrapper must be provided"

    invoke-static {p1, v0}, Lcom/amazon/insights/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v0, "A valid ExecutorService must be provided"

    invoke-static {p2, v0}, Lcom/amazon/insights/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iput-object p2, p0, Lcom/amazon/insights/abtest/DefaultABTestClient;->executor:Ljava/util/concurrent/ExecutorService;

    .line 83
    iput-object p1, p0, Lcom/amazon/insights/abtest/DefaultABTestClient;->context:Lcom/amazon/insights/core/InsightsContext;

    .line 84
    iput-object p3, p0, Lcom/amazon/insights/abtest/DefaultABTestClient;->eventClient:Lcom/amazon/insights/event/InternalEventClient;

    .line 85
    iput-object p4, p0, Lcom/amazon/insights/abtest/DefaultABTestClient;->variationCache:Lcom/amazon/insights/abtest/cache/VariationCache;

    .line 86
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/insights/abtest/DefaultABTestClient;->appliedVariationIds:Ljava/util/Map;

    .line 87
    invoke-interface {p4}, Lcom/amazon/insights/abtest/cache/VariationCache;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/insights/abtest/DefaultABTestClient;->setAppliedVariationIdsAsGlobalAttribute(Ljava/util/Map;)V

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/insights/abtest/DefaultABTestClient;)I
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/amazon/insights/abtest/DefaultABTestClient;->getMaxAllocations()I

    move-result v0

    return v0
.end method

.method static synthetic access$100()Lcom/amazon/insights/core/log/Logger;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/amazon/insights/abtest/DefaultABTestClient;->logger:Lcom/amazon/insights/core/log/Logger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/insights/abtest/DefaultABTestClient;)Lcom/amazon/insights/core/InsightsContext;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/amazon/insights/abtest/DefaultABTestClient;->context:Lcom/amazon/insights/core/InsightsContext;

    return-object v0
.end method

.method private allocateVariations(Ljava/util/Set;Lcom/amazon/insights/core/DefaultInsightsHandler;)Lcom/amazon/insights/core/DefaultInsightsHandler;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/insights/core/DefaultInsightsHandler",
            "<",
            "Lcom/amazon/insights/VariationSet;",
            ">;)",
            "Lcom/amazon/insights/core/DefaultInsightsHandler",
            "<",
            "Lcom/amazon/insights/VariationSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 167
    iget-object v1, p0, Lcom/amazon/insights/abtest/DefaultABTestClient;->context:Lcom/amazon/insights/core/InsightsContext;

    invoke-interface {v1}, Lcom/amazon/insights/core/InsightsContext;->getUserProfile()Lcom/amazon/insights/UserProfile;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/insights/abtest/DefaultABTestClient;->context:Lcom/amazon/insights/core/InsightsContext;

    invoke-interface {v1}, Lcom/amazon/insights/core/InsightsContext;->getUserProfile()Lcom/amazon/insights/UserProfile;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/insights/UserProfile;->getDimensions()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 168
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/amazon/insights/abtest/DefaultABTestClient;->context:Lcom/amazon/insights/core/InsightsContext;

    invoke-interface {v2}, Lcom/amazon/insights/core/InsightsContext;->getUserProfile()Lcom/amazon/insights/UserProfile;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/insights/UserProfile;->getDimensions()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 170
    :cond_0
    iget-object v1, p0, Lcom/amazon/insights/abtest/DefaultABTestClient;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/amazon/insights/abtest/DefaultABTestClient$1;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/amazon/insights/abtest/DefaultABTestClient$1;-><init>(Lcom/amazon/insights/abtest/DefaultABTestClient;Ljava/util/Set;Ljava/util/concurrent/atomic/AtomicReference;Lcom/amazon/insights/core/DefaultInsightsHandler;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 253
    return-object p2
.end method

.method private getEndpointUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 551
    iget-object v0, p0, Lcom/amazon/insights/abtest/DefaultABTestClient;->context:Lcom/amazon/insights/core/InsightsContext;

    invoke-interface {v0}, Lcom/amazon/insights/core/InsightsContext;->getConfiguration()Lcom/amazon/insights/core/configuration/Configuration;

    move-result-object v0

    const-string v1, "projectEndpoint"

    const-string v2, "https://applab-sdk.amazon.com/1.0"

    invoke-interface {v0, v1, v2}, Lcom/amazon/insights/core/configuration/Configuration;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMaxAllocations()I
    .locals 3

    .prologue
    .line 555
    iget-object v0, p0, Lcom/amazon/insights/abtest/DefaultABTestClient;->context:Lcom/amazon/insights/core/InsightsContext;

    invoke-interface {v0}, Lcom/amazon/insights/core/InsightsContext;->getConfiguration()Lcom/amazon/insights/core/configuration/Configuration;

    move-result-object v0

    const-string v1, "maxAllocations"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/insights/core/configuration/Configuration;->optInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static newInstance(Lcom/amazon/insights/core/InsightsContext;Lcom/amazon/insights/event/InternalEventClient;)Lcom/amazon/insights/abtest/DefaultABTestClient;
    .locals 3

    .prologue
    .line 74
    invoke-static {p0}, Lcom/amazon/insights/abtest/cache/VariationCaches;->tryGetFileVariationCache(Lcom/amazon/insights/core/InsightsContext;)Lcom/amazon/insights/abtest/cache/VariationCache;

    move-result-object v0

    .line 75
    new-instance v1, Lcom/amazon/insights/abtest/DefaultABTestClient;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1, v0}, Lcom/amazon/insights/abtest/DefaultABTestClient;-><init>(Lcom/amazon/insights/core/InsightsContext;Ljava/util/concurrent/ExecutorService;Lcom/amazon/insights/event/InternalEventClient;Lcom/amazon/insights/abtest/cache/VariationCache;)V

    return-object v1
.end method

.method private setAppliedVariationIdsAsGlobalAttribute(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazon/insights/abtest/DefaultVariation;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 91
    invoke-static {p1}, Lcom/amazon/insights/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/amazon/insights/abtest/DefaultABTestClient;->appliedVariationIds:Ljava/util/Map;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/amazon/insights/core/util/Preconditions;->checkState(Z)V

    .line 93
    iget-object v0, p0, Lcom/amazon/insights/abtest/DefaultABTestClient;->eventClient:Lcom/amazon/insights/event/InternalEventClient;

    if-eqz v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/amazon/insights/core/util/Preconditions;->checkState(Z)V

    .line 95
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 96
    iget-object v2, p0, Lcom/amazon/insights/abtest/DefaultABTestClient;->appliedVariationIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/insights/abtest/DefaultVariation;

    invoke-virtual {v0}, Lcom/amazon/insights/abtest/DefaultVariation;->getVariationId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_0
    move v0, v2

    .line 92
    goto :goto_0

    :cond_1
    move v1, v2

    .line 93
    goto :goto_1

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/amazon/insights/abtest/DefaultABTestClient;->eventClient:Lcom/amazon/insights/event/InternalEventClient;

    const-string v1, "_treatment_ids"

    invoke-interface {v0, v1}, Lcom/amazon/insights/event/InternalEventClient;->removeGlobalAttribute(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/amazon/insights/abtest/DefaultABTestClient;->eventClient:Lcom/amazon/insights/event/InternalEventClient;

    const-string v1, "_treatment_ids"

    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/amazon/insights/abtest/DefaultABTestClient;->appliedVariationIds:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/insights/event/InternalEventClient;->addGlobalAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method static variationToHttpRequest(Lcom/amazon/insights/abtest/DefaultVariation;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 475
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 477
    :try_start_0
    const-string v1, "experimentName"

    invoke-virtual {p0}, Lcom/amazon/insights/abtest/DefaultVariation;->getProjectName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 478
    invoke-virtual {p0}, Lcom/amazon/insights/abtest/DefaultVariation;->isDefault()Z

    move-result v1

    if-nez v1, :cond_0

    .line 479
    const-string v1, "experimentId"

    invoke-virtual {p0}, Lcom/amazon/insights/abtest/DefaultVariation;->getExperimentId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 480
    const-string v1, "treatmentId"

    invoke-virtual {p0}, Lcom/amazon/insights/abtest/DefaultVariation;->getVariationId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 481
    const-string v1, "treatmentGroup"

    invoke-virtual {p0}, Lcom/amazon/insights/abtest/DefaultVariation;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 482
    const-string v1, "uniqueId"

    invoke-virtual {p0}, Lcom/amazon/insights/abtest/DefaultVariation;->getUniqueId()Lcom/amazon/insights/core/idresolver/Id;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/insights/core/idresolver/Id;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    :cond_0
    :goto_0
    return-object v0

    .line 484
    :catch_0
    move-exception v0

    .line 485
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method allocateCachedVariations(Ljava/util/Set;Ljava/util/Map;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazon/insights/abtest/DefaultVariation;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    const-string v0, "The set of project names must not be null"

    invoke-static {p1, v0}, Lcom/amazon/insights/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string v0, "The map of variations must not be null"

    invoke-static {p2, v0}, Lcom/amazon/insights/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 293
    :cond_0
    return-object p1

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/amazon/insights/abtest/DefaultABTestClient;->variationCache:Lcom/amazon/insights/abtest/cache/VariationCache;

    invoke-interface {v0, p1}, Lcom/amazon/insights/abtest/cache/VariationCache;->get(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    .line 285
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/insights/abtest/DefaultVariation;

    .line 286
    invoke-virtual {v0}, Lcom/amazon/insights/abtest/DefaultVariation;->isExpired()Z

    move-result v1

    if-nez v1, :cond_2

    .line 287
    invoke-virtual {v0}, Lcom/amazon/insights/abtest/DefaultVariation;->getProjectName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 289
    :cond_2
    invoke-virtual {v0}, Lcom/amazon/insights/abtest/DefaultVariation;->getProjectName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v3, Lcom/amazon/insights/abtest/DefaultABTestClient;->logger:Lcom/amazon/insights/core/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resolved "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amazon/insights/abtest/DefaultVariation;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "expired"

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " variation: \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/insights/abtest/DefaultVariation;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\' for project: \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/insights/abtest/DefaultVariation;->getProjectName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' from cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/amazon/insights/core/log/Logger;->devi(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "unexpired"

    goto :goto_1
.end method

.method allocateDefaultVariations(Ljava/util/Set;Ljava/util/Map;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazon/insights/abtest/DefaultVariation;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    const-string v0, "The set of project names must not be null"

    invoke-static {p1, v0}, Lcom/amazon/insights/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string v0, "The map of variations must not be null"

    invoke-static {p2, v0}, Lcom/amazon/insights/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 273
    :cond_0
    return-object p1

    .line 264
    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 265
    new-instance v2, Lcom/amazon/insights/abtest/DefaultVariation$Builder;

    invoke-direct {v2}, Lcom/amazon/insights/abtest/DefaultVariation$Builder;-><init>()V

    invoke-virtual {v2, v0}, Lcom/amazon/insights/abtest/DefaultVariation$Builder;->setProjectName(Ljava/lang/String;)Lcom/amazon/insights/abtest/DefaultVariation$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/insights/abtest/DefaultABTestClient;->context:Lcom/amazon/insights/core/InsightsContext;

    invoke-interface {v3}, Lcom/amazon/insights/core/InsightsContext;->getCredentials()Lcom/amazon/insights/InsightsCredentials;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/insights/InsightsCredentials;->getApplicationKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/insights/abtest/DefaultVariation$Builder;->setApplicationKey(Ljava/lang/String;)Lcom/amazon/insights/abtest/DefaultVariation$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/insights/abtest/DefaultABTestClient;->context:Lcom/amazon/insights/core/InsightsContext;

    invoke-interface {v3}, Lcom/amazon/insights/core/InsightsContext;->getUniqueId()Lcom/amazon/insights/core/idresolver/Id;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/insights/abtest/DefaultVariation$Builder;->setUniqueId(Lcom/amazon/insights/core/idresolver/Id;)Lcom/amazon/insights/abtest/DefaultVariation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/insights/abtest/DefaultVariation$Builder;->build()Lcom/amazon/insights/abtest/DefaultVariation;

    move-result-object v2

    .line 270
    invoke-interface {p2, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method allocateServerVariations(Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazon/insights/abtest/DefaultVariation;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 297
    const-string v0, "The set of project names must not be null"

    invoke-static {p1, v0}, Lcom/amazon/insights/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const-string v0, "The map of variations must not be null"

    invoke-static {p2, v0}, Lcom/amazon/insights/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 345
    :cond_0
    :goto_0
    return-object p1

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/amazon/insights/abtest/DefaultABTestClient;->context:Lcom/amazon/insights/core/InsightsContext;

    invoke-interface {v0}, Lcom/amazon/insights/core/InsightsContext;->getConfiguration()Lcom/amazon/insights/core/configuration/Configuration;

    move-result-object v0

    const-string v1, "isABTestEnabled"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/insights/core/configuration/Configuration;->optBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {p0}, Lcom/amazon/insights/abtest/DefaultABTestClient;->canHandleRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/insights/abtest/DefaultABTestClient;->createHttpRequest(Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;)Lcom/amazon/insights/core/http/HttpClient$Request;

    move-result-object v0

    .line 315
    if-nez v0, :cond_2

    .line 316
    sget-object v0, Lcom/amazon/insights/abtest/DefaultABTestClient;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v1, "There was an error when building the http request"

    invoke-virtual {v0, v1}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 320
    :cond_2
    iget-object v1, p0, Lcom/amazon/insights/abtest/DefaultABTestClient;->context:Lcom/amazon/insights/core/InsightsContext;

    invoke-interface {v1}, Lcom/amazon/insights/core/InsightsContext;->getHttpClient()Lcom/amazon/insights/core/http/HttpClient;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/insights/abtest/DefaultABTestClient;->context:Lcom/amazon/insights/core/InsightsContext;

    invoke-interface {v2}, Lcom/amazon/insights/core/InsightsContext;->getConfiguration()Lcom/amazon/insights/core/configuration/Configuration;

    move-result-object v2

    const-string v3, "allocationRequestRetries"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/amazon/insights/core/configuration/Configuration;->optInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/amazon/insights/core/http/HttpClient;->execute(Lcom/amazon/insights/core/http/HttpClient$Request;Ljava/lang/Integer;)Lcom/amazon/insights/core/http/HttpClient$Response;

    move-result-object v0

    .line 322
    if-nez v0, :cond_3

    .line 323
    sget-object v0, Lcom/amazon/insights/abtest/DefaultABTestClient;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v1, "No variations were retrieved from the server"

    invoke-virtual {v0, v1}, Lcom/amazon/insights/core/log/Logger;->deve(Ljava/lang/String;)V

    .line 324
    sget-object v0, Lcom/amazon/insights/abtest/DefaultABTestClient;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v1, "The http request returned a null http response"

    invoke-virtual {v0, v1}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 328
    :cond_3
    invoke-interface {v0}, Lcom/amazon/insights/core/http/HttpClient$Response;->getCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_6

    .line 329
    invoke-interface {v0}, Lcom/amazon/insights/core/http/HttpClient$Response;->getResponse()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/insights/abtest/DefaultABTestClient;->parseVariationResponse(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 331
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 332
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 333
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 335
    :cond_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 339
    :cond_5
    invoke-virtual {p0, v1}, Lcom/amazon/insights/abtest/DefaultABTestClient;->cacheVariations(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 341
    :cond_6
    sget-object v1, Lcom/amazon/insights/abtest/DefaultABTestClient;->logger:Lcom/amazon/insights/core/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to successfully retrieve variations from server. Response code ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/amazon/insights/core/http/HttpClient$Response;->getCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/amazon/insights/core/http/HttpUtil;->getMessageForResponse(Lcom/amazon/insights/core/http/HttpClient$Response;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/insights/core/log/Logger;->devw(Ljava/lang/String;)V

    .line 342
    sget-object v1, Lcom/amazon/insights/abtest/DefaultABTestClient;->logger:Lcom/amazon/insights/core/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recieved a bad response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/insights/core/log/Logger;->w(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method buildAllocationRequest(Ljava/util/Set;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazon/insights/abtest/DefaultVariation;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 449
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 451
    const-string v0, "uniqueId"

    iget-object v2, p0, Lcom/amazon/insights/abtest/DefaultABTestClient;->context:Lcom/amazon/insights/core/InsightsContext;

    invoke-interface {v2}, Lcom/amazon/insights/core/InsightsContext;->getUniqueId()Lcom/amazon/insights/core/idresolver/Id;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/insights/core/idresolver/Id;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 454
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 457
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 458
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/insights/abtest/DefaultVariation;

    .line 459
    invoke-static {v0}, Lcom/amazon/insights/abtest/DefaultABTestClient;->variationToHttpRequest(Lcom/amazon/insights/abtest/DefaultVariation;)Lorg/json/JSONObject;

    move-result-object v0

    .line 460
    if-eqz v0, :cond_0

    .line 461
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 467
    :cond_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 468
    const-string v0, "treatmentRequests"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 470
    :cond_2
    return-object v1
.end method

.method buildRequestBody(Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazon/insights/abtest/DefaultVariation;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 389
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 420
    :cond_0
    :goto_0
    return-object v0

    .line 394
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 396
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/amazon/insights/abtest/DefaultABTestClient;->buildUserProfile(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    .line 397
    invoke-virtual {p0, p1, p2}, Lcom/amazon/insights/abtest/DefaultABTestClient;->buildAllocationRequest(Ljava/util/Set;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v3

    .line 398
    if-eqz v3, :cond_3

    .line 399
    const-string v4, "treatmentAllocationRequest"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 405
    if-eqz v2, :cond_2

    .line 406
    const-string v3, "userProfile"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    :cond_2
    :goto_1
    if-eqz v1, :cond_4

    .line 415
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 416
    sget-object v1, Lcom/amazon/insights/abtest/DefaultABTestClient;->logger:Lcom/amazon/insights/core/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/insights/core/log/Logger;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 401
    :cond_3
    :try_start_1
    sget-object v1, Lcom/amazon/insights/abtest/DefaultABTestClient;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v2, "Request for variations was empty"

    invoke-virtual {v1, v2}, Lcom/amazon/insights/core/log/Logger;->deve(Ljava/lang/String;)V

    .line 402
    sget-object v1, Lcom/amazon/insights/abtest/DefaultABTestClient;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v2, "Allocation request is null"

    invoke-virtual {v1, v2}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 409
    :catch_0
    move-exception v1

    .line 411
    sget-object v2, Lcom/amazon/insights/abtest/DefaultABTestClient;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v3, "Error building the server request"

    invoke-virtual {v2, v3, v1}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v0

    goto :goto_1

    .line 419
    :cond_4
    sget-object v1, Lcom/amazon/insights/abtest/DefaultABTestClient;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v2, "Request body is null"

    invoke-virtual {v1, v2}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method buildUserProfile(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 431
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 432
    :cond_0
    const/4 v0, 0x0

    .line 445
    :goto_0
    return-object v0

    .line 435
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 436
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 437
    const-class v1, Ljava/lang/Number;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 438
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 439
    :cond_3
    const-class v1, Ljava/lang/Boolean;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 440
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 441
    :cond_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 442
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_5
    move-object v0, v2

    .line 445
    goto :goto_0
.end method

.method cacheVariations(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazon/insights/abtest/DefaultVariation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 381
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/insights/abtest/DefaultVariation;

    .line 382
    invoke-virtual {v0}, Lcom/amazon/insights/abtest/DefaultVariation;->isDefault()Z

    move-result v2

    if-nez v2, :cond_0

    .line 383
    iget-object v2, p0, Lcom/amazon/insights/abtest/DefaultABTestClient;->variationCache:Lcom/amazon/insights/abtest/cache/VariationCache;

    invoke-interface {v2, v0}, Lcom/amazon/insights/abtest/cache/VariationCache;->put(Lcom/amazon/insights/abtest/DefaultVariation;)Z

    goto :goto_0

    .line 386
    :cond_1
    return-void
.end method

.method protected canHandleRequest()Z
    .locals 3

    .prologue
    .line 349
    iget-object v0, p0, Lcom/amazon/insights/abtest/DefaultABTestClient;->context:Lcom/amazon/insights/core/InsightsContext;

    invoke-interface {v0}, Lcom/amazon/insights/core/InsightsContext;->getSystem()Lcom/amazon/insights/core/system/System;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/insights/core/system/System;->getConnectivity()Lcom/amazon/insights/core/system/Connectivity;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/insights/core/system/Connectivity;->isConnected()Z

    move-result v0

    .line 350
    if-nez v0, :cond_0

    .line 351
    sget-object v1, Lcom/amazon/insights/abtest/DefaultABTestClient;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v2, "Cannot retrieve variations from server due to the device not being connected"

    invoke-virtual {v1, v2}, Lcom/amazon/insights/core/log/Logger;->devw(Ljava/lang/String;)V

    .line 353
    :cond_0
    return v0
.end method

.method createHttpRequest(Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;)Lcom/amazon/insights/core/http/HttpClient$Request;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazon/insights/abtest/DefaultVariation;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/insights/core/http/HttpClient$Request;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 359
    const-string v0, "An allocation request must be provided"

    invoke-static {p1, v0}, Lcom/amazon/insights/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "At least one project must be specified"

    invoke-static {v0, v3}, Lcom/amazon/insights/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 362
    iget-object v0, p0, Lcom/amazon/insights/abtest/DefaultABTestClient;->context:Lcom/amazon/insights/core/InsightsContext;

    invoke-interface {v0}, Lcom/amazon/insights/core/InsightsContext;->getHttpClient()Lcom/amazon/insights/core/http/HttpClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/insights/core/http/HttpClient;->newRequest()Lcom/amazon/insights/core/http/HttpClient$Request;

    move-result-object v0

    const-string v3, "%s/applications/%s/treatments"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/amazon/insights/abtest/DefaultABTestClient;->getEndpointUrl()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v2, p0, Lcom/amazon/insights/abtest/DefaultABTestClient;->context:Lcom/amazon/insights/core/InsightsContext;

    invoke-interface {v2}, Lcom/amazon/insights/core/InsightsContext;->getCredentials()Lcom/amazon/insights/InsightsCredentials;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/insights/InsightsCredentials;->getApplicationKey()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/insights/core/http/HttpClient$Request;->setUrl(Ljava/lang/String;)Lcom/amazon/insights/core/http/HttpClient$Request;

    move-result-object v0

    sget-object v1, Lcom/amazon/insights/core/http/HttpClient$HttpMethod;->POST:Lcom/amazon/insights/core/http/HttpClient$HttpMethod;

    invoke-interface {v0, v1}, Lcom/amazon/insights/core/http/HttpClient$Request;->setMethod(Lcom/amazon/insights/core/http/HttpClient$HttpMethod;)Lcom/amazon/insights/core/http/HttpClient$Request;

    move-result-object v0

    .line 368
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/insights/abtest/DefaultABTestClient;->buildRequestBody(Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 370
    if-nez v1, :cond_1

    .line 371
    const/4 v0, 0x0

    .line 377
    :goto_1
    return-object v0

    :cond_0
    move v0, v2

    .line 360
    goto :goto_0

    .line 375
    :cond_1
    invoke-interface {v0, v1}, Lcom/amazon/insights/core/http/HttpClient$Request;->setPostBody(Ljava/lang/String;)Lcom/amazon/insights/core/http/HttpClient$Request;

    goto :goto_1
.end method

.method public varargs getVariations([Ljava/lang/String;)Lcom/amazon/insights/InsightsHandler;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/insights/InsightsHandler",
            "<",
            "Lcom/amazon/insights/VariationSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    new-instance v1, Lcom/amazon/insights/core/DefaultInsightsHandler;

    invoke-direct {v1}, Lcom/amazon/insights/core/DefaultInsightsHandler;-><init>()V

    .line 140
    if-eqz p1, :cond_4

    array-length v0, p1

    if-lez v0, :cond_4

    .line 142
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 143
    array-length v3, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, p1, v0

    .line 144
    if-eqz v4, :cond_0

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 145
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 150
    sget-object v0, Lcom/amazon/insights/abtest/DefaultABTestClient;->logger:Lcom/amazon/insights/core/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempting to retrieve variation(s) for project(s):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/amazon/insights/core/util/StringUtil;->convertSetToString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazon/insights/core/log/Logger;->devi(Ljava/lang/String;)V

    .line 151
    invoke-direct {p0, v2, v1}, Lcom/amazon/insights/abtest/DefaultABTestClient;->allocateVariations(Ljava/util/Set;Lcom/amazon/insights/core/DefaultInsightsHandler;)Lcom/amazon/insights/core/DefaultInsightsHandler;

    .line 162
    :cond_2
    :goto_1
    return-object v1

    .line 153
    :cond_3
    new-instance v0, Lcom/amazon/insights/error/InvalidArgumentError;

    const-string v2, "projectNames"

    const-string v3, "getVariation"

    const-string v4, "No project names were provided."

    invoke-direct {v0, v2, v3, v4}, Lcom/amazon/insights/error/InvalidArgumentError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/amazon/insights/core/DefaultInsightsHandler;->onError(Lcom/amazon/insights/error/InsightsError;)V

    goto :goto_1

    .line 156
    :cond_4
    if-nez p1, :cond_5

    .line 157
    new-instance v0, Lcom/amazon/insights/error/NullArgumentError;

    const-string v2, "projectNames"

    const-string v3, "getVariation"

    invoke-direct {v0, v2, v3}, Lcom/amazon/insights/error/NullArgumentError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/amazon/insights/core/DefaultInsightsHandler;->onError(Lcom/amazon/insights/error/InsightsError;)V

    goto :goto_1

    .line 158
    :cond_5
    array-length v0, p1

    if-nez v0, :cond_2

    .line 159
    new-instance v0, Lcom/amazon/insights/error/InvalidArgumentError;

    const-string v2, "projectNames"

    const-string v3, "getVariation"

    const-string v4, "No project names were provided."

    invoke-direct {v0, v2, v3, v4}, Lcom/amazon/insights/error/InvalidArgumentError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/amazon/insights/core/DefaultInsightsHandler;->onError(Lcom/amazon/insights/error/InsightsError;)V

    goto :goto_1
.end method

.method parseVariationResponse(Ljava/lang/String;)Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazon/insights/abtest/DefaultVariation;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 491
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 492
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 547
    :cond_0
    :goto_0
    return-object v0

    .line 497
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 498
    const-string v3, "applicationKey"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 499
    const-string v3, "uniqueId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/insights/core/idresolver/Id;->valueOf(Ljava/lang/String;)Lcom/amazon/insights/core/idresolver/Id;

    move-result-object v5

    .line 502
    const-string v3, "treatments"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 503
    const-string v3, "treatments"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    move v3, v2

    .line 505
    :goto_1
    :try_start_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v3, v1, :cond_0

    .line 506
    new-instance v7, Lcom/amazon/insights/abtest/DefaultVariation$Builder;

    invoke-direct {v7}, Lcom/amazon/insights/abtest/DefaultVariation$Builder;-><init>()V

    .line 507
    invoke-virtual {v7, v4}, Lcom/amazon/insights/abtest/DefaultVariation$Builder;->setApplicationKey(Ljava/lang/String;)Lcom/amazon/insights/abtest/DefaultVariation$Builder;

    .line 508
    invoke-virtual {v7, v5}, Lcom/amazon/insights/abtest/DefaultVariation$Builder;->setUniqueId(Lcom/amazon/insights/core/idresolver/Id;)Lcom/amazon/insights/abtest/DefaultVariation$Builder;

    .line 510
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 511
    if-eqz v1, :cond_4

    .line 512
    const-string v8, "experimentId"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/amazon/insights/abtest/DefaultVariation$Builder;->setExperimentId(J)Lcom/amazon/insights/abtest/DefaultVariation$Builder;

    .line 513
    const-string v8, "treatmentId"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/amazon/insights/abtest/DefaultVariation$Builder;->setVariationId(J)Lcom/amazon/insights/abtest/DefaultVariation$Builder;

    .line 514
    const-string v8, "experimentName"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/amazon/insights/abtest/DefaultVariation$Builder;->setProjectName(Ljava/lang/String;)Lcom/amazon/insights/abtest/DefaultVariation$Builder;

    .line 515
    const-string v8, "treatmentGroup"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/amazon/insights/abtest/DefaultVariation$Builder;->setVariationName(Ljava/lang/String;)Lcom/amazon/insights/abtest/DefaultVariation$Builder;

    .line 516
    new-instance v8, Ljava/util/Date;

    const-string v9, "expirationDate"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-direct {v8, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Lcom/amazon/insights/abtest/DefaultVariation$Builder;->setExpirationDate(Ljava/util/Date;)Lcom/amazon/insights/abtest/DefaultVariation$Builder;

    .line 517
    sget-object v8, Lcom/amazon/insights/abtest/DefaultVariation$AllocationSource;->SERVER:Lcom/amazon/insights/abtest/DefaultVariation$AllocationSource;

    invoke-virtual {v7, v8}, Lcom/amazon/insights/abtest/DefaultVariation$Builder;->setAllocationSource(Lcom/amazon/insights/abtest/DefaultVariation$AllocationSource;)V

    .line 518
    const-string v8, "factors"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 519
    const-string v8, "factors"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 520
    if-eqz v8, :cond_4

    .line 521
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    move v1, v2

    .line 522
    :goto_2
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v1, v10, :cond_3

    .line 523
    invoke-virtual {v8, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 524
    if-eqz v10, :cond_2

    .line 525
    const-string v11, "name"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 526
    const-string v12, "value"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 527
    invoke-interface {v9, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 530
    :cond_3
    invoke-virtual {v7, v9}, Lcom/amazon/insights/abtest/DefaultVariation$Builder;->setVariables(Ljava/util/Map;)Lcom/amazon/insights/abtest/DefaultVariation$Builder;

    .line 534
    :cond_4
    invoke-virtual {v7}, Lcom/amazon/insights/abtest/DefaultVariation$Builder;->getProjectName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Lcom/amazon/insights/abtest/DefaultVariation$Builder;->build()Lcom/amazon/insights/abtest/DefaultVariation;

    move-result-object v8

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    sget-object v1, Lcom/amazon/insights/abtest/DefaultABTestClient;->logger:Lcom/amazon/insights/core/log/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Resolved variation: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Lcom/amazon/insights/abtest/DefaultVariation$Builder;->getVariationName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' for project: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Lcom/amazon/insights/abtest/DefaultVariation$Builder;->getProjectName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' from server"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/amazon/insights/core/log/Logger;->devi(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 505
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_1

    .line 537
    :catch_0
    move-exception v1

    .line 538
    :try_start_2
    sget-object v2, Lcom/amazon/insights/abtest/DefaultABTestClient;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v3, "There was an issue parsing the variation(s) received from the server"

    invoke-virtual {v2, v3}, Lcom/amazon/insights/core/log/Logger;->deve(Ljava/lang/String;)V

    .line 539
    sget-object v2, Lcom/amazon/insights/abtest/DefaultABTestClient;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v3, "Error parsing the variation response."

    invoke-virtual {v2, v3, v1}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 542
    :catch_1
    move-exception v1

    .line 543
    sget-object v2, Lcom/amazon/insights/abtest/DefaultABTestClient;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v3, "There was an issue parsing the variation(s) received from the server"

    invoke-virtual {v2, v3}, Lcom/amazon/insights/core/log/Logger;->deve(Ljava/lang/String;)V

    .line 544
    sget-object v2, Lcom/amazon/insights/abtest/DefaultABTestClient;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v3, "Error parsing the server response body."

    invoke-virtual {v2, v3, v1}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public setVariationIdsFromAllocatedVariation(Lcom/amazon/insights/abtest/DefaultVariation;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 104
    iget-object v0, p0, Lcom/amazon/insights/abtest/DefaultABTestClient;->eventClient:Lcom/amazon/insights/event/InternalEventClient;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v2, "An event client must be provided"

    invoke-static {v0, v2}, Lcom/amazon/insights/core/util/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 105
    monitor-enter p0

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/amazon/insights/abtest/DefaultABTestClient;->appliedVariationIds:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/insights/abtest/DefaultVariation;->getProjectName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/amazon/insights/abtest/DefaultABTestClient;->appliedVariationIds:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/insights/abtest/DefaultVariation;->getProjectName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 111
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amazon/insights/abtest/DefaultVariation;->getVariationId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    monitor-exit p0

    .line 135
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 104
    goto :goto_0

    .line 116
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/insights/abtest/DefaultVariation;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 117
    iget-object v0, p0, Lcom/amazon/insights/abtest/DefaultABTestClient;->appliedVariationIds:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/insights/abtest/DefaultVariation;->getProjectName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :goto_2
    iget-object v0, p0, Lcom/amazon/insights/abtest/DefaultABTestClient;->eventClient:Lcom/amazon/insights/event/InternalEventClient;

    const-string v2, "_treatment_ids"

    invoke-interface {v0, v2}, Lcom/amazon/insights/event/InternalEventClient;->removeGlobalAttribute(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/amazon/insights/abtest/DefaultABTestClient;->eventClient:Lcom/amazon/insights/event/InternalEventClient;

    const-string v2, "_treatment_ids"

    new-instance v3, Lorg/json/JSONArray;

    iget-object v4, p0, Lcom/amazon/insights/abtest/DefaultABTestClient;->appliedVariationIds:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/amazon/insights/event/InternalEventClient;->addGlobalAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-virtual {p1}, Lcom/amazon/insights/abtest/DefaultVariation;->isDefault()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/amazon/insights/abtest/DefaultABTestClient;->eventClient:Lcom/amazon/insights/event/InternalEventClient;

    const-string v2, "_TreatmentsAllocated"

    invoke-interface {v0, v2}, Lcom/amazon/insights/event/InternalEventClient;->createEvent(Ljava/lang/String;)Lcom/amazon/insights/Event;

    move-result-object v0

    const-string v2, "_treatment_group"

    invoke-virtual {p1}, Lcom/amazon/insights/abtest/DefaultVariation;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/amazon/insights/Event;->withAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/insights/Event;

    move-result-object v0

    const-string v2, "_treatment_id"

    invoke-virtual {p1}, Lcom/amazon/insights/abtest/DefaultVariation;->getVariationId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/amazon/insights/Event;->withAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/insights/Event;

    move-result-object v0

    const-string v2, "_experiment_id"

    invoke-virtual {p1}, Lcom/amazon/insights/abtest/DefaultVariation;->getExperimentId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/amazon/insights/Event;->withAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/insights/Event;

    move-result-object v0

    const-string v2, "_application_key"

    invoke-virtual {p1}, Lcom/amazon/insights/abtest/DefaultVariation;->getApplicationKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/amazon/insights/Event;->withAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/insights/Event;

    move-result-object v0

    const-string v2, "_source"

    invoke-virtual {p1}, Lcom/amazon/insights/abtest/DefaultVariation;->getAllocationSource()Lcom/amazon/insights/abtest/DefaultVariation$AllocationSource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/insights/abtest/DefaultVariation$AllocationSource;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/amazon/insights/Event;->withAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/insights/Event;

    move-result-object v0

    const-string v2, "_applied_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/amazon/insights/Event;->withMetric(Ljava/lang/String;Ljava/lang/Number;)Lcom/amazon/insights/Event;

    move-result-object v0

    .line 133
    iget-object v2, p0, Lcom/amazon/insights/abtest/DefaultABTestClient;->eventClient:Lcom/amazon/insights/event/InternalEventClient;

    invoke-interface {v2, v0, v1}, Lcom/amazon/insights/event/InternalEventClient;->recordEvent(Lcom/amazon/insights/Event;Z)V

    goto/16 :goto_1

    .line 119
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/amazon/insights/abtest/DefaultABTestClient;->appliedVariationIds:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/insights/abtest/DefaultVariation;->getProjectName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/insights/abtest/DefaultVariation;->getVariationId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
