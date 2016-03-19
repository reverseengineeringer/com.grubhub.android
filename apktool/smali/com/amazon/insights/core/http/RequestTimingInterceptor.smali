.class public Lcom/amazon/insights/core/http/RequestTimingInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/insights/core/http/HttpClient$Interceptor;


# static fields
.field public static final REQUESTATTEMPTS_HEADER:Ljava/lang/String; = "x-amzn-RequestAttempts"

.field public static final REQUESTTIME_HEADER:Ljava/lang/String; = "x-amzn-RequestTime"

.field public static final SERVERINFO_HEADER:Ljava/lang/String; = "x-amzn-ServerInfo"

.field private static final TIMEZONE_FORMAT:Ljava/lang/String; = "Z"

.field private static final logger:Lcom/amazon/insights/core/log/Logger;


# instance fields
.field private final connectivity:Lcom/amazon/insights/core/system/Connectivity;

.field private df:Ljava/text/DateFormat;

.field private final eventClient:Lcom/amazon/insights/event/InternalEventClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/amazon/insights/core/http/RequestTimingInterceptor;

    invoke-static {v0}, Lcom/amazon/insights/core/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/amazon/insights/core/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/amazon/insights/core/http/RequestTimingInterceptor;->logger:Lcom/amazon/insights/core/log/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/insights/core/system/Connectivity;Lcom/amazon/insights/event/InternalEventClient;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "Z"

    invoke-static {v0}, Lcom/amazon/insights/core/util/DateUtil;->createLocaleIndependentDateFormatter(Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/insights/core/http/RequestTimingInterceptor;->df:Ljava/text/DateFormat;

    .line 32
    iput-object p2, p0, Lcom/amazon/insights/core/http/RequestTimingInterceptor;->eventClient:Lcom/amazon/insights/event/InternalEventClient;

    .line 33
    iput-object p1, p0, Lcom/amazon/insights/core/http/RequestTimingInterceptor;->connectivity:Lcom/amazon/insights/core/system/Connectivity;

    .line 34
    return-void
.end method

.method private declared-synchronized getTimeZone()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazon/insights/core/http/RequestTimingInterceptor;->df:Ljava/text/DateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private recordRequestTimeEvent(Lcom/amazon/insights/core/http/HttpClient$Response;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 51
    if-nez p1, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    :try_start_0
    invoke-interface {p1}, Lcom/amazon/insights/core/http/HttpClient$Response;->getOriginatingRequest()Lcom/amazon/insights/core/http/HttpClient$Request;

    move-result-object v1

    .line 56
    if-eqz v1, :cond_0

    .line 60
    invoke-interface {v1}, Lcom/amazon/insights/core/http/HttpClient$Request;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 61
    const-string v2, "x-amzn-RequestTime"

    invoke-interface {p1, v2}, Lcom/amazon/insights/core/http/HttpClient$Response;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 62
    const-wide/16 v2, 0x0

    .line 63
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lez v5, :cond_2

    .line 65
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v2

    .line 70
    :cond_2
    :goto_1
    :try_start_2
    const-string v5, "x-amzn-RequestAttempts"

    invoke-interface {p1, v5}, Lcom/amazon/insights/core/http/HttpClient$Response;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 72
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v6

    if-lez v6, :cond_3

    .line 74
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v0

    .line 79
    :cond_3
    :goto_2
    :try_start_4
    const-string v5, "x-amzn-ServerInfo"

    invoke-interface {p1, v5}, Lcom/amazon/insights/core/http/HttpClient$Response;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 80
    invoke-static {v4}, Lcom/amazon/insights/core/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 81
    iget-object v4, p0, Lcom/amazon/insights/core/http/RequestTimingInterceptor;->eventClient:Lcom/amazon/insights/event/InternalEventClient;

    if-eqz v4, :cond_0

    .line 85
    iget-object v4, p0, Lcom/amazon/insights/core/http/RequestTimingInterceptor;->eventClient:Lcom/amazon/insights/event/InternalEventClient;

    const-string v6, "_httpRequestTiming"

    invoke-interface {v4, v6}, Lcom/amazon/insights/event/InternalEventClient;->createEvent(Ljava/lang/String;)Lcom/amazon/insights/Event;

    move-result-object v4

    const-string v6, "url"

    invoke-interface {v4, v6, v1}, Lcom/amazon/insights/Event;->withAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/insights/Event;

    move-result-object v1

    const-string v4, "responseCode"

    invoke-interface {p1}, Lcom/amazon/insights/core/http/HttpClient$Response;->getCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v4, v6}, Lcom/amazon/insights/Event;->withAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/insights/Event;

    move-result-object v1

    const-string v4, "timeZone"

    invoke-direct {p0}, Lcom/amazon/insights/core/http/RequestTimingInterceptor;->getTimeZone()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v4, v6}, Lcom/amazon/insights/Event;->withAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/insights/Event;

    move-result-object v1

    const-string v4, "attempts"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Lcom/amazon/insights/Event;->withMetric(Ljava/lang/String;Ljava/lang/Number;)Lcom/amazon/insights/Event;

    move-result-object v0

    const-string v1, "totalTime"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/insights/Event;->withMetric(Ljava/lang/String;Ljava/lang/Number;)Lcom/amazon/insights/Event;

    move-result-object v0

    const-string v1, "requestSize"

    invoke-interface {p1}, Lcom/amazon/insights/core/http/HttpClient$Response;->getRequestSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/insights/Event;->withMetric(Ljava/lang/String;Ljava/lang/Number;)Lcom/amazon/insights/Event;

    move-result-object v0

    const-string v1, "responseSize"

    invoke-interface {p1}, Lcom/amazon/insights/core/http/HttpClient$Response;->getResponseSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/insights/Event;->withMetric(Ljava/lang/String;Ljava/lang/Number;)Lcom/amazon/insights/Event;

    move-result-object v1

    .line 94
    const-string v0, "UNKNOWN"

    .line 95
    iget-object v2, p0, Lcom/amazon/insights/core/http/RequestTimingInterceptor;->connectivity:Lcom/amazon/insights/core/system/Connectivity;

    if-eqz v2, :cond_4

    .line 96
    iget-object v2, p0, Lcom/amazon/insights/core/http/RequestTimingInterceptor;->connectivity:Lcom/amazon/insights/core/system/Connectivity;

    invoke-interface {v2}, Lcom/amazon/insights/core/system/Connectivity;->hasWired()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 97
    const-string v0, "OTHER"

    .line 105
    :cond_4
    :goto_3
    const-string v2, "network"

    invoke-interface {v1, v2, v0}, Lcom/amazon/insights/Event;->withAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/insights/Event;

    .line 107
    if-eqz v5, :cond_5

    .line 108
    const-string v0, "serverInfo"

    invoke-interface {v1, v0, v5}, Lcom/amazon/insights/Event;->withAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/insights/Event;

    .line 111
    :cond_5
    iget-object v0, p0, Lcom/amazon/insights/core/http/RequestTimingInterceptor;->eventClient:Lcom/amazon/insights/event/InternalEventClient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/amazon/insights/event/InternalEventClient;->recordEvent(Lcom/amazon/insights/Event;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    sget-object v1, Lcom/amazon/insights/core/http/RequestTimingInterceptor;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v2, "Unable to record _RequestTime event"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/insights/core/log/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 98
    :cond_6
    :try_start_5
    iget-object v2, p0, Lcom/amazon/insights/core/http/RequestTimingInterceptor;->connectivity:Lcom/amazon/insights/core/system/Connectivity;

    invoke-interface {v2}, Lcom/amazon/insights/core/system/Connectivity;->hasWifi()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 99
    const-string v0, "WIFI"

    goto :goto_3

    .line 100
    :cond_7
    iget-object v2, p0, Lcom/amazon/insights/core/http/RequestTimingInterceptor;->connectivity:Lcom/amazon/insights/core/system/Connectivity;

    invoke-interface {v2}, Lcom/amazon/insights/core/system/Connectivity;->hasWAN()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 101
    const-string v0, "WAN"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    .line 75
    :catch_1
    move-exception v5

    goto/16 :goto_2

    .line 66
    :catch_2
    move-exception v5

    goto/16 :goto_1
.end method


# virtual methods
.method public after(Lcom/amazon/insights/core/http/HttpClient$Response;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/amazon/insights/core/http/RequestTimingInterceptor;->recordRequestTimeEvent(Lcom/amazon/insights/core/http/HttpClient$Response;)V

    .line 43
    return-void
.end method

.method public before(Lcom/amazon/insights/core/http/HttpClient$Request;)V
    .locals 0

    .prologue
    .line 38
    return-void
.end method
