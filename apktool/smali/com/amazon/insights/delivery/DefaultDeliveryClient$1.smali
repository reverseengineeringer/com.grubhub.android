.class Lcom/amazon/insights/delivery/DefaultDeliveryClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/insights/delivery/DefaultDeliveryClient;->enqueueEventForDelivery(Lcom/amazon/insights/event/InternalEvent;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/insights/delivery/DefaultDeliveryClient;

.field final synthetic val$event:Lcom/amazon/insights/event/InternalEvent;

.field final synthetic val$origEventsProcessed:J

.field final synthetic val$startEnqueueTimeMillis:J


# direct methods
.method constructor <init>(Lcom/amazon/insights/delivery/DefaultDeliveryClient;Lcom/amazon/insights/event/InternalEvent;JJ)V
    .locals 1

    .prologue
    .line 102
    iput-object p1, p0, Lcom/amazon/insights/delivery/DefaultDeliveryClient$1;->this$0:Lcom/amazon/insights/delivery/DefaultDeliveryClient;

    iput-object p2, p0, Lcom/amazon/insights/delivery/DefaultDeliveryClient$1;->val$event:Lcom/amazon/insights/event/InternalEvent;

    iput-wide p3, p0, Lcom/amazon/insights/delivery/DefaultDeliveryClient$1;->val$origEventsProcessed:J

    iput-wide p5, p0, Lcom/amazon/insights/delivery/DefaultDeliveryClient$1;->val$startEnqueueTimeMillis:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/amazon/insights/delivery/DefaultDeliveryClient$1;->this$0:Lcom/amazon/insights/delivery/DefaultDeliveryClient;

    # getter for: Lcom/amazon/insights/delivery/DefaultDeliveryClient;->eventStore:Lcom/amazon/insights/delivery/EventStore;
    invoke-static {v0}, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->access$100(Lcom/amazon/insights/delivery/DefaultDeliveryClient;)Lcom/amazon/insights/delivery/EventStore;

    move-result-object v1

    iget-object v0, p0, Lcom/amazon/insights/delivery/DefaultDeliveryClient$1;->this$0:Lcom/amazon/insights/delivery/DefaultDeliveryClient;

    # getter for: Lcom/amazon/insights/delivery/DefaultDeliveryClient;->eventAdapter:Lcom/amazon/insights/event/adapter/EventAdapter;
    invoke-static {v0}, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->access$000(Lcom/amazon/insights/delivery/DefaultDeliveryClient;)Lcom/amazon/insights/event/adapter/EventAdapter;

    move-result-object v0

    iget-object v4, p0, Lcom/amazon/insights/delivery/DefaultDeliveryClient$1;->val$event:Lcom/amazon/insights/event/InternalEvent;

    invoke-interface {v0, v4}, Lcom/amazon/insights/event/adapter/EventAdapter;->translateFromEvent(Lcom/amazon/insights/event/InternalEvent;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/amazon/insights/delivery/EventStore;->put(Ljava/lang/String;)Z

    move-result v0

    .line 109
    if-eqz v0, :cond_0

    .line 110
    # getter for: Lcom/amazon/insights/delivery/DefaultDeliveryClient;->logger:Lcom/amazon/insights/core/log/Logger;
    invoke-static {}, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->access$200()Lcom/amazon/insights/core/log/Logger;

    move-result-object v0

    const-string v1, "Event: \'%s\' recorded to local filestore"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/amazon/insights/delivery/DefaultDeliveryClient$1;->val$event:Lcom/amazon/insights/event/InternalEvent;

    invoke-interface {v6}, Lcom/amazon/insights/event/InternalEvent;->getEventType()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/amazon/insights/core/util/StringUtil;->clipString(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/insights/core/log/Logger;->devi(Ljava/lang/String;)V

    .line 111
    # getter for: Lcom/amazon/insights/delivery/DefaultDeliveryClient;->logger:Lcom/amazon/insights/core/log/Logger;
    invoke-static {}, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->access$200()Lcom/amazon/insights/core/log/Logger;

    move-result-object v0

    const-string v1, "Time of enqueueEventForDelivery: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/insights/core/log/Logger;->v(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amazon/insights/delivery/EventStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :goto_0
    iget-object v0, p0, Lcom/amazon/insights/delivery/DefaultDeliveryClient$1;->this$0:Lcom/amazon/insights/delivery/DefaultDeliveryClient;

    iget-wide v2, p0, Lcom/amazon/insights/delivery/DefaultDeliveryClient$1;->val$origEventsProcessed:J

    iget-wide v4, p0, Lcom/amazon/insights/delivery/DefaultDeliveryClient$1;->val$startEnqueueTimeMillis:J

    # invokes: Lcom/amazon/insights/delivery/DefaultDeliveryClient;->calculateAndSetAverageWriteEventTime(JJ)V
    invoke-static {v0, v2, v3, v4, v5}, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->access$300(Lcom/amazon/insights/delivery/DefaultDeliveryClient;JJ)V

    .line 120
    :goto_1
    return-void

    .line 113
    :cond_0
    :try_start_1
    # getter for: Lcom/amazon/insights/delivery/DefaultDeliveryClient;->logger:Lcom/amazon/insights/core/log/Logger;
    invoke-static {}, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->access$200()Lcom/amazon/insights/core/log/Logger;

    move-result-object v0

    const-string v1, "Event: \'%s\' failed to record to local filestore"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/amazon/insights/delivery/DefaultDeliveryClient$1;->val$event:Lcom/amazon/insights/event/InternalEvent;

    invoke-interface {v4}, Lcom/amazon/insights/event/InternalEvent;->getEventType()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/amazon/insights/core/util/StringUtil;->clipString(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/insights/core/log/Logger;->devw(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/amazon/insights/delivery/EventStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    :try_start_2
    # getter for: Lcom/amazon/insights/delivery/DefaultDeliveryClient;->logger:Lcom/amazon/insights/core/log/Logger;
    invoke-static {}, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->access$200()Lcom/amazon/insights/core/log/Logger;

    move-result-object v0

    const-string v1, "Event: \'%s\' failed to record to local filestore"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/amazon/insights/delivery/DefaultDeliveryClient$1;->val$event:Lcom/amazon/insights/event/InternalEvent;

    invoke-interface {v4}, Lcom/amazon/insights/event/InternalEvent;->getEventType()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/amazon/insights/core/util/StringUtil;->clipString(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/insights/core/log/Logger;->devw(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    iget-object v0, p0, Lcom/amazon/insights/delivery/DefaultDeliveryClient$1;->this$0:Lcom/amazon/insights/delivery/DefaultDeliveryClient;

    iget-wide v2, p0, Lcom/amazon/insights/delivery/DefaultDeliveryClient$1;->val$origEventsProcessed:J

    iget-wide v4, p0, Lcom/amazon/insights/delivery/DefaultDeliveryClient$1;->val$startEnqueueTimeMillis:J

    # invokes: Lcom/amazon/insights/delivery/DefaultDeliveryClient;->calculateAndSetAverageWriteEventTime(JJ)V
    invoke-static {v0, v2, v3, v4, v5}, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->access$300(Lcom/amazon/insights/delivery/DefaultDeliveryClient;JJ)V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amazon/insights/delivery/DefaultDeliveryClient$1;->this$0:Lcom/amazon/insights/delivery/DefaultDeliveryClient;

    iget-wide v2, p0, Lcom/amazon/insights/delivery/DefaultDeliveryClient$1;->val$origEventsProcessed:J

    iget-wide v4, p0, Lcom/amazon/insights/delivery/DefaultDeliveryClient$1;->val$startEnqueueTimeMillis:J

    # invokes: Lcom/amazon/insights/delivery/DefaultDeliveryClient;->calculateAndSetAverageWriteEventTime(JJ)V
    invoke-static {v1, v2, v3, v4, v5}, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->access$300(Lcom/amazon/insights/delivery/DefaultDeliveryClient;JJ)V

    throw v0
.end method
