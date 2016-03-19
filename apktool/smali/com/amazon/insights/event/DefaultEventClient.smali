.class public Lcom/amazon/insights/event/DefaultEventClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/insights/core/util/JSONSerializable;
.implements Lcom/amazon/insights/event/InternalEventClient;


# static fields
.field private static final ANALYTICS_ENABLED:Ljava/lang/String; = "isAnalyticsEnabled"

.field private static final EVENT_SCHEMA_VERSION:Ljava/lang/String; = "v1.2"

.field private static final MAX_EVENT_TYPE_LENGTH:I = 0x32

.field private static logger:Lcom/amazon/insights/core/log/Logger;


# instance fields
.field private allowEventCollection:Z

.field private final context:Lcom/amazon/insights/core/InsightsContext;

.field private final deliveryClient:Lcom/amazon/insights/delivery/DeliveryClient;

.field private final eventTypeAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final eventTypeMetrics:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ">;>;"
        }
    .end annotation
.end field

.field private final globalAttributes:Ljava/util/Map;
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

.field private final globalMetrics:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazon/insights/event/EventObserver;",
            ">;"
        }
    .end annotation
.end field

.field private reservedAttributes:Ljava/util/Map;
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
    const-class v0, Lcom/amazon/insights/event/DefaultEventClient;

    invoke-static {v0}, Lcom/amazon/insights/core/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/amazon/insights/core/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/amazon/insights/event/DefaultEventClient;->logger:Lcom/amazon/insights/core/log/Logger;

    return-void
.end method

.method constructor <init>(Lcom/amazon/insights/core/InsightsContext;Z)V
    .locals 4

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/insights/event/DefaultEventClient;->globalAttributes:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/insights/event/DefaultEventClient;->globalMetrics:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/insights/event/DefaultEventClient;->eventTypeAttributes:Ljava/util/Map;

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/insights/event/DefaultEventClient;->eventTypeMetrics:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/insights/event/DefaultEventClient;->observers:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/insights/event/DefaultEventClient;->reservedAttributes:Ljava/util/Map;

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/insights/event/DefaultEventClient;->allowEventCollection:Z

    .line 55
    const-string v0, "A valid context must be provided"

    invoke-static {p1, v0}, Lcom/amazon/insights/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-interface {p1}, Lcom/amazon/insights/core/InsightsContext;->getDeliveryClient()Lcom/amazon/insights/delivery/DeliveryClient;

    move-result-object v0

    const-string v1, "A valid DeliveryClient must be provided"

    invoke-static {v0, v1}, Lcom/amazon/insights/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iput-boolean p2, p0, Lcom/amazon/insights/event/DefaultEventClient;->allowEventCollection:Z

    .line 60
    iput-object p1, p0, Lcom/amazon/insights/event/DefaultEventClient;->context:Lcom/amazon/insights/core/InsightsContext;

    .line 61
    iget-object v0, p0, Lcom/amazon/insights/event/DefaultEventClient;->reservedAttributes:Ljava/util/Map;

    invoke-interface {p1}, Lcom/amazon/insights/core/InsightsContext;->getConfiguration()Lcom/amazon/insights/core/configuration/Configuration;

    move-result-object v1

    const-string v2, "versionKey"

    const-string v3, "ver"

    invoke-interface {v1, v2, v3}, Lcom/amazon/insights/core/configuration/Configuration;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "v1.2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-interface {p1}, Lcom/amazon/insights/core/InsightsContext;->getDeliveryClient()Lcom/amazon/insights/delivery/DeliveryClient;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/insights/event/DefaultEventClient;->deliveryClient:Lcom/amazon/insights/delivery/DeliveryClient;

    .line 66
    iget-object v0, p0, Lcom/amazon/insights/event/DefaultEventClient;->deliveryClient:Lcom/amazon/insights/delivery/DeliveryClient;

    invoke-virtual {p0, v0}, Lcom/amazon/insights/event/DefaultEventClient;->addEventObserver(Lcom/amazon/insights/event/EventObserver;)V

    .line 67
    return-void
