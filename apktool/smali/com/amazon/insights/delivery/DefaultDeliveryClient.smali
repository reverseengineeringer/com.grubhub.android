.class public Lcom/amazon/insights/delivery/DefaultDeliveryClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/insights/delivery/DeliveryClient;


# static fields
.field private static final CLIPPED_EVENT_LENGTH:I = 0x5

.field static final DEFAULT_EVENT_RECORD_REQUEST_RETRIES:I = 0x2

.field static final DEFAULT_MAX_SUBMISSIONS_ALLOWED:I = 0x3

.field static final DEFAULT_MAX_SUBMISSION_SIZE:J = 0x19000L

.field public static final EVENTS_DIRECTORY:Ljava/lang/String; = "events"

.field static final KEY_EVENT_RECORDER_MAX_RETRIES:Ljava/lang/String; = "eventRecorderRequestRetries"

.field static final KEY_MAX_SUBMISSIONS_ALLOWED:Ljava/lang/String; = "maxSubmissionAllowed"

.field static final KEY_MAX_SUBMISSION_SIZE:Ljava/lang/String; = "maxSubmissionSize"

.field private static final MAX_EVENT_OPERATIONS:I = 0x3e8

.field private static final MAX_SUBMIT_OPERATIONS:I = 0x64

.field static final RETRY_REQUEST_CODES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lcom/amazon/insights/core/log/Logger;


# instance fields
.field private final avgWriteEventTimeMillis:Ljava/util/concurrent/atomic/AtomicLong;

.field private final context:Lcom/amazon/insights/core/InsightsContext;

.field private final eventAdapter:Lcom/amazon/insights/event/adapter/EventAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/insights/event/adapter/EventAdapter",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private final eventStore:Lcom/amazon/insights/delivery/EventStore;

.field private final eventsProcessed:Ljava/util/concurrent/atomic/AtomicLong;

.field private final eventsRunnableQueue:Ljava/util/concurrent/ExecutorService;

.field private final policyFactory:Lcom/amazon/insights/delivery/policy/DeliveryPolicyFactory;

.field private final requestBuilder:Lcom/amazon/insights/delivery/ERSRequestBuilder;

.field private final submissionRunnableQueue:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const-class v0, Lcom/amazon/insights/delivery/DefaultDeliveryClient;

    invoke-static {v0}, Lcom/amazon/insights/core/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/amazon/insights/core/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->logger:Lcom/amazon/insights/core/log/Logger;

    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->RETRY_REQUEST_CODES:Ljava/util/Set;

    .line 64
    sget-object v0, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->RETRY_REQUEST_CODES:Ljava/util/Set;

    const/16 v1, 0x191

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->RETRY_REQUEST_CODES:Ljava/util/Set;

    const/16 v1, 0x194

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->RETRY_REQUEST_CODES:Ljava/util/Set;

    const/16 v1, 0x197

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->RETRY_REQUEST_CODES:Ljava/util/Set;

    const/16 v1, 0x198

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/amazon/insights/core/InsightsContext;Lcom/amazon/insights/delivery/policy/DeliveryPolicyFactory;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Lcom/amazon/insights/delivery/ERSRequestBuilder;Lcom/amazon/insights/delivery/EventStore;Lcom/amazon/insights/event/adapter/EventAdapter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/insights/core/InsightsContext;",
            "Lcom/amazon/insights/delivery/policy/DeliveryPolicyFactory;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/amazon/insights/delivery/ERSRequestBuilder;",
            "Lcom/amazon/insights/delivery/EventStore;",
            "Lcom/amazon/insights/event/adapter/EventAdapter",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x19

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->avgWriteEventTimeMillis:Ljava/util/concurrent/atomic/AtomicLong;

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->eventsProcessed:Ljava/util/concurrent/atomic/AtomicLong;

    .line 84
    iput-object p2, p0, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->policyFactory:Lcom/amazon/insights/delivery/policy/DeliveryPolicyFactory;

    .line 85
    iput-object p3, p0, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->eventsRunnableQueue:Ljava/util/concurrent/ExecutorService;

    .line 86
    iput-object p4, p0, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->submissionRunnableQueue:Ljava/util/concurrent/ExecutorService;

    .line 87
    iput-object p1, p0, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->context:Lcom/amazon/insights/core/InsightsContext;

    .line 88
    iput-object p5, p0, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->requestBuilder:Lcom/amazon/insights/delivery/ERSRequestBuilder;

    .line 89
    iput-object p6, p0, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->eventStore:Lcom/amazon/insights/delivery/EventStore;

    .line 90
    iput-object p7, p0, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->eventAdapter:Lcom/amazon/insights/event/adapter/EventAdapter;

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/insights/delivery/DefaultDeliveryClient;)Lcom/amazon/insights/event/adapter/EventAdapter;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->eventAdapter:Lcom/amazon/insights/event/adapter/EventAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/insights/delivery/DefaultDeliveryClient;)Lcom/amazon/insights/delivery/EventStore;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->eventStore:Lcom/amazon/insights/delivery/EventStore;

    return-object v0
