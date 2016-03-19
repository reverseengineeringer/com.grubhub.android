.class Lcom/amazon/insights/delivery/DefaultDeliveryClient$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/insights/delivery/DefaultDeliveryClient;->attemptDelivery(Ljava/util/List;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/insights/delivery/DefaultDeliveryClient;

.field final synthetic val$policies:Ljava/util/List;

.field final synthetic val$submitWaitLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/amazon/insights/delivery/DefaultDeliveryClient;Ljava/util/List;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/amazon/insights/delivery/DefaultDeliveryClient$3;->this$0:Lcom/amazon/insights/delivery/DefaultDeliveryClient;

    iput-object p2, p0, Lcom/amazon/insights/delivery/DefaultDeliveryClient$3;->val$policies:Ljava/util/List;

    iput-object p3, p0, Lcom/amazon/insights/delivery/DefaultDeliveryClient$3;->val$submitWaitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amazon/insights/delivery/DefaultDeliveryClient$3;->val$policies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/insights/delivery/policy/DeliveryPolicy;

    .line 167
    invoke-interface {v2}, Lcom/amazon/insights/delivery/policy/DeliveryPolicy;->isAllowed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 216
    :goto_0
    return-void

    .line 173
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amazon/insights/delivery/DefaultDeliveryClient$3;->val$submitWaitLatch:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amazon/insights/delivery/DefaultDeliveryClient$3;->this$0:Lcom/amazon/insights/delivery/DefaultDeliveryClient;

    # invokes: Lcom/amazon/insights/delivery/DefaultDeliveryClient;->getSubmissionLatchWaitTime()J
    invoke-static {v3}, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->access$400(Lcom/amazon/insights/delivery/DefaultDeliveryClient;)J

    move-result-wide v4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 177
    :goto_1
    const/4 v6, 0x1

    .line 178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amazon/insights/delivery/DefaultDeliveryClient$3;->this$0:Lcom/amazon/insights/delivery/DefaultDeliveryClient;

    # getter for: Lcom/amazon/insights/delivery/DefaultDeliveryClient;->context:Lcom/amazon/insights/core/InsightsContext;
    invoke-static {v2}, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->access$500(Lcom/amazon/insights/delivery/DefaultDeliveryClient;)Lcom/amazon/insights/core/InsightsContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/insights/core/InsightsContext;->getConfiguration()Lcom/amazon/insights/core/configuration/Configuration;

    move-result-object v2

    const-string v3, "maxSubmissionSize"

    const-wide/32 v4, 0x19000

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/amazon/insights/core/configuration/Configuration;->optLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 181
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amazon/insights/delivery/DefaultDeliveryClient$3;->this$0:Lcom/amazon/insights/delivery/DefaultDeliveryClient;

    # getter for: Lcom/amazon/insights/delivery/DefaultDeliveryClient;->eventStore:Lcom/amazon/insights/delivery/EventStore;
    invoke-static {v2}, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->access$100(Lcom/amazon/insights/delivery/DefaultDeliveryClient;)Lcom/amazon/insights/delivery/EventStore;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/insights/delivery/EventStore;->iterator()Lcom/amazon/insights/delivery/EventStore$EventIterator;

    move-result-object v14

    .line 183
    const-wide/16 v4, 0x0

    .line 185
    const/4 v2, 0x0

    .line 186
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/amazon/insights/delivery/DefaultDeliveryClient$3;->this$0:Lcom/amazon/insights/delivery/DefaultDeliveryClient;

    # getter for: Lcom/amazon/insights/delivery/DefaultDeliveryClient;->context:Lcom/amazon/insights/core/InsightsContext;
    invoke-static {v7}, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->access$500(Lcom/amazon/insights/delivery/DefaultDeliveryClient;)Lcom/amazon/insights/core/InsightsContext;

    move-result-object v7

    invoke-interface {v7}, Lcom/amazon/insights/core/InsightsContext;->getConfiguration()Lcom/amazon/insights/core/configuration/Configuration;

    move-result-object v7

    const-string v8, "maxSubmissionAllowed"

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/amazon/insights/core/configuration/Configuration;->optInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move v7, v6

    move-object v6, v3

    move v3, v2

    .line 187
    :goto_2
    invoke-interface {v14}, Lcom/amazon/insights/delivery/EventStore$EventIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    if-ge v3, v15, :cond_4

    .line 189
    :try_start_1
    invoke-interface {v14}, Lcom/amazon/insights/delivery/EventStore$EventIterator;->peek()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v14}, Lcom/amazon/insights/delivery/EventStore$EventIterator;->peek()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v8, v2

    .line 190
    :goto_3
    add-long v16, v4, v8

    cmp-long v2, v16, v12

    if-gtz v2, :cond_3

    .line 191
    add-long/2addr v4, v8

    .line 192
    new-instance v8, Lorg/json/JSONObject;

    invoke-interface {v14}, Lcom/amazon/insights/delivery/EventStore$EventIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v8, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move v2, v3

    move-object v3, v6

    move v6, v7

    :goto_4
    move v7, v6

    move-object v6, v3

    move v3, v2

    .line 206
    goto :goto_2

    .line 189
    :cond_2
    const-wide/16 v8, 0x0

    goto :goto_3

    .line 194
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amazon/insights/delivery/DefaultDeliveryClient$3;->this$0:Lcom/amazon/insights/delivery/DefaultDeliveryClient;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/amazon/insights/delivery/DefaultDeliveryClient$3;->val$policies:Ljava/util/List;

    # invokes: Lcom/amazon/insights/delivery/DefaultDeliveryClient;->submitEvents(Lorg/json/JSONArray;Ljava/util/List;)Z
    invoke-static {v2, v6, v8}, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->access$600(Lcom/amazon/insights/delivery/DefaultDeliveryClient;Lorg/json/JSONArray;Ljava/util/List;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    .line 195
    if-eqz v7, :cond_4

    .line 196
    add-int/lit8 v2, v3, 0x1

    .line 197
    :try_start_2
    invoke-interface {v14}, Lcom/amazon/insights/delivery/EventStore$EventIterator;->removeReadEvents()V

    .line 198
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 199
    const-wide/16 v4, 0x0

    move v6, v7

    goto :goto_4

    .line 204
    :catch_0
    move-exception v2

    move-object/from16 v18, v2

    move v2, v3

    move v3, v7

    move-object/from16 v7, v18

    .line 205
    :goto_5
    # getter for: Lcom/amazon/insights/delivery/DefaultDeliveryClient;->logger:Lcom/amazon/insights/core/log/Logger;
    invoke-static {}, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->access$200()Lcom/amazon/insights/core/log/Logger;

    move-result-object v8

    const-string v9, "Could not convert stored event into json"

    invoke-virtual {v8, v9, v7}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v7, v3

    move v3, v2

    .line 206
    goto :goto_2

    .line 210
    :cond_4
    if-eqz v7, :cond_5

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amazon/insights/delivery/DefaultDeliveryClient$3;->this$0:Lcom/amazon/insights/delivery/DefaultDeliveryClient;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amazon/insights/delivery/DefaultDeliveryClient$3;->val$policies:Ljava/util/List;

    # invokes: Lcom/amazon/insights/delivery/DefaultDeliveryClient;->submitEvents(Lorg/json/JSONArray;Ljava/util/List;)Z
    invoke-static {v2, v6, v3}, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->access$600(Lcom/amazon/insights/delivery/DefaultDeliveryClient;Lorg/json/JSONArray;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 212
    invoke-interface {v14}, Lcom/amazon/insights/delivery/EventStore$EventIterator;->removeReadEvents()V

    .line 215
    :cond_5
    # getter for: Lcom/amazon/insights/delivery/DefaultDeliveryClient;->logger:Lcom/amazon/insights/core/log/Logger;
    invoke-static {}, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->access$200()Lcom/amazon/insights/core/log/Logger;

    move-result-object v2

    const-string v3, "Time of attemptDelivery: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/insights/core/log/Logger;->v(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 204
    :catch_1
    move-exception v3

    move-object/from16 v18, v3

    move v3, v7

    move-object/from16 v7, v18

    goto :goto_5

    .line 174
    :catch_2
    move-exception v2

    goto/16 :goto_1
.end method