.end method

.method public static newInstance(Lcom/amazon/insights/core/InsightsContext;Z)Lcom/amazon/insights/event/DefaultEventClient;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/amazon/insights/event/DefaultEventClient;

    invoke-direct {v0, p0, p1}, Lcom/amazon/insights/event/DefaultEventClient;-><init>(Lcom/amazon/insights/core/InsightsContext;Z)V

    .line 51
    return-object v0
.end method


# virtual methods
.method public addEventObserver(Lcom/amazon/insights/event/EventObserver;)V
    .locals 2

    .prologue
    .line 252
    sget-object v0, Lcom/amazon/insights/event/DefaultEventClient;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v1, "Adding EventObserver"

    invoke-virtual {v0, v1}, Lcom/amazon/insights/core/log/Logger;->v(Ljava/lang/String;)V

    .line 253
    if-nez p1, :cond_1

    .line 254
    sget-object v0, Lcom/amazon/insights/event/DefaultEventClient;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v1, "Null EventObserver provided to addObserver"

    invoke-virtual {v0, v1}, Lcom/amazon/insights/core/log/Logger;->v(Ljava/lang/String;)V

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    sget-object v0, Lcom/amazon/insights/event/DefaultEventClient;->logger:Lcom/amazon/insights/core/log/Logger;

    sget-object v1, Lcom/amazon/insights/core/log/Logger$LogLevel;->VERBOSE:Lcom/amazon/insights/core/log/Logger$LogLevel;

    invoke-virtual {v0, v1}, Lcom/amazon/insights/core/log/Logger;->isLoggingEnabled(Lcom/amazon/insights/core/log/Logger$LogLevel;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 258
    sget-object v0, Lcom/amazon/insights/event/DefaultEventClient;->logger:Lcom/amazon/insights/core/log/Logger;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/insights/core/log/Logger;->v(Ljava/lang/String;)V

    .line 262
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/insights/event/DefaultEventClient;->getEventObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 263
    invoke-virtual {p0}, Lcom/amazon/insights/event/DefaultEventClient;->getEventObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 265
    :cond_3
    sget-object v0, Lcom/amazon/insights/event/DefaultEventClient;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v1, "Observer was already registered with this EventRecorder"

    invoke-virtual {v0, v1}, Lcom/amazon/insights/core/log/Logger;->v(Ljava/lang/String;)V

    .line 266
    sget-object v0, Lcom/amazon/insights/event/DefaultEventClient;->logger:Lcom/amazon/insights/core/log/Logger;

    sget-object v1, Lcom/amazon/insights/core/log/Logger$LogLevel;->VERBOSE:Lcom/amazon/insights/core/log/Logger$LogLevel;

    invoke-virtual {v0, v1}, Lcom/amazon/insights/core/log/Logger;->isLoggingEnabled(Lcom/amazon/insights/core/log/Logger$LogLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    sget-object v0, Lcom/amazon/insights/event/DefaultEventClient;->logger:Lcom/amazon/insights/core/log/Logger;

    invoke-virtual {p0}, Lcom/amazon/insights/event/DefaultEventClient;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/insights/core/log/Logger;->v(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addGlobalAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 170
    if-nez p1, :cond_0

    .line 171
    sget-object v0, Lcom/amazon/insights/event/DefaultEventClient;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v1, "Null attribute name provided to addGlobalAttribute"

    invoke-virtual {v0, v1}, Lcom/amazon/insights/core/log/Logger;->v(Ljava/lang/String;)V

    .line 181
    :goto_0
    return-void

    .line 175
    :cond_0
    if-nez p2, :cond_1

    .line 176
    sget-object v0, Lcom/amazon/insights/event/DefaultEventClient;->logger:Lcom/amazon/insights/core/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null attribute value provided to addGlobalAttribute. attribute name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/insights/core/log/Logger;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/amazon/insights/event/DefaultEventClient;->globalAttributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addGlobalAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 185
    if-nez p1, :cond_0

    .line 186
    sget-object v0, Lcom/amazon/insights/event/DefaultEventClient;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v1, "Null eventType provided to addGlobalAttribute"

    invoke-virtual {v0, v1}, Lcom/amazon/insights/core/log/Logger;->v(Ljava/lang/String;)V

    .line 207
    :goto_0
    return-void

    .line 190
    :cond_0
    if-nez p2, :cond_1

    .line 191
    sget-object v0, Lcom/amazon/insights/event/DefaultEventClient;->logger:Lcom/amazon/insights/core/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null attribute name provided to addGlobalAttribute. eventType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/insights/core/log/Logger;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :cond_1
    if-nez p3, :cond_2

    .line 196
    sget-object v0, Lcom/amazon/insights/event/DefaultEventClient;->logger:Lcom/amazon/insights/core/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null value provided to addGlobalAttribute. eventType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", attributeName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/insights/core/log/Logger;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/amazon/insights/event/DefaultEventClient;->eventTypeAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 202
    if-nez v0, :cond_3

    .line 203
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 204
    iget-object v1, p0, Lcom/amazon/insights/event/DefaultEventClient;->eventTypeAttributes:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_3
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addGlobalMetric(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 3

    .prologue
    .line 211
    if-nez p1, :cond_0

    .line 212
    sget-object v0, Lcom/amazon/insights/event/DefaultEventClient;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v1, "Null metric name provided to addGlobalMetric"

    invoke-virtual {v0, v1}, Lcom/amazon/insights/core/log/Logger;->v(Ljava/lang/String;)V

    .line 223
    :goto_0
    return-void

    .line 216
    :cond_0
    if-nez p2, :cond_1

    .line 217
    sget-object v0, Lcom/amazon/insights/event/DefaultEventClient;->logger:Lcom/amazon/insights/core/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null metric value provided to addGlobalMetric.  metric name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/insights/core/log/Logger;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/amazon/insights/event/DefaultEventClient;->globalMetrics:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addGlobalMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V
    .locals 3

    .prologue
    .line 227
    if-nez p1, :cond_0

    .line 228
    sget-object v0, Lcom/amazon/insights/event/DefaultEventClient;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v1, "Null eventType provided to addGlobalMetric"

    invoke-virtual {v0, v1}, Lcom/amazon/insights/core/log/Logger;->v(Ljava/lang/String;)V

    .line 248
    :goto_0
    return-void

    .line 232
    :cond_0
    if-nez p2, :cond_1

    .line 233
    sget-object v0, Lcom/amazon/insights/event/DefaultEventClient;->logger:Lcom/amazon/insights/core/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null metric name provided to addGlobalMetric. eventType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/insights/core/log/Logger;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :cond_1
    if-nez p3, :cond_2

    .line 238
    sget-object v0, Lcom/amazon/insights/event/DefaultEventClient;->logger:Lcom/amazon/insights/core/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null metric value provided to addGlobalMetric. eventType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", metric name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/insights/core/log/Logger;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 242
    :cond_2
    iget-object v0, p0, Lcom/amazon/insights/event/DefaultEventClient;->eventTypeMetrics:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 243
    if-nez v0, :cond_3

    .line 244
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 245
    iget-object v1, p0, Lcom/amazon/insights/event/DefaultEventClient;->eventTypeMetrics:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :cond_3
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public createEvent(Ljava/lang/String;)Lcom/amazon/insights/Event;
    .locals 3

    .prologue
    .line 142
    if-nez p1, :cond_0

    .line 143
    sget-object v0, Lcom/amazon/insights/event/DefaultEventClient;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v1, "Null eventType provided to addGlobalAttribute"

    invoke-virtual {v0, v1}, Lcom/amazon/insights/core/log/Logger;->v(Ljava/lang/String;)V

    .line 144
    sget-object v0, Lcom/amazon/insights/event/DefaultEventClient;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v1, "Null eventType provided to createEvent"

    invoke-virtual {v0, v1}, Lcom/amazon/insights/core/log/Logger;->devi(Ljava/lang/String;)V

    .line 145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The eventType passed into create event was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    const/16 v0, 0x32

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/amazon/insights/core/util/StringUtil;->clipString(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 149
    sget-object v1, Lcom/amazon/insights/event/DefaultEventClient;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v2, "The event type has been trimmed to a length of 50 characters"

    invoke-virtual {v1, v2}, Lcom/amazon/insights/core/log/Logger;->devw(Ljava/lang/String;)V

    .line 152
    :cond_1
    invoke-virtual {p0, v0}, Lcom/amazon/insights/event/DefaultEventClient;->createInternalEvent(Ljava/lang/String;)Lcom/amazon/insights/event/InternalEvent;

    move-result-object v0

    .line 153
    invoke-static {v0}, Lcom/amazon/insights/event/EventConstraintDecorator;->newInstance(Lcom/amazon/insights/Event;)Lcom/amazon/insights/event/EventConstraintDecorator;

    move-result-object v0

    .line 154
    return-object v0
.end method

.method public createInternalEvent(Ljava/lang/String;)Lcom/amazon/insights/event/InternalEvent;
    .locals 4

    .prologue
    .line 159
    iget-object v0, p0, Lcom/amazon/insights/event/DefaultEventClient;->context:Lcom/amazon/insights/core/InsightsContext;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/amazon/insights/event/DefaultEvent;->newInstance(Lcom/amazon/insights/core/InsightsContext;Ljava/lang/Long;Ljava/lang/String;)Lcom/amazon/insights/event/DefaultEvent;

    move-result-object v0

    return-object v0
.end method

.method public getAllowEventCollection()Z
    .locals 1

    .prologue
    .line 471
    iget-boolean v0, p0, Lcom/amazon/insights/event/DefaultEventClient;->allowEventCollection:Z

    return v0
.end method

.method protected getEventObservers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/insights/event/EventObserver;",
            ">;"
        }
    .end annotation

    .prologue
    .line 295
    iget-object v0, p0, Lcom/amazon/insights/event/DefaultEventClient;->observers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/insights/event/DefaultEventClient;->observers:Ljava/util/List;

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/amazon/insights/event/DefaultEventClient;->observers:Ljava/util/List;

    return-object v0
.end method

.method getReservedAttributeKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/amazon/insights/event/DefaultEventClient;->reservedAttributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected notifyObservers(Lcom/amazon/insights/event/InternalEvent;)V
    .locals 2

    .prologue
    .line 302
    sget-object v0, Lcom/amazon/insights/event/DefaultEventClient;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v1, "Notifying EventObservers"

    invoke-virtual {v0, v1}, Lcom/amazon/insights/core/log/Logger;->v(Ljava/lang/String;)V

    .line 303
    sget-object v0, Lcom/amazon/insights/event/DefaultEventClient;->logger:Lcom/amazon/insights/core/log/Logger;

    sget-object v1, Lcom/amazon/insights/core/log/Logger$LogLevel;->VERBOSE:Lcom/amazon/insights/core/log/Logger$LogLevel;

    invoke-virtual {v0, v1}, Lcom/amazon/insights/core/log/Logger;->isLoggingEnabled(Lcom/amazon/insights/core/log/Logger$LogLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    sget-object v0, Lcom/amazon/insights/event/DefaultEventClient;->logger:Lcom/amazon/insights/core/log/Logger;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/insights/core/log/Logger;->v(Ljava/lang/String;)V

    .line 306
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/insights/event/DefaultEventClient;->getEventObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/insights/event/EventObserver;

    .line 307
    invoke-interface {v0, p1}, Lcom/amazon/insights/event/EventObserver;->notify(Lcom/amazon/insights/event/InternalEvent;)V

    goto :goto_0

    .line 309
    :cond_1
    return-void
.end method

.method public recordEvent(Lcom/amazon/insights/Event;)V
    .locals 1

    .prologue
    .line 467
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/amazon/insights/event/DefaultEventClient;->recordEvent(Lcom/amazon/insights/Event;Z)V

    .line 468
    return-void
.end method

.method public recordEvent(Lcom/amazon/insights/Event;Z)V
    .locals 6

    .prologue
    .line 75
    if-nez p1, :cond_1

    .line 76
    sget-object v0, Lcom/amazon/insights/event/DefaultEventClient;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v1, "The provided event was null"

    invoke-virtual {v0, v1}, Lcom/amazon/insights/core/log/Logger;->i(Ljava/lang/String;)V

    .line 77
    sget-object v0, Lcom/amazon/insights/event/DefaultEventClient;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v1, "The provided event was null"

    invoke-virtual {v0, v1}, Lcom/amazon/insights/core/log/Logger;->devi(Ljava/lang/String;)V

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/amazon/insights/event/DefaultEventClient;->context:Lcom/amazon/insights/core/InsightsContext;

    invoke-interface {v0}, Lcom/amazon/insights/core/InsightsContext;->getConfiguration()Lcom/amazon/insights/core/configuration/Configuration;

    move-result-object v0

    const-string v1, "isAnalyticsEnabled"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/insights/core/configuration/Configuration;->optBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/insights/event/DefaultEventClient;->getAllowEventCollection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/amazon/insights/event/DefaultEventClient;->context:Lcom/amazon/insights/core/InsightsContext;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/amazon/insights/event/DefaultEvent;->createFromEvent(Lcom/amazon/insights/core/InsightsContext;Ljava/lang/Long;Lcom/amazon/insights/Event;)Lcom/amazon/insights/event/DefaultEvent;

    move-result-object v3

    .line 91
    monitor-enter p0

    .line 92
    if-eqz p2, :cond_9

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/amazon/insights/event/DefaultEventClient;->eventTypeAttributes:Ljava/util/Map;

    invoke-interface {v3}, Lcom/amazon/insights/event/InternalEvent;->getEventType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 94
    iget-object v0, p0, Lcom/amazon/insights/event/DefaultEventClient;->eventTypeAttributes:Ljava/util/Map;

    invoke-interface {v3}, Lcom/amazon/insights/event/InternalEvent;->getEventType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 95
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, v1}, Lcom/amazon/insights/event/InternalEvent;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 97
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v1, v0}, Lcom/amazon/insights/event/InternalEvent;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 102
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/amazon/insights/event/DefaultEventClient;->globalAttributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 103
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, v1}, Lcom/amazon/insights/event/InternalEvent;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 105
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v1, v0}, Lcom/amazon/insights/event/InternalEvent;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 109
    :cond_5
    iget-object v0, p0, Lcom/amazon/insights/event/DefaultEventClient;->eventTypeMetrics:Ljava/util/Map;

    invoke-interface {v3}, Lcom/amazon/insights/event/InternalEvent;->getEventType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 110
    iget-object v0, p0, Lcom/amazon/insights/event/DefaultEventClient;->eventTypeMetrics:Ljava/util/Map;

    invoke-interface {v3}, Lcom/amazon/insights/event/InternalEvent;->getEventType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 111
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, v1}, Lcom/amazon/insights/event/InternalEvent;->hasMetric(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 113
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-interface {v3, v1, v0}, Lcom/amazon/insights/event/InternalEvent;->addMetric(Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_3

    .line 118
    :cond_7
    iget-object v0, p0, Lcom/amazon/insights/event/DefaultEventClient;->globalMetrics:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 119
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, v1}, Lcom/amazon/insights/event/InternalEvent;->hasMetric(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 121
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-interface {v3, v1, v0}, Lcom/amazon/insights/event/InternalEvent;->addMetric(Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_4

    .line 126
    :cond_9
    iget-object v0, p0, Lcom/amazon/insights/event/DefaultEventClient;->reservedAttributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 127
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, v1}, Lcom/amazon/insights/event/InternalEvent;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 128
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, v1}, Lcom/amazon/insights/event/InternalEvent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 129
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v1, v2}, Lcom/amazon/insights/event/InternalEvent;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ud_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v5}, Lcom/amazon/insights/event/InternalEvent;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 132
    :cond_a
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v1, v0}, Lcom/amazon/insights/event/InternalEvent;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 135
    :cond_b
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    invoke-virtual {p0, v3}, Lcom/amazon/insights/event/DefaultEventClient;->notifyObservers(Lcom/amazon/insights/event/InternalEvent;)V

    goto/16 :goto_0