.end method

.method static synthetic access$200()Lcom/amazon/insights/core/log/Logger;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->logger:Lcom/amazon/insights/core/log/Logger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/amazon/insights/delivery/DefaultDeliveryClient;JJ)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->calculateAndSetAverageWriteEventTime(JJ)V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/insights/delivery/DefaultDeliveryClient;)J
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->getSubmissionLatchWaitTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500(Lcom/amazon/insights/delivery/DefaultDeliveryClient;)Lcom/amazon/insights/core/InsightsContext;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->context:Lcom/amazon/insights/core/InsightsContext;

    return-object v0
.end method

.method static synthetic access$600(Lcom/amazon/insights/delivery/DefaultDeliveryClient;Lorg/json/JSONArray;Ljava/util/List;)Z
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->submitEvents(Lorg/json/JSONArray;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method private calculateAndSetAverageWriteEventTime(JJ)V
    .locals 5

    .prologue
    .line 125
    iget-object v0, p0, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->eventsProcessed:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v0

    .line 126
    sub-long/2addr v0, p1

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p3

    .line 128
    long-to-double v2, v2

    long-to-double v0, v0

    div-double v0, v2, v0

    .line 129
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-long v0, v0

    .line 130
    iget-object v2, p0, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->avgWriteEventTimeMillis:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 131
    return-void
.end method

.method private getBatchedItems()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 263
    iget-object v1, p0, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->eventStore:Lcom/amazon/insights/delivery/EventStore;

    invoke-interface {v1}, Lcom/amazon/insights/delivery/EventStore;->iterator()Lcom/amazon/insights/delivery/EventStore$EventIterator;

    move-result-object v1

    .line 264
    :goto_0
    invoke-interface {v1}, Lcom/amazon/insights/delivery/EventStore$EventIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 265
    invoke-interface {v1}, Lcom/amazon/insights/delivery/EventStore$EventIterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 267
    :cond_0
    return-object v0
.end method

.method private getSubmissionLatchWaitTime()J
    .locals 4

    .prologue
    .line 135
    iget-object v0, p0, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->avgWriteEventTimeMillis:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public static newInstance(Lcom/amazon/insights/core/InsightsContext;Z)Lcom/amazon/insights/delivery/DefaultDeliveryClient;
    .locals 12

    .prologue
    .line 74
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v0, 0x3e8

    invoke-direct {v7, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 75
    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v0, 0x64

    invoke-direct {v9, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v10, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v10}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    invoke-direct/range {v3 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 76
    invoke-static {p0}, Lcom/amazon/insights/delivery/ERSRequestBuilder;->newBuilder(Lcom/amazon/insights/core/InsightsContext;)Lcom/amazon/insights/delivery/ERSRequestBuilder;

    move-result-object v9

    .line 77
    new-instance v6, Lcom/amazon/insights/delivery/policy/DefaultDeliveryPolicyFactory;

    invoke-direct {v6, p0, p1}, Lcom/amazon/insights/delivery/policy/DefaultDeliveryPolicyFactory;-><init>(Lcom/amazon/insights/core/InsightsContext;Z)V

    .line 80
    new-instance v4, Lcom/amazon/insights/delivery/DefaultDeliveryClient;

    invoke-static {p0}, Lcom/amazon/insights/delivery/FileEventStore;->newInstance(Lcom/amazon/insights/core/InsightsContext;)Lcom/amazon/insights/delivery/FileEventStore;

    move-result-object v10

    new-instance v11, Lcom/amazon/insights/event/adapter/JSONEventAdapter;

    invoke-direct {v11}, Lcom/amazon/insights/event/adapter/JSONEventAdapter;-><init>()V

    move-object v5, p0

    move-object v7, v1

    move-object v8, v3

    invoke-direct/range {v4 .. v11}, Lcom/amazon/insights/delivery/DefaultDeliveryClient;-><init>(Lcom/amazon/insights/core/InsightsContext;Lcom/amazon/insights/delivery/policy/DeliveryPolicyFactory;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Lcom/amazon/insights/delivery/ERSRequestBuilder;Lcom/amazon/insights/delivery/EventStore;Lcom/amazon/insights/event/adapter/EventAdapter;)V

    return-object v4
.end method

.method private submitEvents(Lorg/json/JSONArray;Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/insights/delivery/policy/DeliveryPolicy;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 222
    .line 224
    iget-object v2, p0, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->requestBuilder:Lcom/amazon/insights/delivery/ERSRequestBuilder;

    invoke-virtual {v2, p1}, Lcom/amazon/insights/delivery/ERSRequestBuilder;->createHttpRequest(Lorg/json/JSONArray;)Lcom/amazon/insights/core/http/HttpClient$Request;

    move-result-object v2

    .line 225
    if-nez v2, :cond_1

    .line 226
    sget-object v0, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v2, "There was an error when building the http request"

    invoke-virtual {v0, v2}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;)V

    .line 256
    :cond_0
    :goto_0
    return v1

    .line 230
    :cond_1
    iget-object v3, p0, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->context:Lcom/amazon/insights/core/InsightsContext;

    invoke-interface {v3}, Lcom/amazon/insights/core/InsightsContext;->getConfiguration()Lcom/amazon/insights/core/configuration/Configuration;

    move-result-object v3

    const-string v4, "eventRecorderRequestRetries"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/amazon/insights/core/configuration/Configuration;->optInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 231
    iget-object v4, p0, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->context:Lcom/amazon/insights/core/InsightsContext;

    invoke-interface {v4}, Lcom/amazon/insights/core/InsightsContext;->getHttpClient()Lcom/amazon/insights/core/http/HttpClient;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Lcom/amazon/insights/core/http/HttpClient;->execute(Lcom/amazon/insights/core/http/HttpClient$Request;Ljava/lang/Integer;)Lcom/amazon/insights/core/http/HttpClient$Response;

    move-result-object v2

    .line 233
    if-nez v2, :cond_2

    .line 234
    sget-object v0, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v2, "The http request returned a null http response"

    invoke-virtual {v0, v2}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 238
    :cond_2
    invoke-interface {v2}, Lcom/amazon/insights/core/http/HttpClient$Response;->getCode()I

    move-result v3

    div-int/lit8 v3, v3, 0x64

    if-ne v3, v6, :cond_3

    .line 239
    sget-object v3, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v4, "Success from EventService: %d"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-interface {v2}, Lcom/amazon/insights/core/http/HttpClient$Response;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/amazon/insights/core/log/Logger;->i(Ljava/lang/String;)V

    .line 240
    sget-object v2, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v3, "Successful submission of %d events"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/amazon/insights/core/log/Logger;->devi(Ljava/lang/String;)V

    move v1, v0

    .line 252
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/insights/delivery/policy/DeliveryPolicy;

    .line 253
    invoke-interface {v0, v1}, Lcom/amazon/insights/delivery/policy/DeliveryPolicy;->handleDeliveryAttempt(Z)V

    goto :goto_2

    .line 242
    :cond_3
    invoke-interface {v2}, Lcom/amazon/insights/core/http/HttpClient$Response;->getCode()I

    move-result v3

    div-int/lit8 v3, v3, 0x64

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    sget-object v3, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->RETRY_REQUEST_CODES:Ljava/util/Set;

    invoke-interface {v2}, Lcom/amazon/insights/core/http/HttpClient$Response;->getCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 243
    sget-object v3, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v4, "Failed to submit events to EventService: %d"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-interface {v2}, Lcom/amazon/insights/core/http/HttpClient$Response;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/amazon/insights/core/log/Logger;->i(Ljava/lang/String;)V

    .line 244
    sget-object v2, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v3, "Failed submission of %d events"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/amazon/insights/core/log/Logger;->devi(Ljava/lang/String;)V

    move v1, v0

    .line 245
    goto :goto_1

    .line 247
    :cond_4
    sget-object v0, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->logger:Lcom/amazon/insights/core/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to successfully deliver events to server. Response code ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Lcom/amazon/insights/core/http/HttpClient$Response;->getCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/amazon/insights/core/http/HttpUtil;->getMessageForResponse(Lcom/amazon/insights/core/http/HttpClient$Response;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazon/insights/core/log/Logger;->devw(Ljava/lang/String;)V

    .line 248
    sget-object v0, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->logger:Lcom/amazon/insights/core/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Recieved a bad response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/insights/core/log/Logger;->w(Ljava/lang/String;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public attemptDelivery()V
    .locals 3

    .prologue
    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    iget-object v1, p0, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->policyFactory:Lcom/amazon/insights/delivery/policy/DeliveryPolicyFactory;

    invoke-interface {v1}, Lcom/amazon/insights/delivery/policy/DeliveryPolicyFactory;->newForceSubmissionTimePolicy()Lcom/amazon/insights/delivery/policy/DeliveryPolicy;

    move-result-object v1

    .line 142
    iget-object v2, p0, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->policyFactory:Lcom/amazon/insights/delivery/policy/DeliveryPolicyFactory;

    invoke-interface {v2}, Lcom/amazon/insights/delivery/policy/DeliveryPolicyFactory;->newConnectivityPolicy()Lcom/amazon/insights/delivery/policy/DeliveryPolicy;

    move-result-object v2

    .line 143
    if-eqz v2, :cond_0

    .line 144
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_0
    if-eqz v1, :cond_1

    .line 147
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_1
    invoke-virtual {p0, v0}, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->attemptDelivery(Ljava/util/List;)V

    .line 150
    return-void
.end method

.method public attemptDelivery(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/insights/delivery/policy/DeliveryPolicy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 154
    iget-object v1, p0, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->eventsRunnableQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/amazon/insights/delivery/DefaultDeliveryClient$2;

    invoke-direct {v2, p0, v0}, Lcom/amazon/insights/delivery/DefaultDeliveryClient$2;-><init>(Lcom/amazon/insights/delivery/DefaultDeliveryClient;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 161
    iget-object v1, p0, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->submissionRunnableQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/amazon/insights/delivery/DefaultDeliveryClient$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/amazon/insights/delivery/DefaultDeliveryClient$3;-><init>(Lcom/amazon/insights/delivery/DefaultDeliveryClient;Ljava/util/List;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 219
    return-void
.end method

.method public batchedEvents()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 272
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 273
    iget-object v1, p0, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->eventsRunnableQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/amazon/insights/delivery/DefaultDeliveryClient$4;

    invoke-direct {v2, p0, v0}, Lcom/amazon/insights/delivery/DefaultDeliveryClient$4;-><init>(Lcom/amazon/insights/delivery/DefaultDeliveryClient;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 280
    const-wide/16 v2, 0xa

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :goto_0
    invoke-direct {p0}, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->getBatchedItems()Ljava/util/List;

    move-result-object v0

    .line 286
    invoke-direct {p0}, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->getBatchedItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 281
    :catch_0
    move-exception v0

    .line 282
    sget-object v1, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v2, "timeout waiting for batchedEvents"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public enqueueEventForDelivery(Lcom/amazon/insights/event/InternalEvent;)V
    .locals 8

    .prologue
    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 101
    iget-object v0, p0, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->eventsProcessed:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    .line 102
    iget-object v0, p0, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->eventsRunnableQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/insights/delivery/DefaultDeliveryClient$1;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/amazon/insights/delivery/DefaultDeliveryClient$1;-><init>(Lcom/amazon/insights/delivery/DefaultDeliveryClient;Lcom/amazon/insights/event/InternalEvent;JJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 122
    return-void
.end method

.method public notify(Lcom/amazon/insights/event/InternalEvent;)V
    .locals 0

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/amazon/insights/delivery/DefaultDeliveryClient;->enqueueEventForDelivery(Lcom/amazon/insights/event/InternalEvent;)V

    .line 96
    return-void
.end method
