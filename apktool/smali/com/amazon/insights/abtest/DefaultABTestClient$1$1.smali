.class Lcom/amazon/insights/abtest/DefaultABTestClient$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/insights/VariationSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/insights/abtest/DefaultABTestClient$1;->run()V
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/insights/abtest/DefaultABTestClient$1;

.field final synthetic val$variations:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/amazon/insights/abtest/DefaultABTestClient$1;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/amazon/insights/abtest/DefaultABTestClient$1$1;->this$1:Lcom/amazon/insights/abtest/DefaultABTestClient$1;

    iput-object p2, p0, Lcom/amazon/insights/abtest/DefaultABTestClient$1$1;->val$variations:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/amazon/insights/abtest/DefaultABTestClient$1$1;->val$variations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getVariation(Ljava/lang/String;)Lcom/amazon/insights/Variation;
    .locals 3

    .prologue
    .line 200
    .line 201
    invoke-virtual {p0, p1}, Lcom/amazon/insights/abtest/DefaultABTestClient$1$1;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/amazon/insights/abtest/DefaultABTestClient$1$1;->val$variations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/insights/Variation;

    .line 203
    iget-object v1, p0, Lcom/amazon/insights/abtest/DefaultABTestClient$1$1;->this$1:Lcom/amazon/insights/abtest/DefaultABTestClient$1;

    iget-object v2, v1, Lcom/amazon/insights/abtest/DefaultABTestClient$1;->this$0:Lcom/amazon/insights/abtest/DefaultABTestClient;

    move-object v1, v0

    check-cast v1, Lcom/amazon/insights/abtest/DefaultVariation;

    invoke-virtual {v2, v1}, Lcom/amazon/insights/abtest/DefaultABTestClient;->setVariationIdsFromAllocatedVariation(Lcom/amazon/insights/abtest/DefaultVariation;)V

    .line 211
    :goto_0
    return-object v0

    .line 205
    :cond_0
    new-instance v0, Lcom/amazon/insights/abtest/DefaultVariation$Builder;

    invoke-direct {v0}, Lcom/amazon/insights/abtest/DefaultVariation$Builder;-><init>()V

    if-nez p1, :cond_1

    const-string p1, "UNKNOWN"

    :cond_1
    invoke-virtual {v0, p1}, Lcom/amazon/insights/abtest/DefaultVariation$Builder;->setProjectName(Ljava/lang/String;)Lcom/amazon/insights/abtest/DefaultVariation$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/insights/abtest/DefaultABTestClient$1$1;->this$1:Lcom/amazon/insights/abtest/DefaultABTestClient$1;

    iget-object v1, v1, Lcom/amazon/insights/abtest/DefaultABTestClient$1;->this$0:Lcom/amazon/insights/abtest/DefaultABTestClient;

    # getter for: Lcom/amazon/insights/abtest/DefaultABTestClient;->context:Lcom/amazon/insights/core/InsightsContext;
    invoke-static {v1}, Lcom/amazon/insights/abtest/DefaultABTestClient;->access$200(Lcom/amazon/insights/abtest/DefaultABTestClient;)Lcom/amazon/insights/core/InsightsContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/insights/core/InsightsContext;->getCredentials()Lcom/amazon/insights/InsightsCredentials;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/insights/InsightsCredentials;->getApplicationKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/insights/abtest/DefaultVariation$Builder;->setApplicationKey(Ljava/lang/String;)Lcom/amazon/insights/abtest/DefaultVariation$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/insights/abtest/DefaultABTestClient$1$1;->this$1:Lcom/amazon/insights/abtest/DefaultABTestClient$1;

    iget-object v1, v1, Lcom/amazon/insights/abtest/DefaultABTestClient$1;->this$0:Lcom/amazon/insights/abtest/DefaultABTestClient;

    # getter for: Lcom/amazon/insights/abtest/DefaultABTestClient;->context:Lcom/amazon/insights/core/InsightsContext;
    invoke-static {v1}, Lcom/amazon/insights/abtest/DefaultABTestClient;->access$200(Lcom/amazon/insights/abtest/DefaultABTestClient;)Lcom/amazon/insights/core/InsightsContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/insights/core/InsightsContext;->getUniqueId()Lcom/amazon/insights/core/idresolver/Id;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/insights/abtest/DefaultVariation$Builder;->setUniqueId(Lcom/amazon/insights/core/idresolver/Id;)Lcom/amazon/insights/abtest/DefaultVariation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/insights/abtest/DefaultVariation$Builder;->build()Lcom/amazon/insights/abtest/DefaultVariation;

    move-result-object v0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/amazon/insights/Variation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/amazon/insights/abtest/DefaultABTestClient$1$1;->val$variations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 222
    new-instance v1, Lcom/amazon/insights/abtest/DefaultABTestClient$1$1$1;

    invoke-direct {v1, p0, v0}, Lcom/amazon/insights/abtest/DefaultABTestClient$1$1$1;-><init>(Lcom/amazon/insights/abtest/DefaultABTestClient$1$1;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/amazon/insights/abtest/DefaultABTestClient$1$1;->val$variations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
