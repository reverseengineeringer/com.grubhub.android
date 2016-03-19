.class Lcom/amazon/insights/abtest/DefaultABTestClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/insights/abtest/DefaultABTestClient;->allocateVariations(Ljava/util/Set;Lcom/amazon/insights/core/DefaultInsightsHandler;)Lcom/amazon/insights/core/DefaultInsightsHandler;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/insights/abtest/DefaultABTestClient;

.field final synthetic val$dimensions:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$getVariationHandler:Lcom/amazon/insights/core/DefaultInsightsHandler;

.field final synthetic val$projectNames:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/amazon/insights/abtest/DefaultABTestClient;Ljava/util/Set;Ljava/util/concurrent/atomic/AtomicReference;Lcom/amazon/insights/core/DefaultInsightsHandler;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/amazon/insights/abtest/DefaultABTestClient$1;->this$0:Lcom/amazon/insights/abtest/DefaultABTestClient;

    iput-object p2, p0, Lcom/amazon/insights/abtest/DefaultABTestClient$1;->val$projectNames:Ljava/util/Set;

    iput-object p3, p0, Lcom/amazon/insights/abtest/DefaultABTestClient$1;->val$dimensions:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lcom/amazon/insights/abtest/DefaultABTestClient$1;->val$getVariationHandler:Lcom/amazon/insights/core/DefaultInsightsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 174
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/amazon/insights/abtest/DefaultABTestClient$1;->val$projectNames:Ljava/util/Set;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 175
    iget-object v0, p0, Lcom/amazon/insights/abtest/DefaultABTestClient$1;->this$0:Lcom/amazon/insights/abtest/DefaultABTestClient;

    # invokes: Lcom/amazon/insights/abtest/DefaultABTestClient;->getMaxAllocations()I
    invoke-static {v0}, Lcom/amazon/insights/abtest/DefaultABTestClient;->access$000(Lcom/amazon/insights/abtest/DefaultABTestClient;)I

    move-result v4

    .line 177
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move v0, v1

    .line 179
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 180
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    move v2, v0

    move v0, v1

    .line 181
    :goto_1
    if-ge v0, v4, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 182
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 181
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/amazon/insights/abtest/DefaultABTestClient$1;->this$0:Lcom/amazon/insights/abtest/DefaultABTestClient;

    invoke-virtual {v0, v6, v5}, Lcom/amazon/insights/abtest/DefaultABTestClient;->allocateDefaultVariations(Ljava/util/Set;Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    .line 187
    iget-object v6, p0, Lcom/amazon/insights/abtest/DefaultABTestClient$1;->this$0:Lcom/amazon/insights/abtest/DefaultABTestClient;

    invoke-virtual {v6, v0, v5}, Lcom/amazon/insights/abtest/DefaultABTestClient;->allocateCachedVariations(Ljava/util/Set;Ljava/util/Map;)Ljava/util/Set;

    move-result-object v6

    .line 188
    iget-object v7, p0, Lcom/amazon/insights/abtest/DefaultABTestClient$1;->this$0:Lcom/amazon/insights/abtest/DefaultABTestClient;

    iget-object v0, p0, Lcom/amazon/insights/abtest/DefaultABTestClient$1;->val$dimensions:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v7, v6, v5, v0}, Lcom/amazon/insights/abtest/DefaultABTestClient;->allocateServerVariations(Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Set;

    move v0, v2

    .line 189
    goto :goto_0

    .line 191
    :cond_1
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 192
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/insights/abtest/DefaultVariation;

    invoke-virtual {v1}, Lcom/amazon/insights/abtest/DefaultVariation;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 193
    # getter for: Lcom/amazon/insights/abtest/DefaultABTestClient;->logger:Lcom/amazon/insights/core/log/Logger;
    invoke-static {}, Lcom/amazon/insights/abtest/DefaultABTestClient;->access$100()Lcom/amazon/insights/core/log/Logger;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resolved default variation: \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/insights/abtest/DefaultVariation;

    invoke-virtual {v1}, Lcom/amazon/insights/abtest/DefaultVariation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\' for project: \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/amazon/insights/core/log/Logger;->devw(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 247
    :catch_0
    move-exception v0

    .line 248
    iget-object v1, p0, Lcom/amazon/insights/abtest/DefaultABTestClient$1;->val$getVariationHandler:Lcom/amazon/insights/core/DefaultInsightsHandler;

    new-instance v2, Lcom/amazon/insights/error/UnexpectedError;

    const-string v3, "An unexpected error occurred. Retrieval of variations could not be completed"

    invoke-direct {v2, v3, v0}, Lcom/amazon/insights/error/UnexpectedError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Lcom/amazon/insights/core/DefaultInsightsHandler;->onError(Lcom/amazon/insights/error/InsightsError;)V

    .line 249
    # getter for: Lcom/amazon/insights/abtest/DefaultABTestClient;->logger:Lcom/amazon/insights/core/log/Logger;
    invoke-static {}, Lcom/amazon/insights/abtest/DefaultABTestClient;->access$100()Lcom/amazon/insights/core/log/Logger;

    move-result-object v1

    const-string v2, "An unexpected error occurred attempting to get variations"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 251
    :goto_3
    return-void

    .line 197
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/amazon/insights/abtest/DefaultABTestClient$1;->val$getVariationHandler:Lcom/amazon/insights/core/DefaultInsightsHandler;

    new-instance v1, Lcom/amazon/insights/abtest/DefaultABTestClient$1$1;

    invoke-direct {v1, p0, v5}, Lcom/amazon/insights/abtest/DefaultABTestClient$1$1;-><init>(Lcom/amazon/insights/abtest/DefaultABTestClient$1;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/amazon/insights/core/DefaultInsightsHandler;->onComplete(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method