.end method

.method public removeEventObserver(Lcom/amazon/insights/event/EventObserver;)V
    .locals 2

    .prologue
    .line 274
    sget-object v0, Lcom/amazon/insights/event/DefaultEventClient;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v1, "Removing EventObserver"

    invoke-virtual {v0, v1}, Lcom/amazon/insights/core/log/Logger;->v(Ljava/lang/String;)V

    .line 275
    if-nez p1, :cond_1

    .line 276
    sget-object v0, Lcom/amazon/insights/event/DefaultEventClient;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v1, "Null EventObserver provided to removeObserver"

    invoke-virtual {v0, v1}, Lcom/amazon/insights/core/log/Logger;->v(Ljava/lang/String;)V

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    sget-object v0, Lcom/amazon/insights/event/DefaultEventClient;->logger:Lcom/amazon/insights/core/log/Logger;

    sget-object v1, Lcom/amazon/insights/core/log/Logger$LogLevel;->VERBOSE:Lcom/amazon/insights/core/log/Logger$LogLevel;

    invoke-virtual {v0, v1}, Lcom/amazon/insights/core/log/Logger;->isLoggingEnabled(Lcom/amazon/insights/core/log/Logger$LogLevel;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 280
    sget-object v0, Lcom/amazon/insights/event/DefaultEventClient;->logger:Lcom/amazon/insights/core/log/Logger;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/insights/core/log/Logger;->v(Ljava/lang/String;)V

    .line 284
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/insights/event/DefaultEventClient;->getEventObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 285
    invoke-virtual {p0}, Lcom/amazon/insights/event/DefaultEventClient;->getEventObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 287
    :cond_3
    sget-object v0, Lcom/amazon/insights/event/DefaultEventClient;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v1, "Observer was not registered with this EventRecorder"

    invoke-virtual {v0, v1}, Lcom/amazon/insights/core/log/Logger;->v(Ljava/lang/String;)V

    .line 288
    sget-object v0, Lcom/amazon/insights/event/DefaultEventClient;->logger:Lcom/amazon/insights/core/log/Logger;

    sget-object v1, Lcom/amazon/insights/core/log/Logger$LogLevel;->VERBOSE:Lcom/amazon/insights/core/log/Logger$LogLevel;

    invoke-virtual {v0, v1}, Lcom/amazon/insights/core/log/Logger;->isLoggingEnabled(Lcom/amazon/insights/core/log/Logger$LogLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    sget-object v0, Lcom/amazon/insights/event/DefaultEventClient;->logger:Lcom/amazon/insights/core/log/Logger;

    invoke-virtual {p0}, Lcom/amazon/insights/event/DefaultEventClient;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/insights/core/log/Logger;->v(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeGlobalAttribute(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 313
    if-nez p1, :cond_0

    .line 314
    sget-object v0, Lcom/amazon/insights/event/DefaultEventClient;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v1, "Null attribute name provided to removeGlobalAttribute"

    invoke-virtual {v0, v1}, Lcom/amazon/insights/core/log/Logger;->v(Ljava/lang/String;)V

    .line 319
    :goto_0
    return-void

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/amazon/insights/event/DefaultEventClient;->globalAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public removeGlobalAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 323
    if-nez p1, :cond_1

    .line 324
    sget-object v0, Lcom/amazon/insights/event/DefaultEventClient;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v1, "Null eventType provided to removeGlobalAttribute"

    invoke-virtual {v0, v1}, Lcom/amazon/insights/core/log/Logger;->v(Ljava/lang/String;)V

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    if-nez p2, :cond_2

    .line 329
    sget-object v0, Lcom/amazon/insights/event/DefaultEventClient;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v1, "Null attribute name provided to removeGlobalAttribute"

    invoke-virtual {v0, v1}, Lcom/amazon/insights/core/log/Logger;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/amazon/insights/event/DefaultEventClient;->eventTypeAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 334
    if-eqz v0, :cond_0

    .line 335
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public removeGlobalMetric(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 341
    if-nez p1, :cond_0

    .line 342
    sget-object v0, Lcom/amazon/insights/event/DefaultEventClient;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v1, "Null metric name provided to removeGlobalMetric"

    invoke-virtual {v0, v1}, Lcom/amazon/insights/core/log/Logger;->v(Ljava/lang/String;)V

    .line 347
    :goto_0
    return-void

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/amazon/insights/event/DefaultEventClient;->globalMetrics:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public removeGlobalMetric(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 351
    if-nez p1, :cond_1

    .line 352
    sget-object v0, Lcom/amazon/insights/event/DefaultEventClient;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v1, "Null eventType provided to removeGlobalMetric"

    invoke-virtual {v0, v1}, Lcom/amazon/insights/core/log/Logger;->v(Ljava/lang/String;)V

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    if-nez p2, :cond_2

    .line 357
    sget-object v0, Lcom/amazon/insights/event/DefaultEventClient;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v1, "Null metric name provided to removeGlobalMetric"

    invoke-virtual {v0, v1}, Lcom/amazon/insights/core/log/Logger;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 361
    :cond_2
    iget-object v0, p0, Lcom/amazon/insights/event/DefaultEventClient;->eventTypeMetrics:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 362
    if-eqz v0, :cond_0

    .line 363
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public submitEvents()V
    .locals 2

    .prologue
    .line 164
    sget-object v0, Lcom/amazon/insights/event/DefaultEventClient;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v1, "Notifying deliveryClient"

    invoke-virtual {v0, v1}, Lcom/amazon/insights/core/log/Logger;->v(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/amazon/insights/event/DefaultEventClient;->deliveryClient:Lcom/amazon/insights/delivery/DeliveryClient;

    invoke-interface {v0}, Lcom/amazon/insights/delivery/DeliveryClient;->attemptDelivery()V

    .line 166
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 12

    .prologue
    .line 379
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 380
    iget-object v0, p0, Lcom/amazon/insights/event/DefaultEventClient;->observers:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 381
    iget-object v0, p0, Lcom/amazon/insights/event/DefaultEventClient;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/insights/event/EventObserver;

    .line 382
    const-class v2, Lcom/amazon/insights/core/util/JSONSerializable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 383
    check-cast v0, Lcom/amazon/insights/core/util/JSONSerializable;

    invoke-interface {v0}, Lcom/amazon/insights/core/util/JSONSerializable;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 385
    :cond_0
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 390
    :cond_1
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 391
    iget-object v0, p0, Lcom/amazon/insights/event/DefaultEventClient;->globalAttributes:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 392
    iget-object v0, p0, Lcom/amazon/insights/event/DefaultEventClient;->globalAttributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 394
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 395
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 396
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 397
    :catch_0
    move-exception v0

    goto :goto_1

    .line 402
    :cond_2
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 403
    iget-object v0, p0, Lcom/amazon/insights/event/DefaultEventClient;->globalMetrics:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 404
    iget-object v0, p0, Lcom/amazon/insights/event/DefaultEventClient;->globalMetrics:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 406
    :try_start_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 407
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 408
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 409
    :catch_1
    move-exception v0

    goto :goto_2

    .line 414
    :cond_3
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 415
    iget-object v0, p0, Lcom/amazon/insights/event/DefaultEventClient;->eventTypeAttributes:Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 416
    iget-object v0, p0, Lcom/amazon/insights/event/DefaultEventClient;->eventTypeAttributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 417
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 418
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 420
    :try_start_2
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 421
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 422
    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 423
    :catch_2
    move-exception v1

    goto :goto_4

    .line 427
    :cond_4
    :try_start_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    .line 428
    :catch_3
    move-exception v0

    goto :goto_3

    .line 433
    :cond_5
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 434
    iget-object v0, p0, Lcom/amazon/insights/event/DefaultEventClient;->eventTypeMetrics:Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 435
    iget-object v0, p0, Lcom/amazon/insights/event/DefaultEventClient;->eventTypeMetrics:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 436
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 437
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 439
    :try_start_4
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 440
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v11, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 441
    invoke-virtual {v9, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_6

    .line 442
    :catch_4
    move-exception v1

    goto :goto_6

    .line 446
    :cond_6
    :try_start_5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    .line 447
    :catch_5
    move-exception v0

    goto :goto_5

    .line 452
    :cond_7
    iget-object v0, p0, Lcom/amazon/insights/event/DefaultEventClient;->context:Lcom/amazon/insights/core/InsightsContext;

    invoke-interface {v0}, Lcom/amazon/insights/core/InsightsContext;->getCredentials()Lcom/amazon/insights/InsightsCredentials;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/insights/InsightsCredentials;->getApplicationKey()Ljava/lang/String;

    move-result-object v0

    .line 454
    new-instance v1, Lcom/amazon/insights/core/util/JSONBuilder;

    invoke-direct {v1, p0}, Lcom/amazon/insights/core/util/JSONBuilder;-><init>(Ljava/lang/Object;)V

    const-string v2, "applicationKey"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/insights/core/util/JSONBuilder;->withAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/insights/core/util/JSONBuilder;

    move-result-object v0

    const-string v1, "uniqueId"

    iget-object v2, p0, Lcom/amazon/insights/event/DefaultEventClient;->context:Lcom/amazon/insights/core/InsightsContext;

    invoke-interface {v2}, Lcom/amazon/insights/core/InsightsContext;->getUniqueId()Lcom/amazon/insights/core/idresolver/Id;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/insights/core/util/JSONBuilder;->withAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/insights/core/util/JSONBuilder;

    move-result-object v0

    const-string v1, "observers"

    invoke-virtual {v0, v1, v3}, Lcom/amazon/insights/core/util/JSONBuilder;->withAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/insights/core/util/JSONBuilder;

    move-result-object v0

    const-string v1, "globalAttributes"

    invoke-virtual {v0, v1, v4}, Lcom/amazon/insights/core/util/JSONBuilder;->withAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/insights/core/util/JSONBuilder;

    move-result-object v0

    const-string v1, "globalMetrics"

    invoke-virtual {v0, v1, v5}, Lcom/amazon/insights/core/util/JSONBuilder;->withAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/insights/core/util/JSONBuilder;

    move-result-object v0

    const-string v1, "eventTypeAttributes"

    invoke-virtual {v0, v1, v6}, Lcom/amazon/insights/core/util/JSONBuilder;->withAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/insights/core/util/JSONBuilder;

    move-result-object v0

    const-string v1, "eventTypeMetrics"

    invoke-virtual {v0, v1, v7}, Lcom/amazon/insights/core/util/JSONBuilder;->withAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/insights/core/util/JSONBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/insights/core/util/JSONBuilder;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/amazon/insights/event/DefaultEventClient;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 371
    const/4 v1, 0x4

    :try_start_0
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 373
    :goto_0
    return-object v0

    .line 372
    :catch_0
    move-exception v1

    .line 373
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
